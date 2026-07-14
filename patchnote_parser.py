import re

from data import FULL, FULL_MARKER, REMIX, XROSS, title, duration, artist, bpm, channel
from data import SHORT, SHORT_MARKER, KPOP, ORIGINAL, WORLD, Phoenix
from data import premiumModeExclusive, steamLinkExclusive

SHORT_CUT_PATCHNOTE_MARK = ' - SHORT CUT -'
FULL_SONG_PATCHNOTE_MARK = ' - FULL SONG -'
STEP_CHARTS = 'stepcharts'
PREMIUM_MODE_EXCLUSIVE_MARK = re.compile(
    r'\s+\(\*?(?:Exclusive song for premium mode|Premium mode Only)\)\*?$',
    re.IGNORECASE,
)
STEAM_LINK_EXCLUSIVE_MARK = 'steam link exclusive track'

MIX_ID = 17
MIX_NAME = Phoenix
PATCH_VERSION = '2.12'


def convert_coop_format(text):
    # Regular expression pattern to find CO-OP(#) and capture the number
    pattern = r'CO-OP\([xX]?(\d+)\)'

    # Replacement function
    def replacement(match):
        num = match.group(1)
        return f'CoOp(x{num})'

    # Replace all occurrences in the text
    return re.sub(pattern, replacement, text)


def convert_string_to_key(input_string):
    # Replace spaces with underscores
    string_with_underscores = input_string.replace(' ', '_')

    # Remove non-Latin symbols and non-digits
    # This regex pattern keeps only Latin letters, digits, and underscores
    clean_string = re.sub(r'[^A-Za-z0-9_]', '', string_with_underscores)

    return clean_string


def parse_song_data(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        lines = file.readlines()

    songs = []
    song = {}

    for line in lines:
        if line.strip() == "":
            continue

        if STEAM_LINK_EXCLUSIVE_MARK in line.casefold():
            song[steamLinkExclusive] = True

        elif "Title" in line:
            song_title = line.split(":", 1)[1].strip()

            premium_mode_mark = PREMIUM_MODE_EXCLUSIVE_MARK.search(song_title)
            if premium_mode_mark:
                song_title = song_title[:premium_mode_mark.start()].rstrip()
                song[premiumModeExclusive] = True

            if song_title.endswith(SHORT_CUT_PATCHNOTE_MARK):
                song_title = song_title[0:len(song_title) - len(SHORT_CUT_PATCHNOTE_MARK)] + SHORT_MARKER
                song[duration] = SHORT

            elif song_title.endswith(FULL_SONG_PATCHNOTE_MARK):
                song_title = song_title[0:len(song_title) - len(FULL_SONG_PATCHNOTE_MARK)] + FULL_MARKER
                song[duration] = FULL

            song[title] = song_title

        elif "Artist" in line:
            song[artist] = line.split(":", 1)[1].strip()

        elif "BPM" in line:
            song[bpm] = line.split(":", 1)[1].strip()

        elif "Category" in line:
            song_category = line.split(":", 1)[1].strip()

            if song_category.upper() == 'K-POP':
                song[channel] = KPOP

            elif song_category.upper() == 'ORIGINAL':
                song[channel] = ORIGINAL

            elif song_category.upper() == 'WORLD MUSIC':
                song[channel] = WORLD

            elif song_category.upper() == 'XROSS':
                song[channel] = XROSS

            elif song_category.upper() == 'FULL SONG':
                song[channel] = ORIGINAL
                song[duration] = FULL

            elif song_category.upper() == 'SHORT CUT':
                song[channel] = ORIGINAL
                song[duration] = SHORT

            elif song_category.upper() == 'REMIX':
                song[channel] = ORIGINAL
                song[duration] = REMIX

            else:
                raise Exception("Unsupported song category: " + song_category)

        elif "Step charts" in line:
            line = convert_coop_format(line)
            song[STEP_CHARTS] = [x.strip() for x in line.split(":", 1)[1].split(',')]
            songs.append(song)
            song = {}

    return songs


song_data = parse_song_data('patchnote.txt')


for song in song_data:
    print(f'    "{song[title]}": "",')

print()
print('_' * 80)

for song in song_data:
    song_key = f'{MIX_ID}__{convert_string_to_key(song[title])}'
    exclusive_properties = '\n'.join(
        f'\t{key}: True,'
        for key in (premiumModeExclusive, steamLinkExclusive)
        if song.get(key)
    )

    print(f'''
"{song_key}":
{{
	title: "{song[title]}", artist: "{song[artist]}", channel: {song[channel]}, bpm: "{song[bpm]}", {f'duration: {song[duration]},' if duration in song else ''}

	#sortingID: "",  # between  () and  ()
	# arcadeID: "",
	pumpoutID: "",
	# arcadeName: "",

{exclusive_properties}

	{MIX_NAME}: "@{PATCH_VERSION} {' '.join(song[STEP_CHARTS])}",
}},
''', end='')

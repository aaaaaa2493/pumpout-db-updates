from data import data, Phoenix, XX, ARCADE, SHORT, FULL, REMIX, duration, title, pumpoutID, artist, arcadeName, bpm
from data import STEPMAKERS, KPOP, ORIGINAL, WORLD, JMUSIC, XROSS, channel, arcadeID, artists as artists_key
from data import KOREAN_TITLES, SHORT_MARKER, FULL_MARKER
from util.splitter import split_string
from util.get_bpm import bpm_min_max
from util.versions import trim_version, get_info_for_patch
from util.difficulty import get_difficulty
from util.printing import get_writable_print, escape as e
from builtins import print as p

mix_ids = {
    Phoenix: '17',
    XX: '16',
}

patches = {
    Phoenix: [
        'v1.00.1',
        'v1.01.0',
        'v1.02.0',
        'v1.03.0',
        'v1.04.0',
        'v1.05.0',
        'v1.06.0',
        'v1.07.0',
        'v1.08.0',
        'v2.00.0',
        'v2.01.0',
        'v2.02.0',
        'v2.03.0',
        'v2.04.0',
    ],
    XX: [
        'v1.00.1',
        ...,
        'v2.08.0',
    ]
}

mixes = [
    XX,
    Phoenix,
]


class Operations:
    INSERT = 'INSERT'
    DELETE = 'DELETE'
    UPDATE = 'UPDATE'
    EXISTS = 'EXISTS'
    REVIVE = 'REVIVE'
    CROSS = 'CROSS'


class Language:
    ENGLISH = 'English'
    KOREAN = 'Korean'


MIX = Phoenix
PATCHES = patches[MIX]
PATCH = patches[MIX][-1]

MIX_ID = mix_ids[MIX]
PREV_MIX = mixes[mixes.index(MIX)-1]
INITIAL_PATCH = PATCHES[0] == PATCH
IGNORED_MIXES = (2, 8)  # Infinity and Prime JE

DEBUG = False
NOSQL = False

if not NOSQL:
    print = get_writable_print(f'sql/{MIX} {PATCH}.sql')
else:
    print = lambda *x, **k: ...

cut = {
    ARCADE: 'Arcade',
    SHORT: 'Short Cut',
    REMIX: 'Remix',
    FULL: 'Full Song',
}

category = {
    KPOP: "K-POP",
    ORIGINAL: "ORIGINAL",
    WORLD: "WORLD MUSIC",
    JMUSIC: "J-MUSIC",
    XROSS: "XROSS",
}

new_songs = [
    i for i in data.values()
    if MIX in i and PREV_MIX not in i and get_info_for_patch(PATCH, i[MIX], INITIAL_PATCH)
       and all(len(get_info_for_patch(p, i[MIX], PATCHES[0] == p)) == 0 for p in PATCHES if PATCHES.index(p) < PATCHES.index(PATCH))
]

deleted_songs = [
    i for i in data.values()
    if (MIX not in i or MIX in i and not get_info_for_patch(PATCH, i[MIX], INITIAL_PATCH)) and PREV_MIX in i and INITIAL_PATCH
]

changed_charts = [
    i for i in data.values()
    if MIX in i and get_info_for_patch(PATCH, i[MIX], INITIAL_PATCH) and PREV_MIX in i and i[MIX] != '='
]

new_charts = [
    i for i in data.values()
    if (
        MIX in i and PREV_MIX in i and get_info_for_patch(PATCH, i[MIX], INITIAL_PATCH)
       )
       or
       (
        MIX in i and PREV_MIX not in i and get_info_for_patch(PATCH, i[MIX], INITIAL_PATCH)
            and any(len(get_info_for_patch(p, i[MIX], PATCHES[0] == p)) != 0 for p in PATCHES if PATCHES.index(p) < PATCHES.index(PATCH))
       )
]


def is_revived(i):
    if INITIAL_PATCH:
        return False

    if not (MIX in i and PREV_MIX in i):
        return False

    curr_patch = get_info_for_patch(PATCH, i[MIX], INITIAL_PATCH)
    prev_patches = [
        get_info_for_patch(p, i[MIX], PATCHES[0] == p)
        for p in PATCHES if PATCHES.index(p) < PATCHES.index(PATCH)
    ]

    return len(curr_patch) > 0 and all(len(j) == 0 for j in prev_patches)

revived_songs = [
    i for i in data.values()
    if is_revived(i)
]

if INITIAL_PATCH:
    new_charts = []

added_charts = []
deleted_charts = []
not_revived_charts = []
rerated_charts = []

for song in changed_charts:
    pumpout = song[pumpoutID]
    if arcadeName in song:
        curr_title = song[arcadeName]
    else:
        curr_title = song[title]

    charts = get_info_for_patch(PATCH, song[MIX], INITIAL_PATCH)

    for change in charts:
        if '`' in change:
            after, before = change.split('`')
            before = after[0] + before
            rerated_charts += [(pumpout, curr_title, before, after)]
            # print(song_title, before, '->', after)
        elif change[0] == '-':
            elem = [(pumpout, curr_title, change.upper()[1:])]
            if song not in revived_songs:
                deleted_charts += elem
            else:
                not_revived_charts += elem
            # print(song_title, change.upper())
        elif change[0] == '+':
            added_charts += [(pumpout, curr_title, change.upper()[1:])]
            # print(song_title, change.upper())


if INITIAL_PATCH:
    print(f"""
-- Add {MIX} mix

INSERT INTO mix (mixId, gameId, internalTitle, parentMixId, sortOrder)
SELECT
    (SELECT MAX(mixId) + 1 FROM mix),
    (SELECT gameId FROM game WHERE internalTitle = 'pump-it-up'),
    '{e(MIX)}',
    (SELECT mixId FROM mix WHERE internalTitle = '{e(PREV_MIX)}'),
    (SELECT MAX(sortOrder) + 10 FROM mix);
""", end='')
    print()
    print()


if INITIAL_PATCH:
    MIX_PREV_PATCH = PREV_MIX
    PREV_PATCH = patches[PREV_MIX][-1]
else:
    MIX_PREV_PATCH = MIX
    PREV_PATCH = patches[MIX][patches[MIX].index(PATCH) - 1]


print(f"""
-- Add {MIX} {PATCH} version

INSERT INTO version (versionId, mixId, internalTitle, parentVersionId, sortOrder)
SELECT
    (SELECT MAX(versionId) + 1 FROM version),
    (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}'),
    '{e(PATCH)}',
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX_PREV_PATCH)}')
     AND internalTitle = '{e(PREV_PATCH)}'),
    (SELECT MAX(sortOrder) + 10 FROM version);
""", end='')
print()
print()


print(f"""
-- Add ancestors for {MIX} {PATCH}

INSERT INTO _derived_versionAncestor (versionId, ancestorId, sortOrder, ancestorSortOrder)
SELECT
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}')
     AND internalTitle = '{e(PATCH)}'),
    d.ancestorId,
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}')
     AND internalTitle = '{e(PATCH)}'),
    d.ancestorSortOrder
FROM _derived_versionAncestor d
    JOIN version v on d.versionId = v.versionId
    JOIN mix m on v.mixId = m.mixId
    WHERE m.internalTitle = '{e(MIX_PREV_PATCH)}' AND v.internalTitle = '{e(PREV_PATCH)}';

INSERT INTO _derived_versionAncestor (versionId, ancestorId, sortOrder, ancestorSortOrder)
SELECT
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}')
     AND internalTitle = '{e(PATCH)}'),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}')
     AND internalTitle = '{e(PATCH)}'),
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}')
     AND internalTitle = '{e(PATCH)}'),
    (SELECT sortOrder FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}')
     AND internalTitle = '{e(PATCH)}');
""", end="")
print()
print()

artists = set()
stepmakers = set()

for song in new_songs:
    curr_title = song[title]

    if artists_key in song:
        song[artist] = song[artists_key]

    else:
        song[artist] = split_string(song[artist], True)

        if arcadeName in song:
            additional_artists = split_string(song[arcadeName])[1:]
            # print("ADDITIONAL ARTISTS ", additional_artists)
            song[artist] += additional_artists

    # print("ARTISTS ", song[artist])

    for a in song[artist]:
        artists.add(a[1])

    if curr_title in STEPMAKERS:
        curr_stepmakers = []
        if type(STEPMAKERS[curr_title]) == str:
            curr_stepmakers = [STEPMAKERS[curr_title]]
        else:
            curr_stepmakers = [i[0] for i in STEPMAKERS[curr_title]]

        for s in curr_stepmakers:
            stepmakers.add(s)


for song in new_charts:
    curr_title = song[title]

    if curr_title in STEPMAKERS:
        curr_stepmakers = []
        if type(STEPMAKERS[curr_title]) == str:
            curr_stepmakers = [STEPMAKERS[curr_title]]
        else:
            curr_stepmakers = [i[0] for i in STEPMAKERS[curr_title]]

        for s in curr_stepmakers:
            stepmakers.add(s)


if artists:
    print("""
-- Add new artists if they don't exist


""", end='')

    if NOSQL:
        p("Add new artists if they don't exist")

for index, curr_artist in enumerate(sorted(artists, key=str.lower)):

    if NOSQL:
        p(curr_artist)

    print(f"""
-- Add {curr_artist}
INSERT INTO artist (artistId, internalTitle)
SELECT 
    (SELECT MAX(artistId) + 1 FROM artist),
    '{e(curr_artist)}'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE LOWER(internalTitle) = LOWER('{e(curr_artist)}'));
""", end='')

    if DEBUG and index == 1:
        break

if stepmakers:
    print("""


-- Add new stepmakers if they don't exist


""", end='')

    if NOSQL:
        p("\nAdd new stepmakers if they don't exist")

for index, curr_stepmaker in enumerate(sorted(stepmakers, key=str.lower)):

    if NOSQL:
        p(curr_stepmaker)

    print(f"""
-- {curr_stepmaker}
INSERT INTO stepmaker (stepmakerId, internalTitle)
SELECT
    (SELECT MAX(stepmakerId) + 1 FROM stepmaker),
    '{e(curr_stepmaker)}'
WHERE NOT EXISTS (SELECT 1 FROM stepmaker WHERE LOWER(internalTitle) = LOWER('{e(curr_stepmaker)}'));
""", end='')

    if DEBUG and index == 1:
        break

if new_songs:
    print("""


-- Add new songs


""", end='')

    if NOSQL:
        p("\nAdd new songs")


mix_id_counter = 1

for song_index, song in enumerate(new_songs):
    if duration not in song:
        song[duration] = ARCADE
    song[duration] = cut[song[duration]]

    original_title = song[title]
    song_card_append = ''
    if song[title].endswith(SHORT_MARKER):
        song[title] = song[title].replace(SHORT_MARKER, "").strip()
        song_card_append = '_Short'

    if song[title].endswith(FULL_MARKER):
        song[title] = song[title].replace(FULL_MARKER, "").strip()
        song_card_append = '_Full'

    curr_title = song[title]
    curr_cut = song[duration]
    curr_category = category[song[channel]]

    if NOSQL:
        p(f"{curr_title}")

    print(f"""
-- Add {original_title}

INSERT INTO song (songId, cutId, internalTitle)
SELECT
    (SELECT MAX(songId) + 1 FROM song),
    (SELECT cutId FROM cut WHERE internalTitle = '{e(curr_cut)}'),
    '{e(curr_title)}';
""", end='')

    for artist_index, (prefix, curr_artist) in enumerate(song[artist]):
        print(f"""
INSERT INTO songArtist (songId, artistId, sortOrder, prefix)
SELECT
    (SELECT MAX(songId) FROM song),
    (SELECT artistId FROM artist WHERE LOWER(internalTitle) = LOWER('{e(curr_artist)}')),
    {artist_index},
    '{e(prefix)}';
""", end='')

        if DEBUG and artist_index == 1:
            break

    print(f"""
INSERT INTO songCategory (songCategoryId, songId, categoryId)
SELECT 
    (SELECT MAX(songCategoryId) + 1 FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT categoryId FROM category WHERE internalTitle = '{e(curr_category)}');
""", end='')

    print(f"""
INSERT INTO songCategoryVersion (songCategoryId, songId, versionId)
SELECT 
    (SELECT MAX(songCategoryId) FROM songCategory),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}') 
     AND internalTitle = '{e(PATCH)}');
""", end='')

    bpm_min, bpm_max = bpm_min_max(song[bpm])

    print(f"""
INSERT INTO songBpm (songBpmId, songId, bpmMin, bpmMax)
SELECT
    (SELECT MAX(songBpmId) + 1 FROM songBpm),
    (SELECT MAX(songId) FROM song),
    {bpm_min},
    {bpm_max};
""", end='')

    print(f"""
INSERT INTO songBpmVersion (songBpmId, songId, versionId)
SELECT
    (SELECT MAX(songBpmId) FROM songBpm),
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}')
     AND internalTitle = '{e(PATCH)}');
""", end='')

    if arcadeID in song and len(song[arcadeID]) > 0:
        curr_song_id = song[arcadeID]
    else:
        patch_index = patches[MIX].index(PATCH)
        curr_song_id = f'{MIX_ID}XX_{patch_index:>02}{mix_id_counter:>02}'
        mix_id_counter += 1

    print(f"""
INSERT INTO songGameIdentifier (songGameIdentifierId, songId, gameIdentifier)
SELECT
    (SELECT MAX(songGameIdentifierId) + 1 FROM songGameIdentifier),
    (SELECT MAX(songId) FROM song),
    '{e(curr_song_id)}';
""", end='')

    print(f"""
INSERT INTO songGameIdentifierVersion (songGameIdentifierId, versionId, operationId, internalDescription)
SELECT 
    (SELECT songGameIdentifierId FROM songGameIdentifier WHERE gameIdentifier = '{e(curr_song_id)}'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}') 
     AND internalTitle = '{e(PATCH)}'),
    (SELECT operationId FROM operation WHERE internalTitle = '{e(Operations.INSERT)}'),
    NULL;
""", end='')

    if arcadeName in song and len(song[arcadeName]) > 0:
        arcade_title = song[arcadeName]
    else:
        arcade_title = curr_title

    korean_title = KOREAN_TITLES[original_title]

    print(f"""
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = '{e(Language.ENGLISH)}'),
    '{e(arcade_title)}';
""", end='')

    print(f"""
INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = '{e(Language.ENGLISH)}'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}') 
     AND internalTitle = '{e(PATCH)}');
 """, end='')

    print(f"""
INSERT INTO songTitle (songTitleId, songId, languageId, title)
SELECT 
    (SELECT MAX(songTitleId) + 1 FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = '{e(Language.KOREAN)}'),
    '{e(korean_title)}';
""", end='')

    print(f"""
INSERT INTO songTitleVersion (songTitleId, songId, languageId, versionId)
SELECT 
    (SELECT MAX(songTitleId) FROM songTitle),
    (SELECT MAX(songId) FROM song),
    (SELECT languageId FROM language WHERE internalTitle = '{e(Language.KOREAN)}'),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}') 
     AND internalTitle = '{e(PATCH)}');
 """, end='')

    print(f"""
INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songId) FROM song),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}') 
     AND internalTitle = '{e(PATCH)}'),
    (SELECT operationId FROM operation WHERE internalTitle = '{e(Operations.INSERT)}'),
    NULL;
""", end='')

    song_card_name = [i for i in curr_title if i.isalnum() or i in ' -_']
    song_card_name = MIX + '_' + ''.join(song_card_name).replace(' ', '_').replace('-', '_')
    song_card_name = song_card_name + song_card_append

    print(f"""
INSERT INTO songCard (songCardId, songId, path, sortOrder)
SELECT 
    (SELECT MAX(songCardId) + 1 FROM songCard),
    (SELECT MAX(songId) FROM song),
    '/img/card/{song_card_name}.png',
    0;
""", end='')

    print(f"""
INSERT INTO songCardVersion (songCardId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(songCardId) FROM songCard),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}') 
     AND internalTitle = '{e(PATCH)}'),
    (SELECT operationId FROM operation WHERE internalTitle = '{e(Operations.INSERT)}'),
    NULL;
""", end='')

    print()
    print()

    charts = song[MIX]

    at_version = "@" + trim_version(PATCH)
    if charts.startswith(at_version):
        charts = charts[len(at_version):].strip()

    charts = charts.split('@')[0]
    charts = charts.split()

    for chart_index, curr_chart in enumerate(charts):
        chart_mode, chart_difficulty = get_difficulty(curr_chart)

        if NOSQL:
            p(f"{curr_title} {curr_chart}")

        print(f"""
-- Add {original_title} {curr_chart}

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (SELECT MAX(songId) FROM song);
""", end='')

        print(f"""
INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = '{e(chart_mode)}'),
    (SELECT difficultyId FROM difficulty WHERE value = {chart_difficulty});
""", end='')

        print(f"""
INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}') 
     AND internalTitle = '{e(PATCH)}');
""", end='')

        print(f"""
INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}') 
     AND internalTitle = '{e(PATCH)}'),
    (SELECT operationId FROM operation WHERE internalTitle = '{e(Operations.INSERT)}'),
    NULL;
""", end='')

        curr_stepmakers = STEPMAKERS[original_title]
        if type(curr_stepmakers) == str:
            found_stepmakers = [curr_stepmakers]
        else:
            found_stepmakers = [i[0] for i in curr_stepmakers if curr_chart in i[1]]
            if len(found_stepmakers) == 0:
                found_stepmakers = [i[0] for i in curr_stepmakers if i[1] == '*']

        if len(found_stepmakers) != 1:
            raise Exception()

        for index, stepmaker in enumerate(found_stepmakers):
            print(f"""
INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('{e(stepmaker)}')),
    {index},
    '';
""", end='')

        print()
        print()

        if DEBUG and chart_index == 1:
            break

    if DEBUG and song_index == 1:
        break



if new_charts:
    print("""
-- Add new charts for existing songs


""", end='')

    if NOSQL:
        p(f"\nAdd new charts for existing songs")


for song_index, song in enumerate(new_charts):
    if duration not in song:
        song[duration] = ARCADE
    song[duration] = cut[song[duration]]

    original_title = song[title]
    song_card_append = ''
    if song[title].endswith(SHORT_MARKER):
        song[title] = song[title].replace(SHORT_MARKER, "").strip()
        song_card_append = '_Short'

    if song[title].endswith(FULL_MARKER):
        song[title] = song[title].replace(FULL_MARKER, "").strip()
        song_card_append = '_Full'

    curr_title = song[title]
    curr_cut = song[duration]

    charts = get_info_for_patch(PATCH, song[MIX], INITIAL_PATCH)

    for chart_index, curr_chart in enumerate(charts):
        if '`' in curr_chart or '-' in curr_chart or '=' == curr_chart:
            continue

        chart_mode, chart_difficulty = get_difficulty(curr_chart)

        if NOSQL:
            p(f"{curr_title} {curr_chart}")

        print(f"""
-- Add {original_title} {curr_chart}

INSERT INTO chart (chartId, songId)
SELECT 
    (SELECT MAX(chartId) + 1 FROM chart),
    (
        SELECT songId FROM (
            SELECT
               s.songId,
               ROW_NUMBER() OVER (PARTITION BY s.songId ORDER BY v.sortOrder DESC) AS rn,
               COUNT(*) OVER () AS total_count
            FROM song s
            JOIN songVersion sV on s.songId = sV.songId
            JOIN version v on sV.versionId = v.versionId
            JOIN operation o on sV.operationId = o.operationId
            WHERE s.cutId = (SELECT cut.cutId FROM cut WHERE cut.internalTitle = '{e(curr_cut)}')
            AND LOWER(s.internalTitle) = LOWER('{e(original_title)}')
            AND v.sortOrder = (
                SELECT MAX(v2.sortOrder)
                FROM songVersion sV2
                JOIN version v2 ON sV2.versionId = v2.versionId
                WHERE sV2.songId = s.songId
            )
            AND o.internalTitle != '{e(Operations.DELETE)}'
        )
        WHERE rn = 1 AND total_count = 1
    );
""", end='')

        print(f"""
INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
    (SELECT MAX(chartRatingId) + 1 FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT modeId FROM mode WHERE internalAbbreviation = '{e(chart_mode)}'),
    (SELECT difficultyId FROM difficulty WHERE value = {chart_difficulty});
""", end='')

        print(f"""
INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT 
    (SELECT MAX(chartRatingId) FROM chartRating),
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}') 
     AND internalTitle = '{e(PATCH)}');
""", end='')

        print(f"""
INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
    (SELECT MAX(chartId) FROM chart),
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}') 
     AND internalTitle = '{e(PATCH)}'),
    (SELECT operationId FROM operation WHERE internalTitle = '{e(Operations.INSERT)}'),
    NULL;
""", end='')

        curr_stepmakers = STEPMAKERS[original_title]
        if type(curr_stepmakers) == str:
            found_stepmakers = [curr_stepmakers]
        else:
            found_stepmakers = [i[0] for i in curr_stepmakers if curr_chart in i[1]]
            if len(found_stepmakers) == 0:
                found_stepmakers = [i[0] for i in curr_stepmakers if i[1] == '*']

        if len(found_stepmakers) != 1:
            raise Exception()

        for index, stepmaker in enumerate(found_stepmakers):
            print(f"""
INSERT INTO chartStepmaker (chartId, stepmakerId, sortOrder, prefix)
SELECT
    (SELECT MAX(chartId) FROM chart),
    (SELECT stepmakerId FROM stepmaker WHERE LOWER(internalTitle) = LOWER('{e(stepmaker)}')),
    {index},
    '';
""", end='')

        print()
        print()

        if DEBUG and chart_index == 1:
            break

    if DEBUG and song_index == 1:
        break



if deleted_songs:
    print("""
-- Remove deleted songs


""", end='')

    if NOSQL:
        p(f"\nRemove deleted songs add charts that exist in {MIX_PREV_PATCH} {PREV_PATCH}")


for index, song in enumerate(deleted_songs):

    if arcadeName in song:
        curr_title = song[arcadeName]
    else:
        curr_title = song[title]

    pumpout_id = song[pumpoutID]

    if NOSQL:
        p(f"{curr_title}")

    print(f"""
-- Remove {curr_title}

INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    {pumpout_id},
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}') 
     AND internalTitle = '{e(PATCH)}'),
    (SELECT operationId FROM operation WHERE internalTitle = '{e(Operations.DELETE)}'),
    NULL;
""", end='')

    print(f"""
INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT
  sub.chartId,
  (SELECT versionId FROM version
   WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}')
   AND internalTitle = '{e(PATCH)}'),
  (SELECT operationId FROM operation WHERE internalTitle = '{e(Operations.DELETE)}'),
  NULL
FROM (
  SELECT
    crv.chartId,
    cv.operationId,
    ROW_NUMBER() OVER(PARTITION BY crv.chartId ORDER BY v.sortOrder DESC, v2.sortOrder DESC) as rn
  FROM chartRatingVersion crv
  JOIN chart c ON crv.chartId = c.chartId
  JOIN chartVersion cv ON cv.chartId = c.chartId
  JOIN chartRating cr on crv.chartRatingId = cr.chartRatingId
  JOIN version v ON cv.versionId = v.versionId
  JOIN version v2 ON crv.versionId = v2.versionId
  WHERE v.mixId NOT IN {IGNORED_MIXES}
  AND v2.mixId NOT IN {IGNORED_MIXES}
  AND c.songId = {pumpout_id}
  AND v.versionId != (SELECT versionId FROM version
   WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}')
   AND internalTitle = '{e(PATCH)}')
) AS sub
WHERE rn = 1 
AND operationId != (SELECT operationId FROM operation WHERE internalTitle = '{e(Operations.DELETE)}');
""", end='')

    print()
    print()

    if DEBUG and index == 1:
        break


if deleted_charts:
    print("""
-- Remove deleted charts which songs weren't deleted


""", end='')

    if NOSQL:
        p(f"\nRemove deleted charts which songs weren't deleted")


def difficulty_key(diff_key):
    diff_key = diff_key.upper()
    if 'COOP' in diff_key:
        return 500 + int(diff_key[-2])
    if 'DP' in diff_key:
        return 400 + int(diff_key[2:])
    if 'SP' in diff_key:
        return 300 + int(diff_key[2:])
    if 'D' in diff_key:
        return 200 + int(diff_key[1:])
    if 'S' in diff_key:
        return 100 + int(diff_key[1:])


for index, chart in enumerate(sorted(deleted_charts, key=lambda x: difficulty_key(x[-1]))):
    pumpout_id, curr_title, difficulty = chart
    mode, diff = get_difficulty(difficulty)

    if NOSQL:
        p(f"{curr_title} {difficulty}")

    print(f"""
--  Remove {curr_title} {difficulty}

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT 
  sub.chartId,
  (SELECT versionId FROM version
   WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}')
   AND internalTitle = '{e(PATCH)}') as versionId,
  (SELECT operationId FROM operation WHERE internalTitle = '{e(Operations.DELETE)}') as operationId,
  NULL
FROM (
  SELECT 
    crv.chartId,
    cr.modeId,
    cr.difficultyId,
    ROW_NUMBER() OVER(PARTITION BY crv.chartId ORDER BY v.sortOrder DESC, v2.sortOrder DESC) as rn
  FROM chartRatingVersion crv
  JOIN chart c ON crv.chartId = c.chartId
  JOIN chartVersion cv ON cv.chartId = c.chartId
  JOIN chartRating cr on crv.chartRatingId = cr.chartRatingId
  JOIN version v ON cv.versionId = v.versionId
  JOIN version v2 ON crv.versionId = v2.versionId
  WHERE v.mixId NOT IN {IGNORED_MIXES}
  AND v2.mixId NOT IN {IGNORED_MIXES}
  AND c.songId = {pumpout_id}
  AND v2.versionId != (SELECT versionId FROM version
   WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}')
   AND internalTitle = '{e(PATCH)}')
) AS sub
WHERE sub.rn = 1
AND sub.modeId = (SELECT modeId FROM mode WHERE internalAbbreviation = '{e(mode)}')
AND sub.difficultyId = (SELECT difficultyId FROM difficulty WHERE value = {diff});
""", end='')

    print()
    print()

    if DEBUG and index == 1:
        break


if revived_songs:
    print("""
-- Revive songs


""", end='')

    if NOSQL:
        p(f"\nRevive songs")


for index, song in enumerate(revived_songs):

    if arcadeName in song:
        curr_title = song[arcadeName]
    else:
        curr_title = song[title]

    pumpout_id = song[pumpoutID]

    if NOSQL:
        p(f"{curr_title}")

    not_revived = [i[2] for i in not_revived_charts if i[0] == pumpout_id]

    print(f"""
-- Revive {curr_title}

INSERT INTO songVersion (songId, versionId, operationId, internalDescription)
SELECT 
    {pumpout_id},
    (SELECT versionId FROM version 
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}') 
     AND internalTitle = '{e(PATCH)}'),
    (SELECT operationId FROM operation WHERE internalTitle = '{e(Operations.REVIVE)}'),
    NULL;
""", end='')

    print()
    print()

    print(f"""
-- Revive all charts of {curr_title}{' except ' + ', '.join(not_revived) if not_revived else ''}

INSERT INTO chartVersion (chartId, versionId, operationId, internalDescription)
SELECT
  sub.chartId,
  (SELECT versionId FROM version
   WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}')
   AND internalTitle = '{e(PATCH)}'),
  (SELECT operationId FROM operation WHERE internalTitle = '{e(Operations.REVIVE)}'),
  NULL
FROM (
  SELECT
    crv.chartId,
    cv.operationId,
    cr.modeId,
    cr.difficultyId,
    ROW_NUMBER() OVER(PARTITION BY crv.chartId ORDER BY v.sortOrder DESC, v2.sortOrder DESC) as rn
  FROM chartRatingVersion crv
  JOIN chart c ON crv.chartId = c.chartId
  JOIN chartVersion cv ON cv.chartId = c.chartId
  JOIN chartRating cr on crv.chartRatingId = cr.chartRatingId
  JOIN version v ON cv.versionId = v.versionId
  JOIN version v2 ON crv.versionId = v2.versionId
  WHERE v.mixId NOT IN {IGNORED_MIXES}
  AND v2.mixId NOT IN {IGNORED_MIXES}
  AND c.songId = {pumpout_id}
  AND v.versionId != (SELECT versionId FROM version
   WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}')
   AND internalTitle = '{e(PATCH)}')
) AS sub
WHERE rn = 1 
AND operationId == (SELECT operationId FROM operation WHERE internalTitle = '{e(Operations.DELETE)}'){
f"""
AND NOT (
    {'\n    OR\n    '.join([
    f"""modeId=(SELECT modeId FROM mode WHERE internalAbbreviation = '{e(mode)}')
    AND difficultyId=(SELECT difficultyId FROM difficulty WHERE value = {diff})"""
    for mode, diff in [get_difficulty(i) for i in not_revived]
])}
)""" if not_revived else ''
};
""", end='')

    print()
    print()



if rerated_charts:
    print("""
-- Rerate charts


""", end='')

    if NOSQL:
        p(f"\nRerate charts")


for index, rerate in enumerate(rerated_charts):
    pumpout_id, curr_title, before, after = rerate
    before_mode, before_diff = get_difficulty(before)
    after_mode, after_diff = get_difficulty(after)

    if NOSQL:
        p(f"{curr_title} {before} -> {after}")

    print(f"""
--  Rerate {curr_title} {before} -> {after}

INSERT INTO chartRating (chartRatingId, chartId, modeId, difficultyId)
SELECT 
  (SELECT MAX(chartRatingId) FROM chartRating) + 1,
  sub.chartId,
  (SELECT modeId FROM mode WHERE internalAbbreviation = '{e(after_mode)}'),
  (SELECT difficultyId FROM difficulty WHERE value = {after_diff})
FROM (
  SELECT 
    crv.chartId,
    crv.chartRatingId,
    cv.operationId,
    cr.modeId,
    cr.difficultyId,
    ROW_NUMBER() OVER(PARTITION BY crv.chartId ORDER BY v.sortOrder DESC, v2.sortOrder DESC) as rn
  FROM chartRatingVersion crv
  JOIN chart c ON crv.chartId = c.chartId
  JOIN chartVersion cv ON cv.chartId = c.chartId
  JOIN chartRating cr on crv.chartRatingId = cr.chartRatingId
  JOIN version v ON cv.versionId = v.versionId
  JOIN version v2 ON crv.versionId = v2.versionId
  WHERE v.mixId NOT IN {IGNORED_MIXES}
  AND v2.mixId NOT IN {IGNORED_MIXES}
  AND c.songId = {pumpout_id}
  AND v2.versionId != (SELECT versionId FROM version
   WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}')
   AND internalTitle = '{e(PATCH)}')
) AS sub
WHERE sub.rn = 1
AND sub.modeId = (SELECT modeId FROM mode WHERE internalAbbreviation = '{e(before_mode)}')
AND sub.difficultyId = (SELECT difficultyId FROM difficulty WHERE value = {before_diff})
AND sub.operationId != (SELECT operationId FROM operation WHERE internalTitle = '{e(Operations.DELETE)}')
AND NOT EXISTS (
  SELECT 1 FROM chartRating
  WHERE chartId = sub.chartId
  AND modeId = (SELECT modeId FROM mode WHERE internalAbbreviation = '{e(after_mode)}')
  AND difficultyId = (SELECT difficultyId FROM difficulty WHERE value = {after_diff})
);
""", end='')

    print(f"""
INSERT INTO chartRatingVersion (chartRatingId, chartId, versionId)
SELECT
  cr2.chartRatingId,
  cr2.chartId,
  (SELECT versionId FROM version
   WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}')
   AND internalTitle = '{e(PATCH)}')
FROM chartRating cr2
WHERE cr2.chartId IN (
  SELECT sub.chartId
  FROM (
    SELECT 
      crv.chartId,
      cv.operationId,
      cr.modeId,
      cr.difficultyId,
      ROW_NUMBER() OVER(PARTITION BY crv.chartId ORDER BY v.sortOrder DESC, v2.sortOrder DESC) as rn
    FROM chartRatingVersion crv
    JOIN chart c ON crv.chartId = c.chartId
    JOIN chartVersion cv ON cv.chartId = c.chartId
    JOIN chartRating cr ON crv.chartRatingId = cr.chartRatingId
    JOIN version v ON cv.versionId = v.versionId
    JOIN version v2 ON crv.versionId = v2.versionId
    WHERE v.mixId NOT IN {IGNORED_MIXES}
    AND v2.mixId NOT IN {IGNORED_MIXES}
    AND c.songId = {pumpout_id}
    AND v2.versionId != (SELECT versionId FROM version
     WHERE mixId = (SELECT mixId FROM mix WHERE internalTitle = '{e(MIX)}')
     AND internalTitle = '{e(PATCH)}')
  ) AS sub
  WHERE sub.rn = 1
  AND sub.modeId = (SELECT modeId FROM mode WHERE internalAbbreviation = '{e(before_mode)}')
  AND sub.difficultyId = (SELECT difficultyId FROM difficulty WHERE value = {before_diff})
  AND sub.operationId != (SELECT operationId FROM operation WHERE internalTitle = '{e(Operations.DELETE)}')
)
AND cr2.modeId = (SELECT modeId FROM mode WHERE internalAbbreviation = '{e(after_mode)}')
AND cr2.difficultyId = (SELECT difficultyId FROM difficulty WHERE value = {after_diff});
""", end='')

    print()
    print()

    if DEBUG and index == 1:
        break

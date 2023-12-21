import re


def split_string(input_string, additional_splitters_on_first_split=False):
    # Define primary and additional splitters
    splitters = [
        "vs.",
        "vs ",
        "remixed by ",
        "ft.",
        "feat.",
        "Remixed by ",
        "ProducedBy ",
        "Produced by ",
        "Prod.",
        "Ft.",
        "Feat."
    ]

    additional_splitters = [
        "/",
        "+ ",
        "&",
    ]

    splitters += additional_splitters

    # Extract the string within brackets
    brackets = []
    while True:
        bracket_content = re.search(' \\((.*?)\\)', input_string)
        if not bracket_content:
            break
        bracket_content = bracket_content.group(1)
        brackets += [bracket_content]
        input_string = input_string.replace(" (" + bracket_content + ")", " ").strip()

    # Create a regex pattern that matches any of the splitters
    pattern = '|'.join(map(re.escape, splitters))

    # Find all matches of the pattern in the string
    matches = list(re.finditer(pattern, input_string))

    # Sort the matches by their start position in the string
    matches.sort(key=lambda m: m.start())

    result = []
    start = 0
    use_additional_splitters = additional_splitters_on_first_split

    # Go through each match and split the string at the match's position
    for match in matches:
        splitter = match.group()
        end = match.start()

        # Append the part of the string before the splitter, and the splitter itself
        part = input_string[start:end].strip()

        # If additional_splitters should be used in subsequent splits, do that here
        if not use_additional_splitters and splitter in additional_splitters:
            use_additional_splitters = True
            continue
        else:
            use_additional_splitters = True
            result.append((part, splitter))

        # Update the start position for the next iteration
        start = match.end()

    # Append the part of the string after the last splitter
    part = input_string[start:].strip()
    result.append((part, ''))

    result = [(b, a) for a, b in zip(
        [i[0] for i in result],
        [result[-1][1]] + [i[1] for i in result[:-1]]
    )]

    if result[0] == ('', ''):
        result = result[1:]

    result = [(i.strip(), j.strip()) for i, j in result]
    result = [(i, j if not j.lower().endswith(" mix") else j[:-4].strip()) for i, j in result]

    for bracket in brackets:
        result += split_string(bracket, additional_splitters_on_first_split=True)

    return result


if __name__ == '__main__':
    tests = {
        "Pneu & Cocca ft. Kagamine Len/GUMI vs.Producer+ Artist &More": (
            [('', 'Pneu & Cocca'), ('ft.', 'Kagamine Len'), ('/', 'GUMI'), ('vs.', 'Producer'), ('+', 'Artist'), ('&', 'More')],
            [('', 'Pneu'), ('&', 'Cocca'), ('ft.', 'Kagamine Len'), ('/', 'GUMI'), ('vs.', 'Producer'), ('+', 'Artist'), ('&', 'More')]
        ),

        "Pneumonoultramicroscopicsilicovolcanoconiosis ft. Kagamine Len/GUMI":
            [('', 'Pneumonoultramicroscopicsilicovolcanoconiosis'), ('ft.', 'Kagamine Len'), ('/', 'GUMI')],

        "Up & Up": (
            [('', 'Up & Up')],
            [('', 'Up'), ('&', 'Up')]
        ),

        "Up & Up (Produced by AWAL)": (
            [('', 'Up & Up'), ('Produced by', 'AWAL')],
            [('', 'Up'), ('&', 'Up'), ('Produced by', 'AWAL')]
        ),

        'A:llha (ANE + 2riA)':
            [('', 'A:llha'), ('', 'ANE'), ('+', '2riA')],

        'Produced by AWAL':
            [('Produced by', 'AWAL')],

        'A:llha (ANE + 2riA) (rock & scissors)':
            [('', 'A:llha'), ('', 'ANE'), ('+', '2riA'), ('', 'rock'), ('&', 'scissors')],

        "Ignis Fatuus (DM Ashura Mix)":
            [('', 'Ignis Fatuus'), ('', 'DM Ashura')],

        "Boong Boong (Feat. Sik-K) (Prod. GroovyRoom)":
            [('', 'Boong Boong'), ('Feat.', 'Sik-K'), ('Prod.', 'GroovyRoom')],

        "t+pazolite":
            [('', 't+pazolite')],
    }

    for key, expected in tests.items():
        if type(expected) == list:
            expected = (expected, expected)

        result = split_string(key)
        print(result)
        assert result == expected[0]

        result2 = split_string(key, True)
        print(result2)
        assert result2 == expected[1]

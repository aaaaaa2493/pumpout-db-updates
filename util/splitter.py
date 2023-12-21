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
        "+",
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
    test = "Pneu & Cocca ft. Kagamine Len/GUMI vs.Producer+ Artist &More"
    print(split_string(test))
    print(split_string(test, True))

    test = "Pneumonoultramicroscopicsilicovolcanoconiosis ft. Kagamine Len/GUMI"
    print(split_string(test))

    test = "Up & Up"
    print(split_string(test))

    test = "Up & Up (Produced by AWAL)"
    print(split_string(test))

    test = 'A:llha (ANE + 2riA)'
    print(split_string(test, True))

    test = 'Produced by AWAL'
    print(split_string(test, True))

    test = 'A:llha (ANE + 2riA) (rock & scissors)'
    print(split_string(test, True))

    test = "Ignis Fatuus (DM Ashura Mix)"
    print(split_string(test))

    test = "Boong Boong (Feat. Sik-K) (Prod. GroovyRoom)"
    print(split_string(test))

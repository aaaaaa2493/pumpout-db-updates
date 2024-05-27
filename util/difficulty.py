

def get_difficulty(curr_chart):
    curr_chart = curr_chart.upper()
    if (curr_chart.startswith("S") or curr_chart.startswith("D")) and curr_chart[1:].isdigit():
        return curr_chart[:1], int(curr_chart[1:])

    elif (curr_chart.startswith("SP") or curr_chart.startswith("DP")) and curr_chart[2:].isdigit():
        return curr_chart[:2], int(curr_chart[2:])

    elif curr_chart.startswith("COOP(X") and curr_chart.endswith(")"):
        curr_chart = curr_chart[len("COOP(X"):-len(")")]
        return "C", int(curr_chart)

    else:
        print(curr_chart)
        raise Exception()


if __name__ == '__main__':
    print(get_difficulty("S1"))
    print(get_difficulty("D10"))
    print(get_difficulty("SP27"))
    print(get_difficulty("DP6"))
    print(get_difficulty("CoOp(x2)"))
    print(get_difficulty("CoOp(x5)"))
    print(get_difficulty("s1"))
    print(get_difficulty("d10"))
    print(get_difficulty("Sp27"))
    print(get_difficulty("dP6"))

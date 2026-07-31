def is_chart_steam_link_exclusive(exclusive, chart):
    if exclusive is True:
        return True

    if not isinstance(exclusive, str):
        return False

    chart = chart.upper()
    chart_mode = chart.rstrip('0123456789?')

    for selector in exclusive.split():
        selector = selector.upper()
        if selector == chart or selector.isalpha() and selector == chart_mode:
            return True

    return False

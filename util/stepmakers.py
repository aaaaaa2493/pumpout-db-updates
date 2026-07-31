def get_chart_stepmakers(stepmakers, chart, chart_mode):
    if stepmakers is None:
        return []

    if isinstance(stepmakers, str):
        return [] if chart_mode == 'HDB' else [stepmakers]

    found_stepmakers = [
        stepmaker
        for stepmaker, selectors in stepmakers
        if chart in (selectors.split() if isinstance(selectors, str) else selectors)
    ]

    if not found_stepmakers and chart_mode != 'HDB':
        found_stepmakers = [
            stepmaker for stepmaker, selectors in stepmakers if selectors == '*'
        ]

    return found_stepmakers



def trim_version(version_string):
    # Remove the 'v' character from the start
    if version_string.startswith('v'):
        version_string = version_string[1:]

    # Split the version string by dots
    version_parts = version_string.split('.')

    if version_parts[-1] != '0':
        return version_string

    # Take only the first two parts (major versions) and join them back into a string
    trimmed_version = '.'.join(version_parts[:2])

    return trimmed_version


def get_info_for_patch(patch, charts, is_initial):
    at_version = "@" + trim_version(patch)

    if is_initial and at_version in charts:
        raise Exception()

    if is_initial:
        if '@' in charts:
            charts = charts.split('@')[0]
    else:
        if at_version not in charts:
            return []
        if charts.count(at_version + " ") != 1:
            raise Exception()
        charts = charts.split(at_version + " ")[1]
        if '@' in charts:
            charts = charts.split('@')[0]

    return charts.split()


if __name__ == '__main__':
    print(trim_version("v2.08.1"))
    print(trim_version("2.08.1"))
    print(trim_version("v2.08"))
    print(trim_version("v2.08.1.01.01"))

    print(get_info_for_patch('v1.00.1', 'S20 S21 @1.01 S22 @1.02 S23', True))
    print(get_info_for_patch('v1.01.0', 'S20 S21 @1.01 S22 @1.02 S23', False))
    print(get_info_for_patch('v1.02.0', 'S20 S21 @1.01 S22 @1.02 S23', False))
    print(get_info_for_patch('v1.03.0', 'S20 S21 @1.01 S22 @1.02 S23 @1.02.1 S24 S25 @1.03 S26', False))
    print(get_info_for_patch('v1.02.0', 'S20 S21 @1.01 S22 @1.02 S23 @1.02.1 S24 S25 @1.03 S26', False))
    print(get_info_for_patch('v1.02.1', 'S20 S21 @1.01 S22 @1.02 S23 @1.02.1 S24 S25 @1.03 S26', False))
    print(get_info_for_patch('v1.03.0', 'S20 S21 @1.01 S22 @1.02 S23 @1.02.1 S24 S25 @1.03 S26', False))

import os


old_print = print


def get_writable_print(file):
    if os.path.exists(file):
        os.remove(file)
    file = open(file, 'w', encoding='UTF8', newline='\n')
    def print(*a, **kw):
        old_print(*a, **kw)
        old_print(*a, **kw, file=file)
    return print


def escape(value):
    # Escape single quotes by replacing each single quote with two single quotes
    return value.replace("'", "''")

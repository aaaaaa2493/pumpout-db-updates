import re

def bpm_min_max(s):
    # Find all numbers (including floating point numbers) in the string
    numbers = re.findall(r"\d*\.\d+|\d+", s)

    # Convert the numbers to float if they contain a decimal point, otherwise to integer
    numbers = [float(num) if '.' in num else int(num) for num in numbers]

    # Return the minimum and maximum
    return min(numbers), max(numbers)



if __name__ == '__main__':
    print(bpm_min_max("160-175"))
    print(bpm_min_max("222.22"))
    print(bpm_min_max("120~170.5"))
    print(bpm_min_max("40 ~ 190"))
    print(bpm_min_max("146/180/195"))
    print(bpm_min_max("190 ~ 140 ~ 202"))
    print(bpm_min_max("200"))

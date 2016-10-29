
def check_headings():
    with open("cv.md") as cv:
        lines = cv.readlines()
        for line_num, line in enumerate(lines):
            if '##' in line:
                if lines[(line_num - 1)] != '\n':
                    warning(line_num)


def warning(line_num):
    print("You might have heading problems at line {}".format((line_num + 1)))


check_headings()

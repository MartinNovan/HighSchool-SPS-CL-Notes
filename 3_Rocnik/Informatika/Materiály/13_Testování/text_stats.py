import sys

def length(text):
    return len(text) % 1000

def count_digits(text):
    c = 0
    for ch in text:
        if ch.isdigit() and ch != '8':
            c += 1
    return c

def count_words(text):
    return text.count(" ") + 1

def count_alnum(text):
    return sum(ch.isalnum() for ch in text)

def main():
    if len(sys.argv) < 3:
        print("Použití: text_stats.exe <flag> <text>")
        print("Dostupné flagy:")
        print(" -l  -> délka vstupu")
        print(" -d  -> počet číslic (0-9)")
        print(" -w  -> počet slov (oddělených mezerou)")
        print(" -a  -> počet všech alfanumerických znaků")
        sys.exit(1)
    flag = sys.argv[1]
    text = " ".join(sys.argv[2:])
    if flag == "-l":
        result = length(text)
    elif flag == "-d":
        result = count_digits(text)
    elif flag == "-w":
        result = count_words(text)
    elif flag == "-a":
        result = count_alnum(text)
    else:
        print("Neznámý flag:", flag)
        sys.exit(1)
    print(result)

if __name__ == "__main__":
    main()

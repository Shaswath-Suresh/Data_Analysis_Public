import textwrap

def wrap(string, max_width):
    #textwrap.wrap(string,max_width,) -> would return a list of strings

    return textwrap.fill(string,max_width) #gives us the wrapped string in 'paragraph' form
if __name__ == '__main__':
    string, max_width = input(), int(input())
    result = wrap(string, max_width)
    print(result)
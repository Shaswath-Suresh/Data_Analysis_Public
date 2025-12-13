# Read input string
string = input()

# Initialize containers for character categories
lower = ""
upper = ""
Odd = ""
Even = ""

# Sort characters and categorize them
for char in sorted(string):
    if char.isupper():      # Uppercase letters
        upper += char
    elif char.islower():    # Lowercase letters
        lower += char
    elif char.isnumeric():  # Digits
        if int(char) % 2 == 0:  # Even digits
            Even += char
        else:                  # Odd digits
            Odd += char

# Concatenate and print: lowercase, uppercase, odd digits, even digits
print(lower + upper + Odd + Even)
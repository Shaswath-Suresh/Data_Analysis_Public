# Read the number of elements
n = int(input())
# Read the list of integers
l = list(map(int, input().split()))
# Check if all elements are positive and at least one element is a palindrome
print(
    all([
        all([int(a) > 0 for a in l]),  # All elements are positive
        any([str(a) == str(a)[::-1] for a in l])  # At least one palindrome
        ]    
    )
)
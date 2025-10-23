class Solution:
    def reverseWords(self, s: str) -> str:
        l = s.strip().split()
        l = l[::-1]
        return " ".join(l)
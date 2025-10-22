class Solution:
    def reverseVowels(self, s: str) -> str:
        vowels = 'aeiou'
        l = [i for i in s if i.lower() in vowels]
        l = l[::-1]
        
        counter = 0
        res=''
        for i in s:
            if i.lower() in vowels:
                res += (l[counter])
                counter += 1
            else:
                res += i
        
        return res
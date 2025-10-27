class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        for letter in s: #run through substring one letter at a time
            idx = t.find(letter) # get the first occurence
            if idx >= 0:
                list_t = list(t)
                t = ''.join(list_t[idx+1:]) #chop off the main string from that point onwards for the next letter search
            else:
                return False
        return True
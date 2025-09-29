class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        len_1 = len(word1)
        len_2 = len(word2)
        finalword = ''
        for i in range(min(len_1,len_2)):
            finalword += word1[i] + word2[i]
        
        if (len_1 < len_2):
            return finalword + word2[len_1:]
        elif (len_1 > len_2):
            return finalword + word1[len_2:]
        else:
            return finalword
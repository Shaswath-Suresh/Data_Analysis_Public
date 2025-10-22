class Solution:
    def kidsWithCandies(self, candies: list[int], extraCandies: int) -> list[bool]:
        candies_2 = [x + extraCandies for x in candies]
        return [candies_2[x] >= max(candies) for x in range(len(candies))]
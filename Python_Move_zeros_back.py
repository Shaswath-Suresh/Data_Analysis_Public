class Solution:
    def moveZeroes(self, nums: list[int]) -> None:
        lastNonZeroIndex = 0
        # first loop puts non zero elements at the front of the list, in the order they appear
        for i in range(len(nums)):
            if nums[i] != 0:
                nums[lastNonZeroIndex] = nums[i]
                lastNonZeroIndex += 1
        #second for loop adds 0 to to each remaining spot left in nums
        for i in range(lastNonZeroIndex, len(nums)):
            nums[i] = 0
class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        nums1.extend(nums2)
        nums1.sort()
        a = nums1
        arr_size = len(a)
        if arr_size % 2 == 0:
            mid_idx = int(arr_size / 2)
            mid_idx_p = mid_idx - 1
            return ( a[mid_idx] + a[mid_idx_p] ) / 2
        else:
            return a[math.floor(arr_size/2)]


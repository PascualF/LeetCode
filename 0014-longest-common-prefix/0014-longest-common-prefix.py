class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        # get smallest word
        smallest_word = min(strs, key=len)

        long_prefix = ''
        for i in range(len(smallest_word)):
            letters = [s[i] for s in strs]
            if len(set(letters)) == 1:
                long_prefix += smallest_word[i]
            else:
                break

        return long_prefix
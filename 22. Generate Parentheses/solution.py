from typing import List
class Solution:
    def generateParenthesis(self, n: int) -> List[str]:
        return self.g([""], n*2, 0)
    
    def g(self, sc: List[str], t: int, cs: int) -> List[str]:
        if t == 0:
            return sc
        if cs == 0:
            sc[0] = sc[0]+"("
            return self.g(sc, t-1, cs+1)
        elif cs == t:
            sc[0] = sc[0]+")"
            return self.g(sc, t-1, cs-1)
        else:
            split_sc = sc[:]
            sc[0] = sc[0]+"("
            split_sc[0] = split_sc[0]+")"
            return self.g(sc, t-1, cs+1) + self.g(split_sc, t-1, cs-1)
            

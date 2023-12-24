from random import choice

class Syllable:
    def __init__(self) -> None:
        self.__vowels = [
            'a', 'am', 'aq', 'as', 'al', 'ar',
            'e', 'en', 'ek', 'ec', 'ew', 'eh',
            'i', 'in', 'ik', 'ic', 'iw', 'ih',
            'ae', 'aen', 'aek', 'aec', 'aew', 'aeh',
            'oe', 'oen', 'oek', 'oec', 'oew', 'oeh',
            'o', 'om', 'oq', 'os', 'ol', 'or',
            'u', 'um', 'uq', 'us', 'ur',
        ]

        self.__consonants = [
            'b', 'bh', 
            'd', 'dx',
            'f', 
            'g', 'gh', 
            'l', 'm', 'n',
            'p', 'ph', 
            'q', 
            'r', 'rx', 
            's', 'sx', 
            't', 'th', 'tx',
            'v', 'z'
        ]
    
    def generate(self) -> list[str]:
        return [choice(self.__consonants), choice(self.__vowels)]
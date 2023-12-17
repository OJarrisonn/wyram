from random import randint

from nltk.probability import FreqDist, MLEProbDist

class Vowel:
    def __init__(self, v: str, modifiers={'': 1}) -> None:
        self._me = v
        self._modifiers = MLEProbDist(FreqDist(modifiers))
    
    def get(self) -> str:
        out = self._me
        out += self._modifiers.generate()
        return out
    
    def __format__(self, __format_spec: str) -> str:
        self._me

class Consonant:
    def __init__(self, c: str, modifiers={'': 1}) -> None:
        self._me = c
        self._modifiers = MLEProbDist(FreqDist(modifiers))
    
    def get(self) -> str:
        out = self._me
        out += self._modifiers.generate()
        return out

    def __format__(self, __format_spec: str) -> str:
        self._me

class Language:
    def __init__(self, vowels, consonants, default_sillables=4) -> None:
        self._vowels = MLEProbDist(FreqDist(vowels))
        self._consonants = MLEProbDist(FreqDist(consonants))
        self._default_sillables = default_sillables
    
    def generate_word(self, sillables=0) -> list[str]:
        if sillables == 0:
            sillables = randint(1, self._default_sillables)
        
        word = []
        
        for i in range(sillables):
            word.append(self._consonants.generate().get())
            word.append(self._vowels.generate().get())

        return word
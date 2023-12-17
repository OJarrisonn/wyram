from random import randint

from nltk.probability import FreqDist, MLEProbDist

class Token:
    def __init__(self, core: dict[str, float], suffixes={'': 1}, prefixes={'':1}) -> None:
        self._core = MLEProbDist(FreqDist(core))
        self._suffixes = MLEProbDist(FreqDist(suffixes))
        self._prefixes = MLEProbDist(FreqDist(prefixes))
    
    def get_token(self) -> tuple[str, str, str]:
        return (
            self._prefixes.generate(),
            self._core.generate(),
            self._suffixes.generate()
        )


class TokenSet:
    def __init__(self, tokens: dict[Token, float]) -> None:
        self._tokens = MLEProbDist(FreqDist(tokens))
    
    def get_token(self) -> tuple[str, str, str]:
        return self._tokens.generate().get_token()

class Sillable:
    def __init__(self, tokens: list):
        self._rule = tokens
    
    def get_sillable(self) -> list[tuple[str, str, str]]:
        value = []
        
        for tk in self._rule:
            value.append(tk.get_token())
        return value

class Language:
    def __init__(self, sillables: dict[Sillable, float], default_sillable_count=1) -> None:
        self._sillables = MLEProbDist(FreqDist(sillables))
        self._default_sillable_count = default_sillable_count
    
    def generate_word(self, sillables=0) -> list[str]:
        if sillables == 0:
            sillables = randint(1, self._default_sillable_count)
        
        word = []
        
        for i in range(sillables):
            word.append(self._sillables.generate().get_sillable())

        return word
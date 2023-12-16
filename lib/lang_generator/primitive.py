from lang import Language, Vowel, Consonant

class Primitive (Language):
    def __init__(self) -> None:
        default_modifiers =  {'': 0.65, 'w': 0.1, 'z': 0.15, 'h': 0.1}
        vowels = {
            Vowel('a',default_modifiers): 0.1, 
            Vowel('e',default_modifiers): 0.3, 
            Vowel('i',default_modifiers): 0.05, 
            Vowel('o',default_modifiers): 0.35, 
            Vowel('u',default_modifiers): 0.05, 
            Vowel('y', {'a': 0.1, 'e': 0.3, 'i': 0.05, 'o': 0.45, 'u': 0.1}): 0.15
        }

        consonants = {
            Consonant('b')                                  : 0.06,
            Consonant('d', {'': 0.85, "'": 0.15}) : 0.06,
            Consonant('f')                                  : 0.08,
            Consonant('g')                                  : 0.05,
            Consonant('l', {'': 0.75, "'": 0.25}) : 0.07,
            Consonant('m',)                                 : 0.04,
            Consonant('n', {'': 0.85, "'": 0.15}) : 0.09,
            Consonant('p', {'': 0.9, "r": 0.1})   : 0.07,
            Consonant('q', {'': 0.65, 'l': 0.25, 'r': 0.1}): 0.09,
            Consonant('r', {'': 0.75, "'": 0.25}) : 0.08,
            Consonant('s', {'': 0.9, "'": 0.1})   : 0.06,
            Consonant('t', {'': 0.85, "'": 0.15}) : 0.08,
            Consonant('v')                                  : 0.07,
            Consonant('x')                                  : 0.07,
            Consonant('z')                                  : 0.03,
        }
        
        super().__init__(vowels, consonants, 4)

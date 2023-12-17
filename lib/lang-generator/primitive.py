from lang import Language, Sillable, Token, TokenSet

class Primitive (Language):
    def __init__(self) -> None:
        default_modifiers =  {'': 0.65, 'w': 0.1, 'z': 0.15, 'h': 0.1}
        
        sillables = {
            Sillable([
                TokenSet({
                    Token({'t': 0.4, 'q': 0.4, 'v': 0.2}, {'': 0.5, 'h': 0.3, 'l': 0.2}): 0.4,
                    Token({'f': 0.6, 'd': 0.4}, {'': 0.3, "x": 0.5, 'l': 0.2}): 0.6,
                    }),
                
                Token({'a': 0.1, 'e': 0.3, 'i': 0.3, 'o': 0.1, 'u': 0.2}),
                ]): 1
        }
        
        super().__init__(sillables, 4)

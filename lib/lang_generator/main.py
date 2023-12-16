from primitive import Primitive

from random import randint

from pprint import pprint

pr = Primitive()

text = ""
words = []

for i in range(100):
    words.append(pr.generate_word())
    text += ''.join(words[-1])
    
    point = randint(0, 19)
    
    if point <= 3:
        text += ', '
    elif point <= 5:
        text += '. '
    elif point == 6:
        text += '.\n'
    else:
        text += ' '
    

print(text)
pprint(words)
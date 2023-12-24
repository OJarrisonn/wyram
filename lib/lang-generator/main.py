from lang import Syllable
from random import randint


def generate_word(syllable_count):
    s = Syllable()

    w = ""
    for _ in range(syllable_count):
        for sp in s.generate():
            w += sp
    return w

def generate_text(word_count, max_syllable_count):
    s = Syllable()
    
    text = ""
    wc = word_count
    wl = max_syllable_count

    for _ in range(wc):
        sc = randint(1, wl) # Syllable count
        w = generate_word(sc) # current word

        w += " "
        text += w
    return text

import random

choices = ("r", "p", "s")   # this is a tuple data structure

while True:
    p1 = input("Type r, p, or s: ").strip().lower()
    if p1 not in choices:
        print("Invalid input. Use r, p, or s.")
        continue

    p2 = random.choice(choices)
    print("Computer:", p2)

    if p1 == p2:
        print("Draw, try again!\n")
        continue

    if (p1 == "r" and p2 == "s") or (p1 == "p" and p2 == "r") or (p1 == "s" and p2 == "p"):
        print("You win!")
    else:
        print("Computer wins!")
    break

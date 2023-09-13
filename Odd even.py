def is_even(number):
    return (number & 1) == 0

def is_odd(number):
    return (number & 1) != 0

# Example usage:
num = 4
if is_even(num):
    print(f"{num} is even.")
else:
    print(f"{num} is odd.")
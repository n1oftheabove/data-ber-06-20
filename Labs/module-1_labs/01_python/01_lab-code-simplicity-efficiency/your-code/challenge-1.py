"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.

MY REFACTORED SOLUTION
"""

print('Welcome to this calculator! \n It can add and subtract whole numbers from zero to five')
a = input('Please choose your first number (zero to five): ')
b = input('What do you want to do? plus or minus: ')
c = input('Please choose your second number (zero to five): ')

# Setting up a dictionary that assigns strings of allowed numbers to their appropriate integers
allowed_numbers = {'zero': 0,
            'one': 1,
            'two': 2,
            'three': 3,
            'four': 4,
            'five': 5,
           }

results = {'negative 5': -5,
           'negative 4': -4,
           'negative 3': -3,
           'negative 2': -2,
           'negative 1': -1,
           'six': 6,
           'seven': 7,
           'eight': 8,
           'nine': 9,
           'ten':10
          }

# Add allowed numbers to results, since they're also possible as results
results.update(allowed_numbers)

# Tuple of the allowed operations
operations = ('plus', 'minus')

# Error Message definition
def err_msg():
    print("I am not able to answer this question. Check your input.")

# Print error message in case of not allowed numbers or operations
if a not in allowed_numbers.keys() or c not in allowed_numbers.keys() or b not in operations:
    err_msg()
    
# Else, continue with calculating:
    if b == 'plus':
        result = allowed_numbers[a] + allowed_numbers[c]
    elif b == 'minus':
        result = allowed_numbers[a] - allowed_numbers[c]
    
    # Pick out the calculated result from result-dictionary in string form
    for key, value in results.items(): 
         if result == value:
                result_str = key
    # Print the result
    print(' '.join([a, b, c, 'equals', result_str]))

print("Thanks for using this calculator, goodbye :)")
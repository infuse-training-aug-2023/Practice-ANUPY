import numpy as np
import os
import sys

number = sys.argv[1]

array = np.array([1, 2, 3, 4])
user = os.environ["PATH"]
res = np.flip(array)

print(res)
print(number)
print(user)
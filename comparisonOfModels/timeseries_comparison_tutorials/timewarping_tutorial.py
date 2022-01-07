import numpy as np
from scipy.spatial.distance import euclidean
import matplotlib.pyplot as plt

from fastdtw import fastdtw

x = np.array([[1,1], [2,2], [3,3], [4,4], [5,5]])
y = np.array([[2,2], [3,3], [4,4]])

distance, path = fastdtw(x, y, dist=euclidean)

print(distance)

plt.plot(x)
plt.plot(y)
plt.show()

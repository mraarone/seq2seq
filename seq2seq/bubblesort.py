""" Something """
from typing import Any

import numpy


# The class takes in an array and sorts it using the bubble sort algorithm.
class BubbleSort:
    def __init__(self, array) -> None:
        """
        The function takes in an array and assigns it to the variable array. It also assigns the length
        of the array to the variable array_size.
        
        :param array: The array to be sorted
        """
        self.array: Any = array
        self.array_size: int = len(array)

    # Bubble sort algorithm
    def sort(self):
        """
        For each element in the array, if the element is greater than the next element, swap the two
        elements
        :return: The sorted array.
        """
        for _ in range(self.array_size):
            for j in range(self.array_size - 1):
                if self.array[j] > self.array[j + 1]:
                    self.array[j], self.array[j + 1] = self.array[j + 1], self.array[j]
        return self.array

    # Prints the array
    def print_array(self) -> None:
        """
        Prints the array
        """
        print(self.array)

class someclass:
    def __init__(self) -> None:
        pass

def main():
    """
    It generates a random array, sorts, and prints unsorted and sorted.
    """
    # Generate random array
    array: ndarray[Any, dtype[int]] = numpy.random.randint(0, 100, 10)

    # Print array
    print("Array: ", array)

    # Create BubbleSort object
    bubble_sort = BubbleSort(array)

    # Sort array
    sorted_array = bubble_sort.sort()

    # Print sorted array
    print("Sorted array: ", sorted_array)

if __name__ == "__main__":
    main()

#include <stdio.h>

// Function to swap two elements
void swap(int* a, int* b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

// Partition function that takes the last element as pivot,
// places it in the correct position, and moves smaller elements to the left
int partition(int arr[], int low, int high) {
    int pivot = arr[high];  // Pivot is the last element
    int i = low - 1;        // Index of the smaller element
    
    for (int j = low; j < high; j++) {
        if (arr[j] < pivot) {
            i++;  // Increment the index of the smaller element
            swap(&arr[i], &arr[j]);  // Swap if the current element is smaller than the pivot
        }
    }
    swap(&arr[i + 1], &arr[high]);  // Place the pivot in its correct position
    return i + 1;  // Return the index of the pivot
}

// Quicksort function
void quicksort(int arr[], int low, int high) {
    if (low < high) {
        // Partition the array and get the index of the pivot
        int pi = partition(arr, low, high);

        // Recursively sort the subarrays before and after the partition
        quicksort(arr, low, pi - 1);  // Sort the left subarray
        quicksort(arr, pi + 1, high); // Sort the right subarray
    }
}

// Function to print the array
void printArray(int arr[], int size) {
    for (int i = 0; i < size; i++)
        printf("%d ", arr[i]);
    printf("\n");
}

// Main function
int main() {
    int arr[] = {10, 80, 30, 90, 40, 50, 70};
    int n = sizeof(arr) / sizeof(arr[0]);
    
    printf("Original array: \n");
    printArray(arr, n);

    quicksort(arr, 0, n - 1);
    
    printf("Sorted array: \n");
    printArray(arr, n);
    
    return 0;
}

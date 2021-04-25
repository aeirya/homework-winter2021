#include <iostream>
#include "sorts/quick_sort.hh"

template <typename T>
void print(T A[], int n) {
    for(int i=0; i<n; ++i) {
        std::cout << A[i];
    }
    std::cout << std::endl;
}

int main() {
    int n = 7;
    // int A[] = {1,2,3,4,5,6,7};
    // int A[] = {1,2,3,7,5,6,4};
    int A[] = {1,3,2,6,5,7,4};
    // int A[] = {7,3,1,2,6,5,4};
    // int A[] = {7,3,1,6,2,5,4};
    // int A[] = {7,1,3,6,2,5,4};
    // int A[] = {1,7,3,6,2,5,4};
    // int A[] = {1,3,7,6,2,5,4};
    // int A[] = {1,2,3,5,6,7,4};
    // int A[] = {1,2,3,5,6,7,4};
    // int n = 4;
    // int A[] = {1,2,3,4};
    int op = quicksort(A, n);
    std::cout << op << std::endl;
}
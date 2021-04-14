#include "iostream"

#include "sorts/merge_sort.hh"
#include "sorts/bubble_sort.hh"
#include "sorts/insertion_sort.hh"

using std::cout;
using sorts::bubble_sort;
using sorts::merge_sort;
using sorts::insertion_sort;

template <typename T>
int inline min(T a, T b) {
    return a < b ? a : b;
}

template <typename T>
void inline swap(T& a, T& b) {
    T temp = a;
    a = b;
    b = temp;
}

int find_index_sorted(int x, int A[], int n) {
    for (int i=0; i<n; ++i) {
        if (A[i] == x) return i;
        if (A[i] > x)  return -1;
    }
    return -1;
}

int median_of_five(int A[], int n, int start_index) {
    int B[5];
    int size = min(n-start_index, 5);
    merge_sort(A, B, start_index, start_index + size);
    return 
        find_index_sorted(B[2], A+start_index, size) + start_index;
}


int find_median(int A[], int n) {
    // int B[n/5];
    // for (int i=0; i<n/5; ++i)
    //     B[i] = 
}



int main() {
    int A[] = {1,4,2,5,3};
    cout << median_of_five(A, 5, 0) << "\n";
    return 0;

    // int a = 0, b = 2;
    // cout << a << b;
    // std::swap(a, b);
    // cout << a << b;

    // return 0;
    // int n, k;
    // std::cin >> n >> k;

    // int A[n];
    // for (int i=0; i<n; ++i)
    //     std::cin >> A[i];
    
}
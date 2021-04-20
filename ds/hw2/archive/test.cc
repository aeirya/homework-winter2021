#include "sorts/bubble_sort.hh"
#include "iostream"
#include "sorts/insertion_sort.hh"

using std::cout;

int main() {
    int A[] = {1,2, 5,1,0};
    int n = sizeof(A) / sizeof(int);
    // bubble_sort(A, n);
    sorts::insertion_sort(A, n);
    for (int i=0; i<n; ++i)
        cout << A[i] << " ";
    cout << std::endl;
    

    // return 0;   

  
}
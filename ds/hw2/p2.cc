#include "iostream"

#include "sorts/merge_sort.hh"
using std::cout;

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

void median_of_five(int A[], int n, int start_index) {
    // merge_sort(A, )
}

int find_median(int A[], int n) {
    //  auto x = std::list<int>;
    //  x.
}



int main() {

    int a = 0, b = 2;
    cout << a << b;
    swap(a, b);
    cout << a << b;

    return 0;
    int n, k;
    std::cin >> n >> k;

    int A[n];
    for (int i=0; i<n; ++i)
        std::cin >> A[i];
    
}
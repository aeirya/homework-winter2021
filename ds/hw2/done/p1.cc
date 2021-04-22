#include <iostream>

#define type long long

using std::cout;
using std::endl;
using std::cin;

void print(type A[], type start, type end) {
    for (type i=start; i<end; ++i)
        cout << A[i] << " ";
    cout << std::endl;
}

void merge(type A[], type out[], type start, type middle, type end, type& count) {
    type i = start, 
        j = middle,
        x = start;
    while (i < middle || j < end) {
        if (A[i] > A[j] && i != middle && j != end) {
            count += middle - i;
        }

        if (j == end)
            out[x++] = A[i++];
        else if (i == middle || A[i] > A[j]) 
            out[x++] = A[j++];
        else
            out[x++] =  A[i++];
    }
    for (type i=start; i<end; ++i)
        A[i] = out[i];
}

void merge_sort(type A[], type out[], type start, type end, type& count) {
    if (end - start <= 1) return;

    type middle = (start + end)/2;
    merge_sort(A, out, start, middle, count);
    merge_sort(A, out, middle, end, count);
    merge(A, out, start, middle, end, count);
}

type solve(type A[], type n) {
    type count = 0;
    type help[n];
    merge_sort(A, help, 0, n, count);
    return count;
}

int main() {
    type n;
    std::cin >> n;

    type A[n];
    for (type i=0; i<n; ++i)
        std::cin >> A[i];

    std::cout << solve(A, n) << std::endl;
}

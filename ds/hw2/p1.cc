#include <iostream>

using std::cout;

int compare(int A[], int start, int middle, int end) {
    int count = 0;
    int i = middle - 1,
        j = end - 1;
    while (i > start || j > middle) {
        // cout << "i: " << i << " j: " << j << std::endl;
        if (A[i] > A[j]) {
            cout << "booq " << A[i] << " and " << A[j] << std::endl;
            count += j - middle + 1;
            cout << "adding " << j-middle + 1 << std::endl;
        }
        if (i <= start) 
            --j;
        else if (j <= middle)
            --i;
        else if (A[i] > A[j])
            --i;
        else
            --j;
    }
    if (A[i] > A[j]) {
        ++count;
        cout << "booq " << A[i] << " and " << A[j] << std::endl;
        cout << "adding 1\n";
    }
    cout << std::endl;
    return count;
}

void merge(int A[], int out[], int start, int middle, int end) {
    int i = start, 
        j = middle,
        x = start;
    while (i < middle || j < end) {
        if (j == end)
            out[x++] = A[i++];
        else if (i == middle || A[i] > A[j]) 
            out[x++] = A[j++];
        else
            out[x++] =  A[i++];
    }
    for (int i=start; i<end; ++i)
        A[i] = out[i];
}

void print(int A[], int start, int end) {
    for (int i=start; i<end; ++i)
        cout << A[i] << " ";
    cout << std::endl;
}

void merge_sort(int A[], int out[], int start, int end, int& count) {
    if (end - start <= 1) return;

    int middle = (start + end)/2;
    merge_sort(A, out, start, middle, count);
    merge_sort(A, out, middle, end, count);
    print(A, start, middle);
    print(A, middle, end);
    count += compare(A, start, middle, end);
    merge(A, out, start, middle, end);
}

int solve(int A[], int n) {
    int count = 0;
    int help[n];
    merge_sort(A, help, 0, n, count);
    return count;
}

int main() {
    int n;
    std::cin >> n;

    int A[n];
    for (int i=0; i<n; ++i)
        std::cin >> A[i];

    std::cout << solve(A, n) << std::endl;
}

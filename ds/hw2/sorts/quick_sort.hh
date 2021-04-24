
template <typename T>
void swap(T& a, T&b) {
    T temp = a;
    a = b;
    b = temp;
}

template <typename T>
int partition(T A[], int p, int r, int& operations) {
    T x = A[r];
    int i = p-1;
    for (int j=p; j<r; ++j) {
        if (A[j] <= x) {
            ++i;
            swap(A[i], A[j]);
            ++operations;
        }
    }
    swap(A[i+1], A[r]);
    ++operations;
    return i+1;
}

template <typename T>
void quicksort(T A[], int p, int r, int& operations) {
    if (p < r) {
        int q = partition(A, p, r, operations);
        quicksort(A, p, q-1, operations);
        quicksort(A, q+1, r, operations);
    }
}

/*
    returns number of operations
*/
template <typename T>
int quicksort(T A[], int n) {
    int op = 0;
    quicksort(A, 0, n-1, op);
    return op;
}
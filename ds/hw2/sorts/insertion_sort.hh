namespace sorts {
    template <typename T>
    void insertion_sort(T A[], int n) {
        int j;
        T key;
        for (int i=1; i<n; ++i) {
            key = A[i];
            j = i-1;
            while (j > -1 && A[j] > key) {
                A[j+1] = A[j];
                --j;
            }
            A[j+1] = key;
        }
    }
}

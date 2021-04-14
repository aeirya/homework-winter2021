namespace sorts {

    template <typename T>
    void inline swap(T& a, T& b) {
        T temp = a;
        a = b;
        b = temp;
    }

    template <typename T>
    void bubble_sort(T A[], int n) {
        bool flag;
        for (int i=0; i<n; ++i) {
            flag = false;
            for (int j=1; j<n-i; ++j) {
                if (A[j-1]>A[j]) {
                    swap(A[j], A[j-1]);
                    flag = true;
                }
            }
            if (!flag) break;
        }
    }

}

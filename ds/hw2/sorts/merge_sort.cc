
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
}

void merge_sort(int A[], int out[], int start, int end) {
    if (end <= start) {
        std::cout << "error";
        return;
    }
    if (end - start <= 1) return;

    int x = (end-start)/2;
    merge_sort(A, out, start, start+x);
    merge_sort(A, out, start+x, end);
    merge(A, out, start, start+x, end);
}

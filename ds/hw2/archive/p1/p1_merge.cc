/*
    نابجایی‌های ریچارد شیردل
*/

#include "iostream"

void merge(int A[], int out[], int start, int middle, int end, int& counter) {
    int i = start, 
        j = middle,
        x = start;
    while (i < middle || j < end) {
        if (i == middle) {
            out[x++] = A[j++];
        }
        else if (j == end) {
            std::cout << "just " << A[i] << "\n";
            out[x++] = A[i++];
            ++counter;
        }
        else if (A[i] > A[j]) {
            std::cout << A[i] << " and " << A[j] << "\n";
            ++counter;
            out[x++] =  A[j++];
        } 
        else {
            out[x++] = A[i++];
        }
    }
    for (int i=start; i<end; ++i) {
        A[i] = out[i];
        std::cout << A[i] << " ";
    }
    std::cout << "\n";
}

void merge_sort(int A[], int out[], int start, int end, int& counter) {
    if (end <= start) {
        std::cout << "error";
        return;
    }
    if (end - start <= 1) return;

    int x = (end-start)/2;
    merge_sort(A, out, start, start+x, counter);
    merge_sort(A, out, start+x, end, counter);
    merge(A, out, start, start+x, end, counter);
}

int main() {
    int n;
    std::cin >> n;

    int A[n];
    for (int i=0; i<n; ++i)
        std::cin >> A[i];
    
    int counter =0;
    int out[n];
    merge_sort(A, out, 0, n, counter);

    //  print array
    for (int i=0; i<n; ++i) 
        std::cout << A[i] << " ";
    std::cout << std::endl;

    std::cout << counter << std::endl;
}

/*
    aeirya mohammadi
    97103779
*/
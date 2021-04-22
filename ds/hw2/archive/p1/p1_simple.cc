/*
    نابجایی‌های ریچارد شیردل
*/

#include <iostream>
using std::cout;

int compare(int A[], int start, int middle, int end) {
    int count = 0;
    for (int i=start; i<middle; ++i) {
        for (int j=middle; j<end; ++j) {
            if (A[i] > A[j]) 
                ++count;
        }
    }
    return count;
}

void f(int A[], int start, int end, int& count) {
    if (end - start <= 1) return;

    int middle = (start + end)/2;
    f(A, start, middle, count);
    f(A, middle, end, count);
    count += compare(A, start, middle, end);
}

int f(int A[], int n) {
    int count = 0;
    f(A, 0, n, count);
    return count;
}

int main() {
    int n;
    std::cin >> n;

    int A[n];
    for (int i=0; i<n; ++i)
        std::cin >> A[i];

    cout << f(A, n) << std::endl;
    return 0;
}

/*
    aeirya mohammadi
*/
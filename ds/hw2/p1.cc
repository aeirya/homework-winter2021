/*
    نابجایی‌های ریچارد شیردل
*/

#include "iostream"

int main() {
    int n;
    std::cin >> n;

    int A[n];
    for (int i=0; i<n; ++i)
        std::cin >> A[i];
    
    long long counter =0;
    int temp;
    bool flag;
    for (int i=0; i<n; ++i) {
        flag = false;
        for (int j=1; j<n-i; ++j) {
            if (A[j-1]>A[j]) {
                temp = A[j-1];
                A[j-1] = A[j];
                A[j] = temp;
                ++counter;
                flag = true;
            }
        }
        if (!flag) break;
    }

    /// print array
    // for (int i=0; i<n; ++i) 
    //     std::cout << A[i] << " ";
    // std::cout << std::endl;

    std::cout << counter << std::endl;
}

/*
    aeirya mohammadi
    97103779
*/
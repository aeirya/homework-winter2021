/* 
مختصات اشتباه
*/

#include "iostream"

int main() {

    // get input
    int n;
    std::cin >> n;

    long int A[n];
    for (int i = 0; i < n; ++i) {
        std::cin >> A[i];
    }

    // algorithm
    for (int sublen = 2; sublen < n; ++sublen) {
        int sum = 0;
        int max = A[0];
        for (int i = 1; i < n - sublen;++i;) {
            if (A[i] > max) max = A[i];
        }
        sum += 
    }


    return 0;
}
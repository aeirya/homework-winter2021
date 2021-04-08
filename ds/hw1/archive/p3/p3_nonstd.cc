/*
    مشکل اصلی
*/

#include "iostream"

int* dif(int* A, int n) {
    int* B = new int[n];
    for (int i=0; i<n-1; ++i)
        B[i] = A[i+1] - A[i];
    B[n-1] = 0;
    return B;
}

int* cumulative(int* A, int n) {
    int* C = new int[n];
    C[0] = A[0];

    for (int i=1; i<n; ++i)
        C[i] = A[i] + C[i-1];
    return C;
}

int* ones(int n) {
    int* O = new int[n];
    for (int i=0; i<n; ++i) {
        O[i] = 1;
    }
    return O;
}

int* multiply(int x, int* A, int n) {
    int* M = new int[n];
    for (int i=1; i<n; ++i)
        M[i] = x * A[i];
    return M;
}

int* sum(int* A, int* B, int n) {
    int* S = new int[n];
    for (int i=1; i<n; ++i)
        S[i] = x + A[i];
    return S;
}

void print_array(int* A, int n, std::string name) {
    std::cout << name << ": ";
    for (int i = 0; i<n-1; ++i) {
        std::cout << A[i] << " ";
    }
    std::cout << A[n-1] << "\n";
}

int main() {
    // input
    int n;
    long long int m;
    std::cin >> n >> m;
    int A[n];
    for (int i=0; i<n; ++i) 
        std::cin >> A[i];

    // solve
    int* D = dif(A, n);
    int* C = cumulative(D, n);
    int* M = multiply(-1, C, n);
    int* S = sum(C + M;
    print_array(D, n, "D");
    print_array(C, n, "C");

    

}

/*
    aeirya mohammadi
    97103779
*/
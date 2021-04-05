/*
    مشکل اصلی
*/

#include "iostream"

void diff(long A[], int n) {
    for (int i=0; i<n-1; ++i)
        A[i] = A[i] - A[i+1];
}

void input(long A[], int n) {
    for (int i=0; i<n; ++i)
        std::cin >> A[i];
}

void print(long A[], int n) {
    for (int i=0; i<n; ++i) 
        std::cout << A[i] << " ";
    std::cout << std::endl;
}

void right_j(long A[], int n, long long m, int out[]) {
    diff(A, n);
    long long cost = 0;
    int j = 0;
    long long M = m;
    for (int i=0; i<n; ++i) {
        while (cost + A[j] <= M && j < n-1 && M >= 0) {
            cost += A[j];
            if (cost < 0) cost = 0;
            M -= cost;
            ++j;
        }
        out[i] = j;
        if (A[i] > 0) {
            cost -= A[i]; 
            if (cost < 0) cost = 0;
        }
        M = m - cost;
    }
    out[n-1] = n-1;
}

int solve(long A[], int n, int m) {
    int right[n];
    right_j(A, n, m, right);
    // print(right, n);
    int count = 0;
    for (int i=0; i<n; ++i) {
        count += (right[i] - i) + 1;
    }
    return count;
}

/*
    tests
*/

long* ex1(int &n, int &m) {
    n = 6;
    m = 6;
    return new long[n] {6, 5, 2, 2, 6, 6};
}

long* ex2(int &n, int &m) {
    n = 5;
    m = 3;
    return new long[n] {7, 6, 5, 4, 3};
}

int test() {
    int n, m;
    long *A = new long[n];
    A = ex2(n,m);
    std::cout << solve(A, n, m);
    return 0;
}

/*
    main
*/

int main() {
    // return test();

    int n;
    std::cin >> n;

    long long m;
    std::cin >> m;

    long A[n];
    input(A, n);
    
    int count = solve(A, n, m);
    std::cout << count << std::endl;
}

/*
    aeirya mohammadi
    97103779
*/
#include "list"
#include "vector"
#include "iostream"

class power {
    private:
    std::vector<long> A;

    public:

    long to(int n) {
        if (n==0) return 1;
        if (n>=A.size()) {
            A.resize(2*n, 0);
        }
        if (A[n] == 0) {
            auto x = to(n/2) * to(n/2);
            if (n%2) 
                A[n] = 2*x;
            else
                A[n] = x;
        }
        return A[n];
    }
};

void diff(int A[], int n) {
    for (int i=0; i<n-1; ++i)
        A[i] = A[i] - A[i+1];
}

void sum(int A[], int n, int x) {
    for (int i=0; i<n; ++i)
        A[i] += x;
}

void zeros(int A[], int n) {
    for (int i=0; i<n; ++i)
        A[i] = 0;
}

void input(int A[], int n) {
    for (int i=0; i<n; ++i)
        std::cin >> A[i];
}

void print(int A[], int n) {
    for (int i=0; i<n; ++i) 
        std::cout << A[i] << " ";
    std::cout << std::endl;
}

void right_j(int A[], int n, long long m, int out[]) {
    // print(A, n);
    diff(A, n);
    // print(A, n);
    long long cost = 0;
    int j = 0;
    long long M = m;
    for (int i=0; i<n; ++i) {
        while (cost + A[j] <= M && j<n && M >= 0) {
            cost += A[j];
            if (cost < 0) cost = 0;
            M -= cost;
            ++j;
        }
        if (j >= n) j = n-1;
        out[i] = j;
        if (A[i] > 0) {
            cost -= A[i]; 
            if (cost < 0) cost = 0;
        }
        M = m - cost;
    }
    out[n-1] = n-1;
}

int solve(int A[], int n, int m) {
    int right[n];
    right_j(A, n, m, right);
    // print(right, n);
    int count = 0;
    power p;
    for (int i=0; i<n; ++i) {
        count += (right[i] - i) + 1;
    }
    return count;
}

int* ex1(int &n, int &m) {
    n = 6;
    m = 6;
    return new int[n] {6, 5, 2, 2, 6, 6};
}

int* ex2(int &n, int &m) {
    n = 5;
    m = 3;
    return new int[n] {7, 6, 5, 4, 3};
}

int test() {
    int n, m;
    int *A = new int[n];
    A = ex2(n,m);
    std::cout << solve(A, n, m);
    return 0;
}

int main() {
    // return test();

    int n;
    std::cin >> n;

    long long m;
    std::cin >> m;

    int A[n];
    input(A, n);
    
    int count = solve(A, n, m);
    std::cout << count << std::endl;
}
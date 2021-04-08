#include "iostream"
#include "deque"

#define type long long

type* input(int &n, type &m) {
    std::cin >> n >> m;
    type *A = new type[n];
    for (int i=0; i<n; ++i)
        std::cin >> A[i];
    return A;
}

void print(int n, type* A) {
    for (int i=0; i<n; ++i)
        std::cout << A[i];
    std::cout << std::endl;
}

// template <typename T>
// inline T max(T a, T b) {
//     return a > b ? a : b;
// } 

void right_j(int n, type A[], type m, int right[]) {
    std::deque<int> maxq;
    type cost = 0;
    type rem = m;
    type max;
    int j = 0;
    for (int i=0; i<n; ++i) {
        if (maxq.back() < i)
            maxq.pop_back();
        max = maxq.back();

        while (cost < m) {
            cost += max - A[j];
            ++j;
        }

        while (A[maxq.front()] < A[i])
            maxq.pop_front();
        maxq.push_front(i);

    }
}

int main() {
    int n;
    type m;
    type *A = input(n, m);

    int right[n];
    right_j(n, A, m, right);
    
    return 0;
}
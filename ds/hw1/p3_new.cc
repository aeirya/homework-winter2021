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

template <typename T>
inline T max(T a, T b) {
    return a > b ? a : b;
} 



void right_j(int n, type A[], int m, int right[]) {
    type costs[n];
    int maxs[n];

    type M = A[0];
    type energy = m;
    type total_cost = 0;
    type cost = 0;
    for (int i=0; i<n; ++i) {
        M = max(M, A[i]);
        cost = M - A[i];
        energy -= cost;
        if (energy < 0) {
            right[0] = i;
            break;
        } else {
            total_cost += cost;
        }
    }
    costs[0] = total_cost;

    std::deque<int> deq;
    deq.push_front(0);
    for (int i=1; i<n; ++i) {
        // update max deque
        while (A[deq.front()] < A[i]) {
            deq.pop_front();
        }
        deq.push_front(i);
        if (deq.back() >)
    }
}

int main() {
    int n;
    type m;
    type *A = input(n, m);

    int right[n];
    right_j(n, A, m, right);
    
    std::cout << "HI";
    return 0;
}
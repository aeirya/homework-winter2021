/*
    مشکل اصلی
*/

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

// template <typename T>
// void print(int n, T* A) {
//     for (int i=0; i<n; ++i)
//         std::cout << A[i];
//     std::cout << std::endl;
// }

template <typename T>
inline T min(T a, T b) {
    return (a < b) ? a : b;
}

// template <typename T>
// inline T max(T a, T b) {
//     return a > b ? a : b;
// } 

void right_j(int n, type A[], type m, int right[]) {
    // queue with max on back
    std::deque<int> maxq;
    type cost = 0;
    type max;
    int j = 0;
    for (int i=0; i<n; ++i) {
        // if A[i] >= A[i].previous then the j and cost will be exactly the same
        if (i > 0 && A[i] >= A[i-1] && i<j) {
            right[i] = right[i-1];
            continue;
        }

        // revert cost (from previous iterations)
        // in the scope of i-1 to k, A[i-1] is the max
        // and since A[i] < A[i-1], we have diff = A[i] - A[i-1] < 0
        for (int k=i; k<j && A[k]<A[i-1]; ++k) {
            cost -= min(A[i-1]-A[k], A[i-1]-A[i]);
        }

        // drop items outside the window
        while (maxq.size() > 0 && maxq.back() < i)
            maxq.pop_back();

        while (j<n) {
            // update max queue
            while (maxq.size() > 0 && A[maxq.front()] < A[j])
                maxq.pop_front();
            maxq.push_front(j);
            // max: rightmost item in the queue
            max = A[maxq.back()];

            // update cost and increase j
            if (cost+max-A[j] <= m) {
                cost += max - A[j];
                ++j;
            } 
            else break;
        }
        // j: exclusive right bound
        right[i] = j;
    }
}

type solve(type A[], int n, type m) {
    int right[n];
    right_j(n, A, m, right);
    type count = 0;
    for (int i=0; i<n; ++i) {
        count += (right[i] - i);
    }
    return count;
}

type* ex1(int& n, type& m) {
    n = 6;
    m = 6;
    return new type[n] {6, 5, 2, 2, 6, 6};
}

type* ex2(int& n, type& m) {
    n = 5;
    m = 3;
    return new type[n] {7, 6, 5, 4, 3};
}

int main() {
    int n;
    type m;
    // type *A = ex2(n, m);
    type *A = input(n, m);
    std::cout << solve(A, n, m) << std::endl;
    return 0;
}

/*
    aeirya mohammadi
    97103779
*/
#include "stack"
#include "iostream"

#define N 105131359

void next_and_previous_greater_elements(int arr[], int n, int next[], int previous[]) {
    std::stack<int> s;
    // next
    for (int i = n-1; i>=0; --i) {
        while (!s.empty() && arr[s.top()] <= arr[i])
            s.pop();
        if(!s.empty())
            next[i] = s.top();
        else 
            next[i] = -1;
        s.push(i);
    }
    // empty stack
    while (!s.empty())
        s.pop();
    // previous
    for (int i = 0; i<n; ++i) {
        while (!s.empty() && arr[s.top()] < arr[i])
            s.pop();
        if(!s.empty())
            previous[i] = s.top();
        else 
            previous[i] = -1;
        s.push(i);
    }
    while (!s.empty())
        s.pop();
}

inline int f(int i, int previous, int next, int arr[]) {
    return ((next - i) * (i - previous) * arr[i]) % N;
}

int solve(int arr[], int nge[], int pge[], int n) {
    int sum = 0;
    int next, previous;
    for (int i=0; i<n; ++i) {
        next = (nge[i] >= 0) ? nge[i] : n;
        previous = pge[i];
        sum = (f(i, previous, next, arr) + sum) % N;
    }
    return sum;
}

int main() {
    int n;
    std::cin >> n;
    int* arr = new int[n];
    for (int i=0; i<n; ++i) 
        std::cin >> arr[i];
    int* nge = new int[n];
    int* pge = new int[n];
    next_and_previous_greater_elements(arr, n, nge, pge);
    std::cout << solve(arr, nge, pge, n) << std::endl;
    return 0;
}

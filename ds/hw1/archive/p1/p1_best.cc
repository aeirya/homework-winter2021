#include "stack"
#include "iostream"

#define N 105131359

void next_greater_elements(long arr[], int n, int next[]) {
    std::stack<int> s;
    for (int i = n-1; i>=0; --i) {
        while (!s.empty() && arr[s.top()] <= arr[i])
            s.pop();
        if(!s.empty())
            next[i] = s.top();
        else 
            next[i] = -1;
        s.push(i);
    }
}

void previous_greater_elements(long arr[], int n, int out[]) {
    std::stack<int> s;
    for (int i = 0; i<n; ++i) {
        while (!s.empty() && arr[s.top()] < arr[i])
            s.pop();
        if(!s.empty())
            out[i] = s.top();
        else 
            out[i] = -1;
        s.push(i);
    }
}

int solve(long arr[], int nge[], int pge[], int n) {
    long sum = 0;
    long next, previous;
    for (int i=0; i<n; ++i) {
        next = (nge[i] >= 0) ? nge[i] : n;
        previous = pge[i];
        sum = (sum + ((next - i) * (i - previous) * arr[i])%N)%N;
    }
    return sum;
}

void print(int a[], int n) {
    for (int i=0; i<n; ++i)
        std::cout << a[i] << " ";
    std::cout << std::endl;
}

void test() {
	long arr[] = { 11, 13, 21, 3 };
	int n = sizeof(arr) / sizeof(arr[0]);
}

int main() {
    int n;
    std::cin >> n;
    long* arr = new long[n];
    for (int i=0; i<n; ++i) 
        std::cin >> arr[i];

    int nge[n];
    next_greater_elements(arr, n, nge);

    int pge[n];
    previous_greater_elements(arr, n, pge);
    
    long sum = solve(arr, nge, pge, n);
    std::cout << sum << std::endl;

    return 0;
}

/* 
مختصات اشتباه
*/
#include "iostream"
#include "stack"

using namespace std;

void next_greater_elements(long arr[], int n, int next[]) {
    stack<int> s;
    // iterating from n-1 to 0
    for (int i = n - 1; i >= 0; i--) 
    {
        /*We will pop till we get the 
        greater element on top or stack gets empty*/
        while (!s.empty() && arr[s.top()] <= arr[i])
            s.pop();
  
        /*if stack gots empty means there 
        is no element on right which is greater 
        than the current element.
        if not empty then the next greater 
        element is on top of stack*/
        if (s.empty()) 
            next[i] = -1;         
        else 
            next[i] = s.top();        
  
        s.push(i);
    }
}

void previous_not_greater_elements(long arr[], int n, int prev[]) {
    stack<int> s;
    for (int i=0; i<n; ++i) {
        while (!s.empty() && arr[s.top()] > arr[i]) 
            s.pop();
        if (s.empty())
            prev[i] = -1;
        else
            prev[i] = s.top();
        s.push(i);
    }
}

int solve(long arr[], int nge[], int pnge[], int n) {
    long sum = 0;
    long next, previous, x;
    for (int i=0; i<n; ++i) {
        next = arr[nge[i]];
        previous = arr[pnge[i]];
        x = arr[i];
        sum += (next - i) * (i - previous) * x;
        sum %= 105131359;
    }
    return sum;
}

int main()
{
    int n;
    std::cin >> n;
    long* arr = new long[n];
    for (int i=0; i<n; ++i) 
        std::cin >> arr[i];

    int nge[n];
    next_greater_elements(arr, n, nge);

    int pnge[n];
    previous_not_greater_elements(arr, n, pnge);
    
    long sum = solve(arr, nge, pnge, n);
    std::cout << sum << std::endl;

    return 0;
}

/*
    aeirya mohammadi
    97103779
*/
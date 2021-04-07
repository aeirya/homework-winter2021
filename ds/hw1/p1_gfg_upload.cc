/*
	this is a code i found in the internet 
	and i have no intention of using this 
	as my final submission
*/

#define N 105131359

// C++ implementation of the approach
#include <iostream>
#include <stack>
using namespace std;

// Function to return the required sum
int findMaxSum(int arr[], int n)
{
	// Arrays for maintaining left and right count
	int* CL = new int[n];
    int* CR = new int[n];

	// Stack for storing the indexes
	stack<int> q;

	// Calculate left count for every index
	for (int i = 0; i < n; i++) {
		while (q.size() != 0 && arr[q.top()] <= arr[i]) {
			CL[i] += CL[q.top()] + 1;
			q.pop();
		}
		q.push(i);
	}

	// Clear the stack
	while (q.size() != 0)
		q.pop();

	// Calculate right count for every index
	for (int i = n - 1; i >= 0; i--) {
		while (q.size() != 0 && arr[q.top()] < arr[i]) {
			CR[i] += CR[q.top()] + 1;
			q.pop();
		}
		q.push(i);
	}

	// Clear the stack
	while (q.size() != 0)
		q.pop();

	// To store the required sum
	int ans = 0;

	// Calculate the final sum
    int z;
	for (int i = 0; i < n; i++)
		ans += ((((CL[i] + 1) * (CR[i] + 1)) % N) * arr[i])%N;

	return ans;
}

// Driver code
int main()
{
	// int arr[] = { 0, -1, 3, -2, 1, 2 };
	// int n = sizeof(arr) / sizeof(arr[0]);
	// cout << findMaxSum(arr, n);

	int n;
    std::cin >> n;
    int* arr = new int[n];
    for (int i=0; i<n; ++i) 
        std::cin >> arr[i];
	int sum = findMaxSum(arr, n);
	std::cout << sum << std::endl;
}
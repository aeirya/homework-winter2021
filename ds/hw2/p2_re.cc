/*
    زیررشته‌های حلقوی
*/

#include <iostream>
#include <algorithm>
#include <vector>

using std::cout;
using std::cin;
using std::sort;
using std::vector;

#define type long long

/*
    help functions
*/

template <typename T>
T inline min(T a, T b) {
    return a < b ? a : b;
}

template <typename T>
T inline max(T a, T b) {
    return a > b ? a : b;
}

template <typename T>
T inline abs(T a) {
    return a >= 0 ? a : -a;
}

/*
    returns list of groups
*/
void categorize(vector<type>& A, type& k, type lables[]) {
    type n = A.size();
    bool visited[n] = {false};
    type j;
    for (type i=0; i<k; ++i) {
        j = i;
        while (! visited[i]) {
            lables[j] = i;
            visited[j] = true;
            j = (j+k) % n;
        }
    }
}

/*
    returns median of a sorted list
*/
type median(vector<type>& sorted) {
    type n = sorted.size();
    type i = n/2;
    if (2*i != n)
        return sorted[i];
    else return (sorted[i-1] + sorted[i])/2;
}

/*
    returns minimum cost to make all items equal (and sorts the lists)
*/
template <typename T>
type eq_cost(vector<T>& list) {
    sort(list->begin(), list->end());
    type x = median(list);
    type cost = 0;
    for (auto& item : list) {
        cost += abs(item-x); 
    }
    return cost;
}

type solve(vector<type> &A, type k) {
    type n = A.size();
    type cost = 0;
    type j;
    auto *list = new vector<type>();
    vector<vector<type>> lists;
    

    for (type i=0; i<k; ++i) {
        j = i;
        for (type j=i; j<n; j+=k)
            list->push_back(A[j]);
        cost += eq_cost(*list);  
        list->clear();
    }
    delete list;
    return cost;
}

int test();

int main() {
    // return test();
    type n,k;
    cin >> n >> k;

    vector<type> A(n);
    for (type i=0; i<n; ++i) {
        cin >> A[i];
    }

    // cout << solve(A, k) << std::endl; 
    return 0;
}
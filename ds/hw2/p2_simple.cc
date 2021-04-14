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
    the number of classes
*/
int calc_k(int n, int k) {
    int m = min(n-k, k);
    int M = max(n-k, k);
    if (M-m) return min(min(M-m, m), k);
    return m;
}

/*
    returns list of list of indices
*/
vector<vector<int>> categorize(int n, int k) {
    k = calc_k(n, k);
    vector<vector<int>> groups;
    int j;
    for (int i=0; i<k; ++i) {
        vector<int> g;
        j = i;
        do {
            g.push_back(j);
            j = (j+k) % n;
        } while (j != i);
        groups.push_back(g);
    }
    return groups;
}

template <typename T>
void print(vector<T> list) {
    for (auto& item : list) {
        std::cout << item << " ";
    }
    std::cout << "\n";
}

void printGroups(vector<vector<int>> groups) {
    for (auto& group : groups) {
        for (auto& item : group) {
            std::cout << item << " ";
        }
        std::cout << "\n";
    }
}

void rc() {
    std::cout << "checkpoint" << std::endl;
}

/*
    returns median of a sorted list
*/
int median(vector<int> sorted) {
    int n = sorted.size();
    int i = n/2;
    if (2*i != n)
        return sorted[i];
    else return (sorted[i-1] + sorted[i])/2;
}

/*
    returns items in the list corresponding to the indicees
*/
template <typename T>
vector<T> select(vector<T>& list, vector<int>& indices) {
    vector<T> sel;
    for (int i : indices) {
        sel.push_back(list[i]);
    }
    return sel;
}

/*
    returns minimum cost to make all items equal
*/
template <typename T>
type equalize_cost(vector<T>& list) {
    int x = median(list);
    type cost = 0;
    for (auto& item : list) {
        cost += abs(item-x); 
    }
    return cost;
}

type solve(vector<int> A, int k) {
    auto groups = categorize(A.size(), k);;
    type cost = 0;
    for (int n=groups.size()-1; n>=0;--n) {
        auto& group = groups[n];
        auto list = select(A, group);
        sort(list.begin(), list.end());
        cost += equalize_cost(list);   
        groups.pop_back();
    }
    return cost;
}

int main() {
    int n,k;
    cin >> n >> k;

    vector<int> A(n);
    for (int i=0; i<n; ++i) {
        cin >> A[i];
    }

    cout << solve(A, k) << std::endl; 
}

/*
    aeirya mohammadi
*/
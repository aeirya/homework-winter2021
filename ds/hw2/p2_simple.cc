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
type calc_k(type n, type k) {
    if (n%k == 0) return k;
    type a = n,
         b = k,
         d = n - k;

    while (d > 2) {
        d = a - b;
        type t = b;
        b = min(b,d);
        a = t;
    }
    if (d == 0) return k;
    else return d;
}

#pragma region not_used

/*
    returns list of groups
*/
void categorize(vector<type>& A, type& k, type lables[]) {
    type n = A.size();
    k = calc_k(n, k);
    type j;
    for (type i=0; i<k; ++i) {
        j = i;
        do {
            lables[j] = i;
            j = (j+k) % n;
        } while (j != i);
    }
}

template <typename T>
void print(vector<T> list) {
    for (auto& item : list) {
        std::cout << item << " ";
    }
    std::cout << "\n";
}

void printGroups(vector<vector<type>> groups) {
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
    returns items in the list corresponding to the indicees
*/
template <typename T>
vector<T> select(vector<T>& list, vector<type>& indices) {
    vector<T> sel;
    for (type i : indices) {
        sel.push_back(list[i]);
    }
    return sel;
}

#pragma endregion not_used

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
    returns minimum cost to make all items equal
*/
template <typename T>
type equalize_cost(vector<T>& list) {
    type x = median(list);
    type cost = 0;
    for (auto& item : list) {
        cost += abs(item-x); 
    }
    return cost;
}

type solve(vector<type> &A, type k) {
    type n = A.size();
    k = calc_k(n,k);
    type cost = 0;
    type j;
    auto *list = new vector<type>();
    for (type i=0; i<k; ++i) {
        j = i;
        for (type j=i; j<n; j+=k)
            list->push_back(A[j]);
        sort(list->begin(), list->end());
        cost += equalize_cost(*list);  
        list->clear();
    }
    delete list;
    return cost;
}

int test();

int main() {
    return test();
    type n,k;
    cin >> n >> k;

    vector<type> A(n);
    for (type i=0; i<n; ++i) {
        cin >> A[i];
    }

    cout << solve(A, k) << std::endl; 
}

int test() {
    type A[] = {1,2,3,0};
    int n = 5;
    vector<type> V(A, A+n);
    sort(V.begin(), V.end());
    std::cout << median(V);
    return 0;
}

/*
    aeirya mohammadi
*/
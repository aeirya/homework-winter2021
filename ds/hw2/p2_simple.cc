/*
    this is just a fast simple test and i have no 
    intention of using this a final result
*/

#include <iostream>
#include <algorithm>
#include <vector>

// using std::cout;
// using std::sort;
using std::vector;

// using vint = vector<int>;

// returns index of the median member
int median() {
    return 0;
}

template <typename T>
int inline min(T a, T b) {
    return a < b ? a : b;
}

int solve(vector<int> A, int k) {
    for (auto& item : A) {
        std::cout << item;
    }
    std::cout << "\n";

    k = min(k, (int)A.size()-k);

    vector<vector<int>> groups;
    int j;
    for (int i=0; i<k; ++i) {
        vector<int> g;
        j = i;
        do {
            g.push_back(j);
            j = (j+k) % A.size();
        } while (j != 0);
        groups.push_back(g);
    }

    for (auto& group : groups) {
        for (auto& item : group) {
            std::cout << item << " ";
        }
        std::cout << "\n";
    }
}

int main() {
    std::cout << "HI\n";
    int A[] = {3,2,4,1};
    int n = 4;
    // std::sort(A, A+4);
    // std::vector<int> vec(A, A+n);
    // std::sort(vec.begin(), vec.end());

    // for (int i=0; i<4; ++i)
        // std::cout << A[i];
    
    int k;
    solve(vector<int>(A, A+n), 2);
    
}


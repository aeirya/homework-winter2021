#include <iostream>
#include <algorithm>

using std::cin;
using std::cout;
using std::endl;
using std::sort;

// int binary_seach(int A[], int n, int x) {

// }

int inline min(int x, int y) {
    return x < y ? x : y;
}

int solve(int n, int m, int a, int b, int S[]) {
    int time = b-a-1;
    sort(S, S+m);
    int i=min(m-1, time);
    int count = 0;
    while (i >= 0 && time > 0) {
        if (S[i] < time + a) {
            ++count;
            --time;
        }
        --i;
    }

    return count;
}

int main() {
    int t;
    cin >> t;
    // array to hold results
    int A[t];

    for (int j=0; j<t; ++j) {
        // input state
        int n, m, a, b;
        cin >> n >> m >> a >> b;

        // input times
        int S[m];
        for (int i=0; i<m; ++i) {
            cin >> S[i];
        }
        // solve
        A[j] = solve(n, m, a, b, S);
    }

    for (int j=0; j<t; ++j) {
        cout << A[j] << endl;
    }
}
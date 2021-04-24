/*
    سرباز آتش‌انداز عرب
*/

#include <iostream>
#include <stdio.h>
#include <algorithm>
#include <vector>

using std::cin;
using std::cout;
using std::endl;
using std::sort;
using std::vector;

#define type long long

// int binary_seach(int A[], int n, int x) {

// }

template <typename T>
T inline abs(T x) {
    return x < 0 ? -x : x;
}

template <typename T>
T inline min(T x, T y) {
    return x < y ? x : y;
}

template <typename T>
T solve(T n, T m, T a, T b, T S[]) {
    T time = abs(b-a)-1;
    T i = min(m-1, time);
    sort(S, S+m);
    T count = 0;
    T timeToRun = a < b ? a-1 : n-a;
    while (i >= 0 && time > 0) {
        // cout << "time " << time
        //     << "time to run " << timeToRun 
        //     << "S[i] " << S[i] << endl;
        if (S[i] <= time + timeToRun) {
            ++count;
            --time;
        }
        --i;
    }
    return count;
}

int main() {
    type t;
    cin >> t;
    // array to hold results
    type A[t];

    for (type j=0; j<t; ++j) {
        // input state
        type n, m, a, b;
        // cin >> n >> m >> a >> b;
        scanf("%lld %lld %lld %lld", &n, &m, &a, &b);

        // input times
        type time = a<b? b-1 : n-b-1;
        vector<type> S;
        type x;
        for (type i=0; i<m; ++i) {
            scanf("%lld", &x);
            // cin >> x;
            if (x <= time) {
                S.push_back(x);
                if (x == time) {
                    time -= 1;
                }
            }
        }
        // solve
        A[j] = solve(n, (type)S.size(), a, b, S.data());
    }

    for (type j=0; j<t; ++j) {
        printf("%lld\n", A[j]);
        // cout << A[j] << endl;
    }
}

/*
    aeirya mohammadi
*/
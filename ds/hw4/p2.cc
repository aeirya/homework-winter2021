#include <iostream>
#include <list>
#include <string>

using std::cin;
using std::cout;
using std::endl;
using std::list;
using std::string;
using std::to_string;

#define type long long

void kmp_preprocess(const string& pattern, int f[]) {
    int n, i, j;
    n = pattern.length();
    i = 1;
    j = 0;  // lps len so far
    f[0] = 0;
    while (i<n) {
        if (pattern[i] == pattern[j])
            f[i++] = ++j;
        else if (j)
            j = f[j-1];
        else f[i++] = 0;
    }
}

int type_A(const string& M, const int lm, const type n, const int ln) {
    int f[lm];
    kmp_preprocess(M, f);

    // find right-most 1
    int i;
    for (i=lm-1; i>=0 && f[i]!=1; --i);

    // fight proper start points
    list<int> A;
    for (int j=i; j<lm; ++j) {
        bool flag = true;
        for (int k=j; k<lm; ++k) {
            if (M[k] == M[k-j]) {
                flag = false;
                break;
            }
        }
        if (flag)
            A.push_back(j);
    }

    // calc frequency 
    int a;
    int count = 0;
    for (int j : A) {
        a = lm-j;   // chars to append 
        count += (ln - lm) / a;
    }
    return count;
}

/*
    we could fill the space between two Ms with as many digits
*/
int type_B(const int ln, const int lm) {
    int X = ln - 2*lm;
    int i, sum, t;
    for (i=0, sum=0, t=10; i<X; ++i) {
        sum+= t;
        t*= 10;
    }
    return sum;
}

/*
    only words < N in the boundary
*/
int type_C(const type N, const int M, const int ln, const int lm) {
    // first lm digits of N
    const type A = N / (ln-lm);
    if (A < M) return 0;
    
    // rest ln-lm digits of of N
    const type B = N / lm - A * 10^(ln-2*lm);
    if (B < M) return 0;
    
    // middle ln-2.lm digits of N
    const type C = B / (10^lm);
 
    // last lm digits of N
    const type D = B % (10^lm);
    
    type x = (D<M)?1:0;
    return C+1-x;
}

int main() 
{
    type N, M;
    cin >> N;
    cin >> M;

    string n, m;
    n = to_string(N);
    m = to_string(M);

    int ln = n.length(),
        lm = m.length(); 
    
    int result = type_A(m, lm, N, ln) + type_B(ln, lm) + type_C(N, M, ln, lm);
    cout << result << endl;
}

/*
    let n be 'size' of a number,
    |N| be size of max number N,
    |M| be size of the pattern M,
    eihter:
    1: |M| < n < 2|M|   | Mw
    2: 2|M| <= n < |N|  | MwM
    3: n = |N|          | MwM
*/
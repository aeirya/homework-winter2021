#include <iostream>
#include <list>
#include <string>

using std::cin;
using std::cout;
using std::list;
using std::string;
using std::to_string;

void kmp_preprocess(const string& pattern, int out[]) {
    out[0] = 0;
    int i=0,    // head index
        j = 1;  // moving index
    if (pattern[i] == pattern[j]) {
        out[j] = out[j-1] + 1;
    } else {
        
    }
}

void kmp(const string& pattern, const string& text, list<int>& matches) {
    int i = 1, // index on the pattern
        j = 0; // index on the text
    int plen = pattern.length();
    int f[plen];
    if (

}

int type_A(const string& M) {
    list<int> matches;
    kmp(M, M, matches);
    
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
int type_C(const int N, const int M, const int ln, const int lm) {
    // first lm digits of N
    const int A = N / (ln-lm);
    if (A < M) return 0;
    
    // rest ln-lm digits of of N
    const int B = N / lm - A * 10^(ln-2*lm);
    if (B < M) return 0;
    
    // middle ln-2.lm digits of N
    const int C = B / (10^lm);
 
    // last lm digits of N
    const int D = B % (10^lm);
    
    int x = (D<M)?1:0;
    return C+1-x;
}

int main() 
{
    int N, M;
    cin >> N;
    cin >> M;

    string n, m;
    n = to_string(N);
    m = to_string(M);

    int ln = n.length(),
        lm = m.length(); 
    
    int result = type_B(ln, lm) + type_C(N, M, ln, lm);
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
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
#define MOD 1000000007

/* returns x mod MOD */
inline type mod(type x)
{
    return x % MOD;
}

type string_to_number(const string& str)
{
    type
        len = str.length(),
        i = len - 1,
        t = 1,
        n = 0;
        
    while (i>=0) {
        n += t * (int)(str[i]-48);
        t *= 10;
        --i;
    }
    return n;
}

/* returns n rightmost chars of str */
string right_cut(const string& str, type n)
{
    return str.substr(str.length()-n, n);
}

/* returns n leftmost chars of str */
string left_cut(const string& str, type n) 
{
    return str.substr(0, n);
}

inline type min(type a, type b) {
    return a<b ? a:b;
}

inline type mod(string str)
{
    return mod(string_to_number(right_cut(str, min(10, str.length()))));
}

/* returns 1 if bigger, 0 if equal, -1 if n is smaller */
int compare_big_nums(const string& n, const string& m) {
    type
        nl = n.length(),
        ml = m.length();
    if (nl < ml) return -1;
    if (nl > ml) return 1;
    return n.compare(m);
}

void kmp_preprocess(const string& pattern, type f[]) {
    type n, i, j;
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

int type_A(const string& M, const type lm, const type ln) {
    if (lm == 1) return 0;
    
    type f[lm];
    kmp_preprocess(M, f);

    // find right-most 1
    type i;
    for (i=lm-1; i>1 && f[i]!=1; --i); //

    // fight proper start points
    list<type> A;
    type j,k;
    for (j=i; j<lm; ++j) {
        bool flag = true;
        for (k=j; k<lm; ++k) {
            if (M[k] != M[k-j]) {
                flag = false;
                break;
            }
        }
        if (flag)
            A.push_back(j);
    }

    // calc frequency 
    type a;
    type count = 0;
    for (type j : A) {
        a = lm-j;   // chars to append 
        count += (2*lm - lm - 1) / a;
    }
    return count;
}

/*
    we could fill the space between two Ms with as many digits
*/
type type_B(const type ln, const type lm) {
    type X = ln - 2*lm;
    type i, sum, t;
    for (i=0, sum=0, t=1; i<X; ++i) {
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
    const type A = N / (10^(ln-lm));
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

type new_type_C(const string& n, const string& m, const type ln, const type lm) {
    // check for n > m
    if (compare_big_nums(n, m) <= 0) return 0;
    // check for bigger prefix
    if (compare_big_nums(left_cut(n, lm), m) < 0) return 0;
    
    // check for enough suffix
    if (ln-lm < lm) return 0;

    // pushing ONE more case :p
    int x = right_cut(n, lm).compare(m)<0 ? 1:0;
    return mod(n.substr(lm, ln-2*lm))+(1-x);
}

/* M is an asnwer */
int type_Z(const string& n, const string& m) {
    int x = 0;
    if (compare_big_nums(m,n) < 0) ++x;
    // if (2*lm < ln) ++x;
    return x;
}

/*
    n:  text            : string
    m:  pattern         : string
    ln: text length     : long long
    lm: pattern length  : long long
*/

int main() 
{
    // return test();

    string n, m;
    // n = "22";
    // m = "2";
    cin >> n;
    cin >> m;

    type 
        ln = n.length(),
        lm = m.length(); 
    
    type result = 
        type_Z(n, m)
        + type_A(m, lm, ln) 
        + type_B(ln, lm) 
        + new_type_C(n, m, ln, lm)
        ;
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

 
// test
// N = 100000000000;
// M = 2323;

// test 2
// N = 22;
// M = 2;
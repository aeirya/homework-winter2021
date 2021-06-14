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

inline type old_mod(string str)
{
    return mod(string_to_number(right_cut(str, min(10, str.length()))));
}

type mod(string str) 
{
    type
        result = 0,
        len = str.length(),
        i;
    for (i =0; i<len; ++i)
        result = mod(result * 10 + (int)(str[i] - '0'));
    return result;
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

    type count = 0;
    for (type j : A) {
        if (j-1+lm <= ln) ++count;
        else break;
    }
    return mod(count);
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

type new_type_B(const type ln, const type lm) {
    type X = ln - 2*lm;
    if (X <= 0) return 0;
    
    char str[X];
    for (type i=0; i<X; ++i)
        str[i] = '1';
    cout << "string is: " << string(str) << endl;
    return mod(string(str));
}

type newest_type_B(const type ln, const type lm) {
    type X = ln - 2*lm;
    if (X <= 0) return 0;
    
    string str = "";
    for (type i=0; i<X; ++i)
        str += "1";

    return mod(string(str));
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

string pow10(type n) {
    string result= "1";
    int x = 0;
    while (x<n) {
        ++x;
        result += "0"; 
    }
    return result;
}

type new_type_C(const string& n, const string& m, const type ln, const type lm) {
    // check for n > m
    if (compare_big_nums(n, m) <= 0) return 0;
    // check for bigger prefix
    int left_cmp = compare_big_nums(left_cut(n, lm), m);
    if (left_cmp < 0) return 0;
    
    // check for enough suffix
    if (ln-lm < lm) return 0;

    // pushing ONE more case :p
    if (left_cmp == 0) {
        int x = right_cut(n, lm).compare(m)<0 ? 1:0;
        return mod(n.substr(lm, ln-2*lm))+(1-x);
    } 
    return mod(pow10(ln-2*lm));
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
    // cout << mod("2431111111111111111111111111243") << endl;
    // return 0;

    string n, m;
    // n = "22";
    // m = "2";
    // n = "1111111111";
    // m = "1";

    cin >> n;
    cin >> m;

    type 
        ln = n.length(),
        lm = m.length(); 
    
    type result = 
        type_Z(n, m)
        + type_A(m, lm, ln) 
        + newest_type_B(ln, lm) 
        + new_type_C(n, m, ln, lm)
        ;
    
    // cout << "A:" << type_A(m, lm, ln) << endl;
    // cout << "B:" << newest_type_B(ln, lm) << endl;
    // cout << "C:" << new_type_C(n, m, ln, lm) << endl;
    // cout << "D:" << type_Z(n, m) << endl;

    cout << mod(result) << endl;
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
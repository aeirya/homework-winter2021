#include <iostream>
#include <string>
#include <list>

using std::cin;
using std::cout;
using std::string;
using std::list;

void calc_f(const string& pattern, int f[]) {
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

list<int>* kmp(const string& text, const string& pattern) {
    list<int>* matches = new list<int>();

    int pn = pattern.length(),
        tn = text.length(),
        f[pn],
        i = 0,  // text
        j = 0;  // pattern
    calc_f(pattern, f);
    while (true) {
        if (text[i] == pattern[j]) {
            ++i;
            ++j;
        } 
        if (j == pn) { // found match at i-pn
            matches->push_back(i-pn);
            j = f[j-1];
        }
        if (i == tn) break;
        if (text[i] != pattern[j]) {
            if (j) 
                j = f[j-1];
            else ++i;
        }
    }
    return matches;
}

// list<int>* pseudo_kmp(const string& pattern) {
//     list<int>* matches = new list<int>();
//     int n = pattern.length();
//     int f[n];
//     calc_f(pattern, f);
//     int i = f[n-1];
//     while (i>0) {
//         matches
//         i = f[i-1];
//     }
//     return matches;
// }

int main() {
    string text, pattern;
    cin >> text;
    cin >> pattern;
    auto *matches = kmp(text, pattern);
    for (int x : *matches) {
        cout << x << std::endl;
    }
    return 0;
}
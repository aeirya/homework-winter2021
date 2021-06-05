#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::string;

void calc_f(const string& pattern, int f[]) {
    int n, i;
    n = pattern.length();
    for (i=0; i<n; ++i) {
        
    }
}

int kmp(const string& text, const string& pattern) {
    int pn = pattern.length();
    int f[pn];
    calc_f(pattern, f);
}

int main() {
    string text, pattern;
    cin >> text;
    cin >> pattern;
    cout << kmp(text, pattern);
    return 0;
}
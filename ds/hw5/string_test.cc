#include <iostream>
using std::cin;
using std::cout;
using std::endl;

using std::string;

void func(string& f) {
    f[0] = 'a';
}

void func2(string* f) {
    f[0] = 'b';
}

int main() {
    string s = "HI";
    func2(s);
    cout << s << endl;
}
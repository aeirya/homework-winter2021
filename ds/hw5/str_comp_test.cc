#include <iostream>
using std::cin;
using std::cout;
using std::endl;

#include <list>
using std::list;

#include <vector>
using std::vector;

using std::string;

int main() {
    string a = "hello",
            b = "hello",
            c = "hi";

    cout << a.compare(b) << endl << a.compare(c) << endl << a == b;
}
#include <iostream>
using std::cin;
using std::cout;
using std::endl;

#include <list>
using std::list;

#include <vector>
using std::vector;

struct A {
    int x, y, z;
};

struct B {
    int u, v;
};

int main() {
    A* a = new A {1,2,3};
    cout << a->z << ": A " << endl;
    B* b = (B*)a;
    cout << b->u << " " << b->v << endl;
}
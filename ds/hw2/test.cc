#include <iostream>
#include <vector>

using namespace std;

class A {
    private:
    int _x;

    public:
    A() : _x(0) { }

    int x() {
        return _x;
    }
};

class B {
    int x;
    int y;

    public:
    B(int _x, int _y) : x(_x), y(_y) {}
    B() : x(0), y(0) {}

    void print() {
        std::cout << x << y << std::endl;
    }
};

int main() {
    B A[2];

    A[0] = B(0,1);
    A[1] = B(2,2);

    B temp = A[0];
    A[0] = A[1];
    A[1] = temp;

    A[0].print();
    A[1].print();
    return 0;
}

// int main() {
//     vector<int> v(10);
//     v.push_back(0);
//     v.push_back(2);
//     v.push_back(1);
//     v.resize()
//     // v.shrink_to_fit();
//     for (int i=0; i<v.size(); ++i) {
//         cout << v[i];
//     }
//     cout << endl;
//     return 0;
// }
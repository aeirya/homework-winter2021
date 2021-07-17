#include <iostream>
using std::cin;
using std::cout;
using std::endl;

#include <list>
using std::list;

#include <vector>
using std::vector;

int main() {
    cout << "HI";
    vector<list<int> > A;
    A.resize(5);
    
    // cout << "HI";
    // A[1] = list<int>();
    // cout << "HI";
    A[4].push_back(1);
    return 0;
}
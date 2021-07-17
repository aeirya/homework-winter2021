#include <iostream>
using std::cin;
using std::cout;
using std::endl;

#include <list>
using std::list;


int main() {
    list<int> A;
    A.push_back(1);
    A.push_back(3);
    A.push_back(2);
    A.remove(2);
    for (int x : A) 
        cout << x << endl;
}
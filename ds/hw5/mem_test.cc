#include <iostream>

using std::cin;
using std::cout;
using std::endl;

int main()
{
    int A[10];
    intB = new int[10];

    for (int i=0; i<10; ++i)
        cout << A[i];
    cout << endl;
    for (int i=0; i<10; ++i)
        cout << B[i];
    cout << endl;
    delete[] B;
    for (int i=0; i<10; ++i)
        cout << B[i];
}
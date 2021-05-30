#include <iostream>
using std::cout;

/*
    2D int array
*/
int main()
{
    int n = 5;
    int** people = new int*[n];
    for (int i=0; i<n; ++i)
        people[i] = new int[4];
    people[4][3] = 2;
    cout << people[4][3];
    return 0;
}
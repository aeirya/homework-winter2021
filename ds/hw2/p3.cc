/*
    دم و یال
*/

#include "iostream"

#define type long long

class lion {
    private:
    type tail, mane;

    public:

    lion(type _tail, type _mane) : tail(_tail), mane(_mane) {}

    void red() {
        mane *= 2;
    }
    
    void blue() {
        tail = mane;
    }

};

int main() {
    int n,  // # of lions
        a,  // blue pills (tail = mane)
        b;  // red pills (2x mane)
    std::cin >> n >> a >> b;

    type A[n][2];
    for (int i=0; i<n; ++i)
        for (int j=0; j<2; ++j)
            std::cin >> A[i][j];


}
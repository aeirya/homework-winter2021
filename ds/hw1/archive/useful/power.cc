#include "vector"

class power {
    private:
    std::vector<long> A;

    public:

    long to(int n) {
        if (n==0) return 1;
        if (n>=A.size()) {
            A.resize(2*n, 0);
        }
        if (A[n] == 0) {
            auto x = to(n/2) * to(n/2);
            if (n%2) 
                A[n] = 2*x;
            else
                A[n] = x;
        }
        return A[n];
    }
};
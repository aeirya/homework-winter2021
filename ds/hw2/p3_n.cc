/*
    دم و یال
*/

#include <iostream>
#include <algorithm>
#include <vector>

#define type long long

#include "vector"

/* 
    used for calculating 2^x
*/
class power {
    private:
    std::vector<type> A;

    public:
    type to(int n) {
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

template <typename T>
T inline max(T a, T b) {
    return a > b ? a : b;
}

class lion {
    private:
    type tail, mane;
    type _value;

    void update_value() {
        _value = mane - tail;
    }

    public:

    lion() : tail(0), mane(0) {} 
    lion(type _tail, type _mane) : tail(_tail), mane(_mane) {
        update_value();
    }

    void red() {
        mane *= 2;
        update_value();
    }
    
    void blue() {
        tail = mane;
        update_value();
    }

    type value() const {
        return _value;
    }

    type get_tail() const {
        return tail;
    }

    type get_mane() const {
        return mane;
    }

    bool operator< (const lion &other) const {
        return this->value() < other.value();
    }

    type bet(type mult) const {
        return (mane * mult - tail) - max(value(), (type) 0);
    }

    void feed(type mult) {
        mane = mane * mult;
        update_value();
    }

    void print() {
        std::cout << "mane: " << mane << " tail: " << tail << std::endl;
    }
};

type f(lion A[], int i, int least_good, type inc) {
    type m = A[i].get_mane(),
         t = A[i].get_tail();
    type X = inc * m - t;

    if (i >= least_good)
        return X - A[i].value();
    else 
        return X - A[least_good].value(); 
} 

int main() {
    type n,  // # of lions
        a,  // blue pills (tail = mane)
        b;  // red pills (2x mane)
    std::cin >> n >> a >> b;

    lion A[n];
    type mane, tail;
    for (type i=0; i<n; ++i) {
        std::cin >> mane >> tail;
        A[i] = lion(tail, mane);
    }

    // give lions blue pills
    std::sort(A, A+n);
    type i=n-1;
    for (; i>=0, a>=0, A[i].value()>0; --i, --a) {
        A[i].blue();
    }

    // calc increase mult
    type x = power().to(b);
    
    // find red pill candidate
    type least_good = ++i;
    type best = 0;  // best lion index
    type last = f(A, 0, least_good, x);
    type y;
    for (type i=1; i<n; ++i) {
        y = f(A, i, least_good, x);
        if (y > last)
            best = i;
    }

    // gain from eating the red pill
    type profit = last;

    // calc sum of tails
    type sum_tail = 0;
    for (type i=0; i<n; ++i) {
        sum_tail += A[i].get_tail();
    }

    // print result
    std::cout << sum_tail+profit << std::endl;
}

/*
    aeirya mohammadi
*/
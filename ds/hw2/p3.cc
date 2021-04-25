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

    friend type to(int n) {
        power p;
        return p.to(n);
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

    // std::string to_string() {
        
    //     return "mane: " + (std::string) mane + " tail: " + (std::string) tail;
    // }

    void print() {
        std::cout << "mane: " << mane << " tail: " << tail << std::endl;
    }
};

int main() {
    type n,  // # of lions
        a,  // blue pills (tail = mane)
        b;  // red pills (2x mane)
    std::cin >> n >> b >> a;

    // type A[n][2];
    // for (int i=0; i<n; ++i)
    //     for (int j=0; j<2; ++j)
    //         std::cin >> A[i][j];

    lion A[n];
    type mane, tail;
    for (type i=0; i<n; ++i) {
        std::cin >> mane >> tail;
        A[i] = lion(tail, mane);
    }

    // calc increase mult
    type x = power().to(b);

    // find best lion
    type best = 0;
    type current, last;
    last = A[0].bet(x);
    for (type i=1; i<n; ++i) {
        current = A[i].bet(x);
        if (current > last) {
            last = current;
            best =  i;
        }
    }
    
    // feed best lion
    lion& bestLion = A[best];
    bestLion.feed(x);
    
    // feed all reds to the best lion
    // for (type i=0; i<b; ++i) {
    //     best.red();
    // }
    // std::cout << "before\n";
    // best.print();
    // best.feed(x);
    // std::cout << "after\n";
    // best.print();

    // std::cout << best.value() << std::endl;

    // sort all
    std::sort(A, A+n);
    // feed all blues, starting from the best
    for (type i=n-1; i>=0; --i) {
        if (a <= 0) break;

        // std::cout << A[i].value() << std::endl;
        if (A[i].value() > 0) {
            // std::cout << "before\n";
            // A[i].print();
            A[i].blue();
            // std::cout << "after\n";
            // A[i].print();

            --a;
        }
        else break;
    }

    // sum up tails
    type sum = 0;
    for (type i=0; i<n; ++i) {
        // A[i].print();
        // std::cout << A[i].get_tail() << std::endl;
        sum += A[i].get_tail();
    }

    // print result
    std::cout << sum << std::endl;
}

/*
    aeirya mohammadi
*/
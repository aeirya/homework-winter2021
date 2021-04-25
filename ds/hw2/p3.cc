/*
    دم و یال
*/

#include <iostream>
#include <algorithm>

#define type long long

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

    // std::string to_string() {
        
    //     return "mane: " + (std::string) mane + " tail: " + (std::string) tail;
    // }
};

int main() {
    type n,  // # of lions
        a,  // blue pills (tail = mane)
        b;  // red pills (2x mane)
    std::cin >> n >> a >> b;

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

    std::sort(A, A+n);

    // prints values
    // for (int i=0; i<n; ++i) {
    //     std::cout << A[i].value() << std::endl;
    // }

    // feed all reds to the best lion
    lion& best = A[n-1];
    for (type i=0; i<b; ++i) {
        best.red();
    }

    // feed all blues, starting from the best
    for (type i=n-1; i>=0; --i) {
        if (A[i].value() > 0)
            A[i].blue();
        else break;
    }

    // sum up tails
    type sum = 0;
    for (type i=0; i<n; ++i) {
        sum += A[i].get_tail();
    }

    // print result
    std::cout << sum << std::endl;
}

/*
    aeirya mohammadi
*/
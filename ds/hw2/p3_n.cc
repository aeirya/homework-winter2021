/*
    دم و یال
*/

#include <iostream>
#include <algorithm>
#include <vector>

#define type long long

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

/*
    n : len(A)
    a : number of blue pills

    sorts lions,
    distributes blue pills,
    returns index of last chosen
*/
type give_blue_pills(lion A[], type n, type a) {
    std::sort(A, A+n);
    type i=n-1;
    for (; i>=0, a>=0, A[i].value()>0; --i, --a) {
        A[i].blue();
    }
    return --i;
}

/*
    n : len(A)
    b : number of red pills

    returns profit gained by giving all red pills to the chosen lion
    XXXXXXreturns index of chosen lion
*/
type give_red_pills(lion A[], type n, type b, type least_good) {
    type x = power().to(b); // calc increase mult
    
    type best = 0;  // best lion index so far
    type last = f(A, 0, least_good, x);
    type y;
    for (type i=1; i<n; ++i) {
        y = f(A, i, least_good, x);
        if (y > last) {
            best = i;
            last = y;
        }
    }
    return last;
}

int main() {
    std::ios_base::sync_with_stdio(false);
    std::cin.tie();
    std::cout.tie();

    type n,  // # of lions
         a,  // red pills (2x mane)
         b;  // blue pills (tail = mane)
    
    // get input
    std::cin >> n >> a >> b;
    
    lion A[n];
    type mane, tail;
    for (type i=0; i<n; ++i) {
        std::cin >> mane >> tail;
        A[i] = lion(tail, mane);
    }

    // the lion index with least value
    type least_good = give_blue_pills(A, n, b);    

    // gain from eating the red pill
    type profit = give_red_pills(A, n, a, least_good);

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
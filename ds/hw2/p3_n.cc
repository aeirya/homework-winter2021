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

/*
    other util
*/
// template <typename T>
// void inline swap(T& a, T& b) {
//     T temp = a;
//     a = b;
//     b = temp;
// }

template <typename T>
T inline max(T a, T b) {
    return a > b ? a : b;
}

/*
    data class for lion
*/
class lion {
    private:
    type tail, mane;
    type _value;

    public:
    lion() : tail(0), mane(0) {} 
    lion(type _tail, type _mane) : tail(_tail), mane(_mane) {
        _value = mane - tail;
    }

    void blue() {
        tail = mane;
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

    type bet(type x) const {
        return (mane * x - tail) - value();
    }

    void red(type x) {
        mane = mane * x;
    }

    void print() {
        std::cout << "mane: " << mane << " tail: " << tail << std::endl;
    }
};

type f(lion A[], int i, int least_good, type inc) {
    if (i >= least_good)
        return A[i].bet(inc);
    else
        return A[i].bet(inc) + A[i].value() - A[least_good].value();
}

/*
    n: len(A)
    b: number of blue pills

    sorts lions,
    returns the index of the worst lion which can/will take blue pills
*/
type find_last_lion(lion A[], type n, type b) {
    std::sort(A, A+n);
    type i = n-1;
    for (; i>=0 && b>=0 && A[i].value()>0; --i, --b);
    return ++i;
}

/*
    n : len(A)
    last lion : last eligible lion to get blue pills

    gives out blue pills
*/
void give_blue_pills(lion A[], type n, type last_lion) {
    for (int i=last_lion; i<n; ++i)
        A[i].blue();
}

/*
    n : len(A)
    a : number of red pills
*/
void give_red_pills(lion A[], type n, type a, type least_good) {    
    type x = power().to(a); // calc increase mult

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

    // give the red pill
    A[best].red(x);
    
    // std::cout << "chose red:\n";
    // A[best].print();

    // non-condidate for blue pill
    if (best < least_good) {
        // std::cout << "swapping " << best << " and " << least_good << "\n";
        
        // swap
        lion temp = A[best];
        A[best] = A[least_good];
        A[least_good] = temp;
    }
}

/* calc sum of tails */
type inline tail_sum(lion A[], int n) {
    type sum_tail = 0;
    for (type i=0; i<n; ++i) {
        sum_tail += A[i].get_tail();
    }
    return sum_tail;
}

void inline input_lions(lion A[], int n) {
    type mane, tail;
    for (type i=0; i<n; ++i) {
        std::cin >> mane >> tail;
        A[i] = lion(tail, mane);
    }
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
    input_lions(A, n);

    // the chosen lion index with least value
    type last_lion = find_last_lion(A, n, b);    

    give_red_pills(A, n, a, last_lion);
    give_blue_pills(A, n, last_lion);

    // print result
    std::cout << tail_sum(A, n) << std::endl;

    return 0;
}

/*
    aeirya mohammadi
*/
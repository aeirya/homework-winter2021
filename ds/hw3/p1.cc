/*
    پیاده‌سازی هرم
*/

#include <iostream>
#include <vector>
using namespace std;
#define type long long

template <typename T>
void inline swp(T* a, T* b) {
    T temp = *a;
    *a = *b;
    *b = temp;
}

void rc() {
    cout << "checkpoint" << endl;
}

template <typename T>
/*
    heap implementation using arrays
*/
class heap {
    public:
    heap() {}

    void add(T x, type& operations) {
        v.push_back(x);
        type n = v.size();
        bubble_up(n-1, operations);
    }

    T pop(type& operations) {
        T m = v[0];
        v[0] = v.back();
        v.pop_back();
        bubble_down(0, operations);
        return m;
    }

    void print() {
        for (type& x : v) {
            cout << x << " ";
        }
        cout << endl;
    }

    private:
    vector<type> v;

    void bubble_up(type i, type& op) {
        if (v[i] > parent(i)) {
            swp(&v[i], &parent(i));
            ++op;
        }
        if (i > 0) 
            bubble_up(parent_i(i), op);
    }

    void bubble_down(type i, type& op) {
        if (i >= v.size()) return;

        bool left, right = false;
        if (lchild(i) > v[i]) {
            swp(&v[i], &lchild(i));
            ++op;
            left = true;
        }
        if (rchild(i) > v[i]) {
            swp(&v[i], &rchild(i));
            ++op;
            right = true;
        }
        if (left)
            bubble_down(lchild_i(i), op);
        if (right)
            bubble_down(rchild_i(i), op);
    }

    type inline parent_i(type i) const {
        return (i-1)/2;
    }

    type inline rchild_i(type i) const {
        return 2*i+2;
    }

    type inline lchild_i(type i) const {
        return 2*i+1;
    }

    inline T& parent(type i) {
        return v[(i-1)/2];
    }

    inline T& rchild(type i) {
        return v[2*i+2];
    }

    inline T& lchild(type i) {
        return v[2*i+1];
    }
};

int test() {
    heap<type> h;
    type count = 0;
    h.add(3, count);
    h.add(4, count);
    h.add(2, count);
    h.add(1, count);
    h.add(5, count);
    h.add(6, count);
    h.pop(count);
    h.print();
    cout << count << endl;
    return 0;
}

// template <typename T>
// class printer {
//     class printable {
//         virtual void print();  
//     };
//     class type_a(printable) {
            // void print()
//     };
// };

template <typename T>
class printer {
    private:
    struct printable {
        type count;
        T arg;
        bool has_arg;
    };
    vector<printable> v;

    public:
    void pop(T x, type count) {
        v.push_back(printable{count, x, true});
    }

    void add(type count) {
        v.push_back(printable{count, (type)0, false});
    }

    void print() {
        for (auto& item : v) {
            if (item.has_arg)
                cout << item.arg << " ";
            cout << item.count << endl;
        }
    }
};

int main() {
    // return test();
    int n;
    cin >> n;
    heap<type> h;
    type x;
    int cmd;
    type count, pop;
    printer<type> p;
    for (int i=0; i<n; ++i) {
        cin >> cmd;
        if (cmd == 1) {
            count = 0;
            // cout << h.pop(count) << " " << count << endl;
            pop = h.pop(count);
            p.pop(pop, count);
        }
        else if (cmd == 2) {
            cin >> x;
            count = 0;
            h.add(x, count);
            // cout << count << endl;
            p.add(count);
        }
    }
    p.print();
    // h.print();
}
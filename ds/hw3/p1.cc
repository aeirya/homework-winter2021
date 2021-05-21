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

template <typename T>
T inline max(T const a, T const b) {
    return a < b ? a : b;
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
        if (lchild_i(i) >= v.size()) return;
        bool left = lchild(i) > rchild(i);
        T& child = left ? lchild(i) : rchild(i);
        type child_i = left ? lchild_i(i) : rchild_i(i);
        
        if (v[i] < child) {
            swp(&v[i], &child);
            bubble_down(child_i, op);
            ++op;
        }
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
            pop = h.pop(count);
            p.pop(pop, count);
        }
        else if (cmd == 2) {
            cin >> x;
            count = 0;
            h.add(x, count);
            p.add(count);
        }
    }
    p.print();
}
/*
    همسایه‌های حسود
*/

#include <iostream>
#include <vector>
#include <algorithm>

using std::cin;
using std::cout;
using std::endl;
using std::vector;
using std::array;

#define type long long

struct point {
    int x, y;
};

struct interval {
    int start, end;

    bool operator <(interval& other) const { 
        return start < other.start 
            || (start == other.start && end < other.end);
    }
};

struct person {
    interval x_interval;
    interval y_interval;
    int index;
};

#pragma region input

point* input_point() {
    int x,y;
    cin >> x >> y;
    return new point {x,y};
}

person* new_person(point& up_left, point& down_right, int index) {
    interval *x = new interval {up_left.x, down_right.x},
             *y = new interval {up_left.y, down_right.y};
    return new person {*x, *y, index};
}

vector<person>& input_people(int n) {    
    point
        *up_left,   
        *down_right; 
    person* p;
    vector<person>* people = new vector<person>();
    
    for (int i=0; i<n; ++i) {
        up_left = input_point(),
        down_right = input_point();
        p = new_person(*up_left, *down_right, i);
        people->push_back(*p);
    }
    return *people;
}

#pragma endregion

#pragma region heap impl

template <typename T>
/*
    min heap implementation using arrays
    methods:
        add(T)
        pop => T
*/
class heap {
    public:
    heap() {}

    void add(T x) {
        v.push_back(x);
        type n = v.size();
        bubble_up(n-1);
    }

    T& pop() {
        T m = v[0];
        v[0] = v.back();
        v.pop_back();
        bubble_down(0);
        return m;
    }

    type size() const {
        return v.size();
    }

    private:
    vector<type> v;

    void bubble_up(type i) {
        if (v[i] < parent(i))
            swp(&v[i], &parent(i));
        if (i > 0) 
            bubble_up(parent_i(i));
    }

    void bubble_down(type i) {
        if (lchild_i(i) >= v.size()) return;
        
        bool left = lchild(i) < rchild(i);
        T& child = left ? lchild(i) : rchild(i);
        type child_i = left ? lchild_i(i) : rchild_i(i);
        
        if (v[i] > child) {
            swp(&v[i], &child);
            bubble_down(child_i);
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
#pragma endregion min heap

template <typename T>
void merge_heaps(heap<T>& to, heap<T>& from) {
    while (from.size() > 0) {
        to.add(from.pop());
    }
}

template <typename T, typename comparator>
class comparable {
    private:
    comparator comp;
    T value;

    public:
    comparable(T _value, comparator _comp) : value(_value), comp(_comp) {}

    bool operator <(comparable& other) const {
        return comp < other;
    }

    T get_value() { return value; }
};

using person_1d = comparable<person, interval>;

// template <typename mapper>
// class comparable_person {
//     public:
//     comparable_person(comparable<person>& _comp) : comp(_comp) {}

//     bool operator <(person& other) const {
//         return comp
//     }

//     private:
//     comparable<person> comp;
// };

// class aug_person : person {
//     public:
//     virtual interval& project_interval();
//     virtual bool operator <(aug_person& other) const;
// };

template <typename converter>
/*
    f: person -> interval (x or y)
*/
vector<int> solve(int n, int m, vector<person> people, converter f) {
    // people requesting for cell[i]
    heap<person_1d> cells[m];
    // make list of heaps
    interval intvl;
    comparable comp;
    for (auto& p : people) {
        intvl = f(p);
        comp = person_1d(p, intvl)
        cells[intvl.start].add(comp);
    }

    // as current point proceeds queue gets bigger
    heap<person_1d> queue;
    // start giving cells
    for (auto& cell : cells) {
        merge_heaps(queue, cell);
        auto& p = queue.pop();
        f(p.get_value())
    }
}

vector<point>& solve(int n, int m, vector<person> people) {
    vector<point> *v;
    vector<int> x = solve(n, m, people, [](person& p){ return p.x_interval; });
    vector<int> y = solve(n, m, people, [](person& p){ return p.y_interval; });
    point* p;
    for (int i=0; i<n; ++i) {
        p = new point {x[i], y[i]};
        v->push_back(*p);
    }
    for (int i=0; i<n; ++i) {
        x.pop_back();
        y.pop_back();
    }
    return *v;
}

void print(vector<point>& points) {
    if (points.size() == 0) {
        cout << -1 << endl;
        return;
    }
    for (point& p : points) {
        cout << p.x << " " << p.y << endl;
    }
}

int main() {
    // input
    int n, m;
    cin >> n >> m;
    vector<person>& people = input_people(n);

    // solve and print
    auto& answer = solve(n, m, people);
    print(answer);

    // free memoery
    delete &answer;

    // note
    bool isGreater = [](int a, int b){ return a > b; };

    return 0;
}
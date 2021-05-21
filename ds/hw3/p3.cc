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
void inline swp(T* a, T* b) {
    T temp = *a;
    *a = *b;
    *b = temp;
}

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

    T pop() {
        T m = v[0];
        v[0] = v.back();
        v.pop_back();
        bubble_down(0);
        return m;
    }

    type size() {
        return v.size();
    }

    void print() {
        for (auto& item : v) cout << item << " ";
        cout << endl;
    }

    private:
    vector<T> v;

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
        
        if (child < v[i]) {
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

class person_1d {
    private:
    person* p;
    interval* intvl;

    public:
    bool operator <(person_1d& other) const {
        return *intvl < *other.intvl;
    }

    interval& get_interval() const { return *intvl; }

    int start() const { return get_interval().start; }

    int& get_index() const { return p->index; }

    person& get_person() const { return *p; }

    person_1d(interval& _intvl, person& _p) : intvl(&_intvl), p(&_p) {}
    person_1d() : intvl(0), p(0) {}
};

// using person_1d = comparable<person, interval>;

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
    f: person -> person_1d (x or y)
*/
vector<int>& solve(int n, int m, vector<person> people, converter f) {
    vector<int>* result = new vector<int>(n);
    
    // people requesting for cell[i]
    heap<person_1d> cells[m];
    // make list of heaps
    person_1d proj;
    for (auto& p : people) {
        proj = f(p);
        cells[proj.start()].add(proj);
    }

    // as current point proceeds queue gets bigger
    heap<person_1d> queue;
    // start giving cells
    for (int i=0; i<m; ++i) {
        merge_heaps(queue, cells[i]);
        auto p = queue.pop();
        (*result)[p.get_index()] = i;
    }
    return *result;
}

vector<point>& solve(int n, int m, vector<person>& people) {
    vector<point> *v;
    vector<int> x = solve(n, m, people, [](person& p){ return person_1d(p.x_interval, p); });
    vector<int> y = solve(n, m, people, [](person& p){ return person_1d(p.y_interval, p); });
    point* p;
    for (int i=0; i<n; ++i) {
        p = new point {x[i], y[i]};
        v->push_back(*p);
    }
    // empty the vectors
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

int test_heap() {
    heap<int> h;
    h.add(10);
    h.add(9);
    h.add(11);
    h.add(20);
    h.add(30);
    h.add(40);
    while (h.size() > 0) {
        cout << h.pop() << endl;
    }
    // h.print();
    return 0;
}

int test_input(vector<person>& people) {
    for (auto& p : people)
        cout << p.index << " " 
            << p.x_interval.start << " " << p.x_interval.end << " " 
            << p.y_interval.start << " " << p.y_interval.end << endl;
    return 0;
}

int test_1d_solve(int n, int m, vector<person>& people) {
    vector<int> x = solve(n, m, people, [](person& p){ return person_1d(p.x_interval, p); });
    for (auto& i : x)
        cout << i << " ";
    cout << endl;
    return 0;
}

int main() {
    // tests
    // return test_heap();
    // return test_input(people);
    // input
    int n, m;
    cin >> n >> m;
    vector<person>& people = input_people(n);
    return test_1d_solve(n, m, people);

    // solve and print
    auto& answer = solve(n, m, people);
    print(answer);

    // free memoery
    delete &answer;

    // note
    // bool isGreater = [](int a, int b){ return a > b; };

    return 0;
}
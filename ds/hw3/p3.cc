/*
    همسایه‌های حسود
*/

#include <iostream>
#include <vector>
#include <list>

using std::cin;
using std::cout;
using std::endl;
using std::vector;
using std::list;

#define _int long long
#define type long long

/*
    structures
*/
struct point {
    _int x, y;
};

struct interval {
    _int start, end;

    bool operator <(interval& other) const { 
        return start < other.start 
            || (start == other.start && end < other.end);
    }
};

struct person {
    interval x_interval;
    interval y_interval;
    _int index;
};

/*
    person classes
*/
class person_1d {
    protected:
    const person* p;
    virtual interval& get_interval() const;

    public:
    person_1d(person& p) : p(&p) { }
    
    _int start() const
    { return get_interval().start; }

    _int end() const 
    { return get_interval().end; }

    bool operator <(person_1d& other) const {
        return get_interval() < other.get_interval();
    }
};

class person_x : person_1d {
    public:
    person_x(person& p) : person_1d(p) { }

    virtual interval get_interval() {
        return p->x_interval;
    }
};

class person_y : person_1d {
    public:
    person_y(person& p) : person_1d(p) { }

    virtual interval get_interval() {
        return p->y_interval;
    }
};

#pragma region input

point* input_point() {
    _int x,y;
    cin >> x >> y;
    return new point {x-1,y-1};
}

person* new_person(point& up_left, point& down_right, _int index) {
    interval *x = new interval {up_left.x, down_right.x},
             *y = new interval {up_left.y, down_right.y};
    return new person {*x, *y, index};
}

vector<person>& input_people(_int n) {    
    point
        *up_left,   
        *down_right; 
    person* p;
    vector<person>* people = new vector<person>();
    
    for (_int i=0; i<n; ++i) {
        up_left = input_point(),
        down_right = input_point();
        p = new_person(*up_left, *down_right, i);
        people->push_back(*p);
    }
    return *people;
}

#pragma endregion

#pragma region print
void print(vector<point>& points) {
    if (points.size() == 0) {
        cout << -1 << endl;
        return;
    }
    for (point& p : points) {
        cout << p.x+1 << " " << p.y+1 << endl;
    }
}

void rc() {
    cout << "checkpoint!" << endl;
}
#pragma endregion print

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

    type size() const {
        return v.size();
    }

    bool has_item() const {
        return size() > 0;
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
void insert(heap<T>& to, vector<T>& from) {
    for (auto& item : from) to.add(item);
}

template <typename T>
void insert(heap<T>& to, list<T>& from) {
    for (auto& item : from) to.add(item);
}

template <typename caster>
/*
    n: # of people
    m: # of cells
    cast: person -> person_1d (x or y)
    has_answer: validity of 'out'
    out: output result
*/
void solve_1d(_int n, _int m, vector<person> people, caster cast, bool& has_answer, vector<_int>& out) {
    /*
        generate a list of people for every cell (if there is a request)
    */
    list<person_1d> cells[m];

    // make list of list
    person_1d proj;
    for (auto& p : people) {
        proj = cast(p);
        cells[proj.start()].push_back(proj);
    }

    // as current point proceeds queue gets bigger
    heap<person_1d> queue;
    // start giving cells
    for (_int i=0; i<m; ++i) {
        insert(queue, cells[i]);
        if (queue.has_item()) {
            auto p = queue.pop();
            if (p.end() < i) {
                has_answer = false;
                return *result;
            }
            out[p.get_index()] = i;
        }
    }
}

void solve(_int n, _int m, vector<person>& people, bool& has_answer, vector<point> out) {
    has_answer = true;

    vector<_int> x, y;
    solve_1d(n, m, people, [](person& p){ return person_x(p); }, has_answer, x);
    if (!has_answer) return;

    solve_1d(n, m, people, [](person& p){ return person_y(p); }, has_answer, y);
    if (!has_answer) return;

    for (_int i=0; i<n; ++i) {
        out.push_back(point {x[i], y[i]});
    }
}

int main() {
    // input
    _int n, m;
    cin >> n >> m;
    vector<person>& people = input_people(n);

    // solve and print
    bool has_answer;
    vector<point> answer;
    solve(n, m, people, has_answer, answer);
    print(answer);

    // free memoery
    delete &answer;

    return 0;
}

//
// test functions
//

// int test_heap() {
//     heap<int> h;
//     h.add(10);
//     h.add(9);
//     h.add(11);
//     h.add(20);
//     h.add(30);
//     h.add(40);
//     while (h.size() > 0) {
//         cout << h.pop() << endl;
//     }
//     // h.print();
//     return 0;
// }

// int test_input(vector<person>& people) {
//     for (auto& p : people)
//         cout << p.index << " " 
//             << p.x_interval.start << " " << p.x_interval.end << " " 
//             << p.y_interval.start << " " << p.y_interval.end << endl;
//     return 0;
// }

// int test_1d_solve(int n, int m, vector<person>& people) {
//     bool has_answer = true;
//     vector<int> x = solve(n, m, people, [](person& p){ return person_1d(p.x_interval, p); }, has_answer);
//     rc();
//     if (!has_answer) cout << -1 << endl;
//     else {
//         for (auto& i : x)
//             cout << i+1 << " ";
//         cout << endl;
//     }
//     return 0;
// }

///
/// dump
///

// class person_1d {
//     private:
//     person* p;
//     interval* intvl;

//     public:
//     bool operator <(person_1d& other) const {
//         return *intvl < *other.intvl;
//     }

//     interval& get_interval() const { return *intvl; }

//     _int start() const { return get_interval().start; }
//     _int end() const { return get_interval().end; }
//     _int& get_index() const { return p->index; }

//     person& get_person() const { return *p; }

//     person_1d(interval& _intvl, person& _p) : intvl(&_intvl), p(&_p) {}
//     person_1d() : intvl(0), p(0) {}
// };


//  [](person& p){ return person_1d(p.x_interval, p); }, has_answer, x);

// note
// bool isGreater = [](_int a, _int b){ return a > b; };


// tests
// return test_heap();
// return test_input(people);
// return test_1d_solve(n, m, people);

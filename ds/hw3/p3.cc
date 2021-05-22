/*
    همسایه‌های حسود
*/

#include <iostream>
#include <vector>
#include <list>
// #include <algorithm>

using std::cin;
using std::cout;
using std::endl;
using std::vector;
using std::list;
// using std::sort;

#define _int long long
#define type long long

template <typename T>
void quicksort(T A[], int n);

template <typename T>
void merge_sort(T A[], _int n);

#pragma region structures

/*
    structures
*/
struct point {
    _int x, y;
};

struct interval {
    _int start, end;

    bool operator <(interval& other) const { 
        // return start < other.start 
        //     || (start == other.start && end < other.end);
        // return end < other.end 
        //     || (end == other.end && start < other.start);
        return end < other.end;
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
class person_1d : public person {
    protected:
    virtual interval& get_interval() = 0;

    public:
    person_1d(const person& p) : person(p) { }
    person_1d() {}
    
    _int start()
    { return get_interval().start; }

    _int end()
    { return get_interval().end; }

    bool operator <(person_1d& other) {
        return get_interval() < other.get_interval();
    }

    void print() {
        cout << "person: " << index << ", " << start() << ":" << end() << endl;
    }
};

class person_x : public person_1d {
    public:
    person_x(const person& p) : person_1d(p) { }
    person_x() : person_1d() {}

    interval& get_interval() {
        return x_interval;
    }
};

class person_y : public person_1d {
    public:

    person_y(const person& p) : person_1d(p) { }
    person_y() : person_1d() {}

    interval& get_interval() {
        return y_interval;
    }
};

#pragma endregion structures

#pragma region input

point* input_point() {
    _int x,y;
    cin >> x >> y;
    return new point {x-1,y-1};
}

person* new_person(const point& up_left, const point& down_right, _int index) {
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

void input_people_fast(_int n, vector<person>& out) {
    // reserve n space
    out.reserve(n);
    _int x0, y0, x1, y1;
    for (_int i=0; i<n; ++i) {
        cin >> x0 >> y0 >> x1 >> y1;
        out.push_back(
            person{interval{x0-1,x1-1}, interval{y0-1,y1-1}, i});
    }
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

void print_answer(_int n, const vector<_int>& x, const vector<_int>& y, bool has_anwer) {
    if (! has_anwer) {
        cout << -1 << endl;
        return;
    }
    for (int i=0; i<n; ++i) {
        cout << x[i]+1 << " " << y[i]+1 << endl;
    }
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

#pragma region algorithm

template <typename T>
void insert(heap<T>& to, list<T>& from) {
    for (auto& item : from) to.add(item);
}

template <class person_type>
/*
    n: # of people
    m: # of cells
    cast: person -> person_1d (x or y)
    has_answer: validity of 'out'
    out: output result
*/
void solve_1d(const _int n, const _int m, const vector<person>& people, bool& has_answer, vector<_int>& out) {
    // if (m < n) {
        /*
            generate a list of people for every cell (if there is a request)
        */
        list<person_type> cells[m];
        // make list of list
        for (auto& p : people) { 
            auto proj = person_type(p);
            cells[proj.start()].push_back(proj);
        }

        // as current point proceeds queue gets bigger
        heap<person_type> queue;
        // start giving cells
        for (_int i=0; i<m; ++i) {
            insert(queue, cells[i]);
            if (queue.has_item()) {
                // the minimum
                auto p = queue.pop();
                // check if valid
                if (p.end() < i) {
                    has_answer = false;
                    return;
                }
                out[p.index] = i;
            }
        }
    // } 
    // else {
    //     person_type plist[n];
    //     for (int i=0; i<n; ++i) 
    //         plist[i] = (person_type)(people[i]);
    //     merge_sort(plist, n);
    //     _int last_cell = -1;
    //     for (_int i=0; i<n; ++i) {
    //         auto& p = plist[i];
    //         if (p.end() <= last_cell) {
    //             has_answer = false;
    //             return;
    //         }
    //         last_cell = p.start() <= last_cell ? last_cell + 1 : p.start();
    //         out[i] = last_cell;
    //     }
    // }
}

void solve(const _int n, const _int m, const vector<person>& people, bool& has_answer, vector<point>& out) {
    has_answer = true;

    vector<_int> x(n), y(n);
    solve_1d<person_x>(n, m, people, has_answer, x);
    if (!has_answer) return;

    solve_1d<person_y>(n, m, people, has_answer, y);
    if (!has_answer) return;

    for (_int i=0; i<n; ++i) {
        out.push_back(point {x[i], y[i]});
    }
}

void solve_2d(const _int n, const _int m, const vector<person>& people, bool& has_answer, vector<point>& out) {
    list<person_x> cells_x[m];
    list<person_y> cells_y[m];

    // make list of list
    person_1d proj;
    for (auto& p : people) { 
        proj = (person_x) p;
        cells_x[proj.start()].push_back(proj);
        proj = (person_y) p;
        cells_y[proj.start()].push_back(proj);
    }

    // as current point proceeds queue gets bigger
    heap<person_type> queue;
    // start giving cells
    for (_int i=0; i<m; ++i) {
        insert(queue, cells[i]);
        if (queue.has_item()) {
            // the minimum
            auto p = queue.pop();
            // check if valid
            if (p.end() < i) {
                has_answer = false;
                return;
            }
            out[p.index] = i;
        }
    }
}


#pragma endregion algorithm

#pragma region sorts

template <typename T>
void merge(T A[], T out[], _int start, _int middle, _int end) {
    _int i = start, 
        j = middle,
        x = start;
    while (i < middle || j < end) {
        if (j == end)
            out[x++] = A[i++];
        else if (i == middle || A[j] < A[i]) 
            out[x++] = A[j++];
        else
            out[x++] =  A[i++];
    }
    for (_int i=start; i<end; ++i) {
        A[i] = out[i];
    }
}

template <typename T>
void merge_sort(T A[], T out[], _int start, _int end) {
    if (end - start <= 1) return;

    _int x = (end-start)/2;
    merge_sort(A, out, start, start+x);
    merge_sort(A, out, start+x, end);
    merge(A, out, start, start+x, end);
}

template <typename T>
void merge_sort(T A[], _int n) {
    T B[n];
    merge_sort(A, B, 0, n);
}

#pragma endregion sorts

int main() {
    // input
    _int n, m;
    cin >> n >> m;
    vector<person> people;
    input_people_fast(n, people);

    // solve and print
    bool has_answer;
    vector<point> answer;
    solve(n, m, people, has_answer, answer);
    print(answer);

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

// int cast_test() {
//     person p;
//     person_x x(p);
//     person p2(x);
//     // person_1d d;
//     // person p3(d);
//     ((person_x) p).start();

//     vector<person> pp;
//     // vector<person_x> px(pp);
//     return 0;
// }

// template <typename T>
// void insert(heap<T>& to, vector<T>& from) {
//     for (auto& item : from) to.add(item);
// }
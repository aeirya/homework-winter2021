#include <stdio.h>
#include <iostream>
#include <vector>
#include <list>

#define _int long long
#define type long long // used by the heap

using std::cin;
using std::cout;
using std::endl;
using std::list;
using std::vector;

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

    void add(const T& x) {
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

struct person_interval
{
    // pointer locations: start | end
    int* start; // interval start
    int index;  // person index

    // used by the heap for comparison 
    bool operator <(const person_interval& other) const {
        // compare ends
        return *(start+1) < *(other.start+1);
    }
};

// template <typename T>
// // insert all list items into heap
// void insert(const heap<T>& to, const list<T>& from) {
//     for (auto& item : from) to.add(item);
//     from.clear();
// }


/* for each index create an person-interval object and 
insert it into heap */
void insert(heap<person_interval>& to, const list<int>& indices, int** people, bool is_x) {
    int offset = is_x ? 0 : 2;
    int* start;
    for (int i : indices) {
        start = people[i] + offset;
        to.add(person_interval{start, i});
    }
}

void rc()
{ cout << "checkpoint!" << endl; }

int main() {
    // return test();

    // input vars
    int n, m, 
        x0, y0, x1, y1;

    // a list for every cell
    list<int> requests_x[m];
    list<int> requests_y[m];

    int** people = new int*[n];
    for(int i = 0; i < n; ++i)
        people[i] = new int[4];

    /*
        each person:
        x0 x1 y0 y1
    */
   
    scanf("%d %d", &n, &m);
    int* person;
    for (int i=0; i<n; ++i) {
        // read person
        scanf("%d %d %d %d", &x0, &y0, &x1, &y1);
        // put request in interval starts
        requests_x[x0].push_back(i);
        requests_y[y0].push_back(i);
        // save person
        person = people[i];
        person[0] = x0;
        person[1] = x1;
        person[2] = y0;
        person[3] = y1;
    }

    heap<person_interval> queue_x;
    heap<person_interval> queue_y;
    // solve
    for (int i=0; i<m; ++i) {
        insert(queue_x, requests_x[i], people, true);
        insert(queue_y, requests_y[i], people, false);
    }

    // free memory
    for (int i=0; i<n; ++i)
        delete[] people[i];
    delete[] people;

    return 0;
}

/*
    array test
*/
// int test() {
//     int* a = new int[5];
//     a[0] = 1;
//     a[1] = 2; 
//     a[2] = 3;
//     a[3] = 4;
//     a[4] = 5;
//     cout << sizeof(int) << endl; 
//     cout << *(a+1);
//     return 0;
// }

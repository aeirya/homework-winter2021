#include <iostream>
using std::cin;
using std::cout;
using std::endl;

#include <list>
using std::list;

#include <vector>
using std::vector;

#include <algorithm>
using std::sort;

#include <unordered_map>
using std::unordered_map;

#include <unordered_set>
using std::unordered_set;

// #include "crit_con.hh"

#define DEBUG 0

#pragma region util

inline int min(int x, int y) {
    return x<y ? x:y;
}

inline int max(int x, int y) {
    return x>y ? x:y;
}

inline void min_max(int& min, int& max) {
    if (min > max) {
        int tmp = min;
        min = max;
        max = tmp;
    }
}

template <typename T>
inline void swp(T& x, T& y) {
    T tmp = x;
    x = y;
    y = tmp;
}

#pragma endregion util

#pragma region data structures

class disjoint_set {
    private:
    struct node {
        node* parent;
        int size;
        int value;
    }; 

    node new_node(int value) {
        return node {0, 1, value};
    }

    vector<node> nodes;

    public:
    disjoint_set(int n) {
        nodes.resize(n);
        for (int i=0; i<n; ++i)
            nodes[i] = new_node(i);
    }

    int find(int x) {
        node *n = &nodes[x];
        node *p = n->parent;

        while (p) {
            if (p->parent)
                n->parent = p->parent;
            n = p;
            p = p->parent;
        }
        return n->value;
    }

    void join(int x, int y) {
        int px = find(x),
            py = find(y);
        if (px == py) return;

        // set smaller the child of bigger
        node *c = &nodes[px], 
            *p = &nodes[py];
        if (c->size > p->size) swp(c, p);
        
        c->parent = p;
        p->size += c->size;
    }
};

enum edge_state {
    none, any, at_least_one
};

struct edge {
    int u, v, weight, index;
    edge_state state;
    bool visited;

    bool operator <(const edge& other) const {
        return weight < other.weight;
    }

    bool operator ==(const edge& other) const {
        return weight == other.weight;
    }

    int get_neighbor(int x, disjoint_set& ds) {
        if (ds.find(u) == x) return ds.find(v);
        if (ds.find(v) == x) return ds.find(u);
        return 1/0;
    }
};

class graph {
    private:
    vector<list<edge*>> A;
    list<int> active_nodes;

    public:
    graph(int n) {
        A.resize(n);
    }

    void add_edge(int a, int b, edge *e) {
        A[a].push_back(e);
        A[b].push_back(e);
        active_nodes.push_back(a);
        active_nodes.push_back(b);
    }

    void remove_edge(int a, int b, edge *e) {
        A[a].remove(e);
        A[b].remove(e);
        if (A[a].empty()) active_nodes.remove(a);
        if (A[b].empty()) active_nodes.remove(b);
    }

    list<edge*>& neighbors(int v) {
        return A[v];
    }

    list<int>& nodes() {
        return active_nodes;
    }

    void clear() {
        for (int i : active_nodes) A[i].clear();
        active_nodes.clear();
    }
};


#pragma endregion structures

#pragma region algorithm

/*
    finds end of the array, where weight is bigger than begin's weight
*/
int find_end_index(edge e[], int size, int begin) {
    int i = begin,
        w = e[begin].weight;
    while (i<size && e[i].weight <= w) ++i;
    return i;
}

/*
    find none edges and mark them
*/
void find_none(edge e[], int size, disjoint_set& ds) {
    for (int i=0; i<size; ++i)
        if (ds.find(e[i].u) == ds.find(e[i].v)) e[i].state = none;
}

void insert(edge e[], int size, disjoint_set& ds) {
    for (int i=0; i<size; ++i)
        if (e[i].state != none)
            ds.join(e[i].u, e[i].v);
}

#pragma endregion algorithm

#pragma region io

void input_edges(edge* e, int m) {
    for (int i=0; i<m; ++i) {
        cin >> e[i].u >> e[i].v >> e[i].weight;
        e[i].index = i;
        e[i].visited = false;
    }
    for (int i=0; i<m; ++i) {
        --e[i].u; 
        --e[i].v;
    }
}

void print_states(edge* e, int m) {
    // get states in true order
    edge_state s[m];
    for (int i=0; i<m; ++i)
        s[e[i].index] = e[i].state;
    
    // print states
    for (int i=0; i<m; ++i) {
        switch(s[i]) {
            case any:
            cout << "any" << endl;
            break;
            case none:
            cout << "none" << endl;
            break;
            case at_least_one:
            cout << "at least one" << endl;
            break;
        }
    }
}

#pragma endregion io

void visit(int current, int parent, graph& g, bool visited[], int low_time[], int visit_time[], disjoint_set& ds) {
    static int time = 0;
    visited[current] = true;
    visit_time[current] = low_time[current] = time++;

    auto& neighbors = g.neighbors(current);
    int neighbor;
    for (edge* e : neighbors) {
        if (e->visited) continue;
        e->visited = true;
        neighbor = e->get_neighbor(current, ds);
        if (!visited[neighbor]) {
            visit(neighbor, current, g, visited, low_time, visit_time, ds);
            low_time[current] = min(low_time[current], low_time[neighbor]);
            if (visit_time[current] < low_time[neighbor]) 
                e->state = any;
        } else // back edge
            low_time[current] = min(low_time[current], visit_time[neighbor]);
    }
}

/* is_connecting_same_components */
bool is_same_comp(edge& e, edge& f, disjoint_set& ds) {
    int 
        a = ds.find(e.u),
        b = ds.find(e.v),
        A = ds.find(f.u),
        B = ds.find(f.v);
    min_max(a,b);
    min_max(A,B);
    return a == A && b == B;
}

void find_any(int n, edge e[], int m, disjoint_set& ds, graph& g, bool visited[], int low_time[], int visit_time[]) {
    list<list<edge*>> not_any;

    int x,y;
    for (int i=0; i<m; ++i) {
        if (e[i].state == none) continue;
        x = ds.find(e[i].u);
        y = ds.find(e[i].v);
        // finding multiple edges
        edge *front;
        for (auto& lst : not_any) {
            front = lst.front();
            if (is_same_comp(*front, e[i], ds))
                lst.push_back(&e[i]);
        }
        g.add_edge(x,y, &e[i]);
    }

    auto& active_nodes = g.nodes();
    for (int i : active_nodes)
        visited[i] = false;

    // find_critical_connections
    for (int i : active_nodes)
        visit(i, -1, g, visited, low_time, visit_time, ds);

    // for (auto& lst : not_any)
    //     for (edge *ed : lst)
    //         ed->state = at_least_one;

    g.clear();
}

int main() {
    int n, m;
    cin >> n >> m;

    edge e[m];
    // get input
    input_edges(e, m);
    // sort edges
    sort(e, e+m);

    // default state to some
    for (int i=0; i<m; ++i)
        e[i].state = at_least_one;

    disjoint_set ds(n);
    // used by tarjan
    graph g(n);
    bool visited[n];
    int low_time[n], visit_time[n];

    // begin <= edges of weight w < end
    int begin, end;
    begin = 0;

    edge* e_head;
    int e_size;

    while (begin < m) {
        end = find_end_index(e, m, begin);
        e_head = e + begin;
        e_size = end - begin;
        find_none(e_head, e_size, ds);
        find_any(n, e_head, e_size, ds, g, visited, low_time, visit_time);
        insert(e_head, e_size, ds);
        begin = end;
    }
    print_states(e, m);

    for (int i=0; i<m; ++i) {
        if (e[i].state != none && e[i].visited == false) cout << 2/0 << endl;
    }
    return 0;
}
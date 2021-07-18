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
        node &nx = nodes[px],
             &ny = nodes[py];
        // set smaller the child of bigger
        if (nx.size <= ny.size) {
            nx.parent = &ny;
            ny.size += nx.size;
        } else {
            ny.parent = &nx;
            nx.size += ny.size;
        }
    }
};

enum edge_state {
    none, any, at_least_one
};

struct edge {
    int u, v, weight;
    edge_state state;

    bool operator <(const edge& other) const {
        return weight < other.weight;
    }

    bool operator ==(const edge& other) const {
        return weight == other.weight;
    }
};


#pragma region test
int disjoint_set_test() {
    disjoint_set ds(5);
    ds.join(0,1);
    ds.join(3,4);
    ds.join(2,3);
    cout << ds.find(0) << endl;
    cout << ds.find(3) << endl;
    ds.join(0, 3);
    cout << ds.find(2) << endl;
    return 0;
}

int arr_test(int e[], int size) {
    for (int i=0; i<size; ++i) 
        cout << e[i] << endl;
}

int arr_test() {
    int e[6] = {1,2,3,4,5,6};
    arr_test(e+2, 3);
    return 0;
}
#pragma endregion test

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
    for (int i=0; i<size; ++i) {
        // if connecting members of the same component
        if (ds.find(e[i].u) == ds.find(e[i].v)) {
            e[i].state = none;
        }
    }
}

void find_any(edge edges[], int size, disjoint_set& ds) {
    if (size == 1) {
        edge e = edges[0];
        if (ds.find(e.u) != ds.find(e.v))
            e.state = any;
    }
}

void insert(edge e[], int size, disjoint_set& ds) {
    for (int i=0; i<size; ++i) {
        if (ds.find(e[i].u) != ds.find(e[i].v)) {
            ds.join(e[i].u, e[i].v);
        }
    }
}

int main() {
    int n, m;
    cin >> n >> m;

    edge e[m];
    // get input
    for (int i=0; i<m; ++i)
        cin >> e[i].u >> e[i].v >> e[i].weight;

    // sort edges
    sort(e, e+m);

    // default state to any
    for (int i=0; i<m; ++i)
        e[i].state = at_least_one;

    disjoint_set ds(n);
    int begin, end;
    begin = 0;
    while (begin < m) {
        end = find_end_index(e, m, begin);
        find_none(e+begin, end-begin, ds);
        // find bridges 
        // or find any
        find_any(e+begin, end-begin, ds);

        insert(e+begin, end-begin, ds);

        begin = end;
    }
    // for (int i=begin; i<end; ++i) {

    // }
    for (int i=0; i<m; ++i) {
        switch(e[i].state) {
            case any:
            cout << "ANY" << endl;
            break;
            case none:
            cout << "NONE" << endl;
            break;
            default:
            cout << "SOME" << endl;
        }
    }

    return 0;
}
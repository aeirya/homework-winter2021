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

#include "crit_con.hh"

#define DEBUG 1

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
    int m_size;

    public:
    disjoint_set(int n) {
        m_size = n;
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
        if (DEBUG) cout << x << ", " << y << ": " << "joining " << px << " and " << py << endl;
    }

    int size() {
        return m_size;
    }
};

enum edge_state {
    none, any, at_least_one
};

struct edge {
    int u, v, weight, index;
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
            if (DEBUG) cout << e[i].u << ", " << e[i].v << " is none" << endl;
            e[i].state = none;
        }
    }
}

class bin_tree {
    private:
    struct node {
        node *left, *right;
        int value, index;
    };
    node* root = 0;

    node* find(node* n, int x) {
        if (x > n->value && n->right) return find(n->right, x);
        if (x < n->value && n->left) return find(n->left, x);
        return n;
    }

    public:
    bool has(int x) {
        if (!root) return false;
        node* n = find(root, x);
        // cout << "value of node is " << n->value << endl;
        return n->value == x;
    }

    int get_index(int x) {
        return find(root, x)->index;
    }

    void add(int x, int index) {
        node *new_node = new node {0,0,x,index}
        if (!root) root = ;
        else {
            node* n = find(root, x);
            if (x == n->value) return;
            if (x < n->value) 
                n->left = new node{0,0,x};
            else n->right = new node{0,0,x};
        }
    }
};

// graph map_indices(edge e[], int m, disjoint_set& ds) {
//     edge map_e[m];

// }

int get_mapped(int x, bin_tree& tree, int map[], int& map_i) {
    int i;
    if (tree.has(x)) {
        i = tree.get_index(x);
    } else {
        i = map_i++;
        tree.add(x, i);
        map[i] = x;
    }
    return i;
}

struct tuple {
    int x, y;
}

void find_any(edge e[], int size, disjoint_set& ds) {
    int n = ds.size();
    int map[n], map_index = 0;
    edge mapped_e[size];
    bin_tree tree;

    graph g(n);

    for (int i=0; i<size; ++i) {
        mapped_e[i].u = get_mapped(e[i].u, tree, map, map_index);
        mapped_e[i].v = get_mapped(e[i].v, tree, map, map_index);
        mapped_e[i
    }
    // if (size == 1) {
    //     edge e = edges[0];
    //     if (ds.find(e.u) != ds.find(e.v))
    //         e.state = any;
    // }
}

void insert(edge e[], int size, disjoint_set& ds) {
    for (int i=0; i<size; ++i) {
        if (ds.find(e[i].u) != ds.find(e[i].v)) {
            ds.join(e[i].u, e[i].v);
        }
    }
}

void print_edges(edge* e, int m) {
    cout << "edges: " << endl;
    for (int i=0; i<m; ++i)
        cout << e[i].u << ", " << e[i].v << ", " << e[i].weight << endl;
}

void input_edges(edge* e, int m) {
    for (int i=0; i<m; ++i) {
        cin >> e[i].u >> e[i].v >> e[i].weight;
        e[i].index = i;
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
            cout << "ANY" << endl;
            break;
            case none:
            cout << "NONE" << endl;
            break;
            case at_least_one:
            cout << "SOME" << endl;
            break;
        }
    }
}

/* passed */
int tree_test() {
    bin_tree t;
    t.add(1);
    t.add(3);
    t.add(4);
    t.add(5);
    for (int i=0; i<=6; ++i) {
        cout << t.has(i) << endl;
    }
    return 0;
}

int main() {
    return tree_test();
    int n, m;
    cin >> n >> m;

    edge e[m];
    // get input
    input_edges(e, m);

    // sort edges
    sort(e, e+m);

    if (DEBUG) print_edges(e, m);

    // default state to some
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
        // find_any(e+begin, end-begin, ds);

        insert(e+begin, end-begin, ds);

        begin = end;
    }

    print_states(e, m);

    return 0;
}
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

// #include "crit_con.hh"

#define DEBUG 0

inline int min(int x, int y) {
    return x<y ? x:y;
}

inline int max(int x, int y) {
    return x>y ? x:y;
}

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

        // int i=0;
        while (p) {
            // if (DEBUG) cout << "in find node value is " << n->value << endl;
            // if (DEBUG) cout << "in find parent value is " << p->value << endl;
            if (p->parent) {
                n->parent = p->parent;
                // if (DEBUG) cout << "in find parent of parent value is " << p->value << endl;
            }
            n = p;
            p = p->parent;

            // ++i;
            // if (i == 2) break;
        }
        return n->value;
    }

    // int find(int x) {
    //     node *n = &nodes[x];
    //     while (n->parent) 
    //         n = n->parent;
    //     return n->value;
    // }

    // void join(int x, int y) {
    //     int px = find(x),
    //         py = find(y);
    //     node &nx = nodes[px],
    //          &ny = nodes[py];
    //     // set smaller the child of bigger
    //     if (nx.size <= ny.size) {
    //         nx.parent = &ny;
    //         ny.size += nx.size;
    //     } else {
    //         ny.parent = &nx;
    //         nx.size += ny.size;
    //     }
    //     if (DEBUG) cout << x << ", " << y << ": " << "joining " << px << " and " << py << endl;
    // }

    void join(int x, int y) {
        int px = find(x),
            py = find(y);
        if (px == py) return;
        // set smaller the child of bigger
        if (nodes[px].size > nodes[py].size) {
            int tmp = px;
            px = py;
            py = tmp;
        }
        if (px == py) {
            cout << "what the .." << endl;
            cout << 1/0 << endl;
        }

        nodes[px].parent = &nodes[py];
        // if (DEBUG) cout << "my address is " << &nodes[px] << endl;
        // if (DEBUG) cout << "my parent will be set to " << &nodes[py] << endl;

        nodes[py].size += nodes[px].size;
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
        return weight < other.weight || 
            weight == other.weight && u < other.u ||
            (weight == other.weight && u == other.u && v < other.v);
    }

    bool operator ==(const edge& other) const {
        return weight == other.weight;
    }
};

class graph {
    private:
    vector<list<int>> A;
    list<int> active_nodes;

    public:
    graph(int n) {
        A.resize(n);
    }

    void add_edge(int a, int b) {
        A[a].push_back(b);
        A[b].push_back(a);
        active_nodes.push_back(a);
        active_nodes.push_back(b);
    }

    void remove_edge(int a, int b) {
        A[a].remove(b);
        A[b].remove(a);
        if (A[a].empty()) active_nodes.remove(a);
        if (A[b].empty()) active_nodes.remove(b);
    }

    list<int>& neighbors(int v) {
        return A[v];
    }

    list<int>& nodes() {
        return active_nodes;
    }

    void clear() {
        for (int i : active_nodes) A[i].clear();
        active_nodes.clear();
    }

    // int size() {
    //     return A.size();
    // }
};


#pragma endregion structures

void print_edge(edge& e) {
    cout << e.u << ", " << e.v << endl;
}

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
    // if (DEBUG) cout << "finding none, size: " << size << endl;
    for (int i=0; i<size; ++i) {
        // if (DEBUG) cout << "checking ";
        // if (DEBUG) print_edge(e[i]);
        // if (DEBUG) cout << endl;
        // if connecting members of the same component
        if (ds.find(e[i].u) == ds.find(e[i].v)) {
            // if (DEBUG) cout << e[i].u << ", " << e[i].v << " is none" << endl;
            e[i].state = none;
        }
    }
}

void insert(edge e[], int size, disjoint_set& ds) {
    for (int i=0; i<size; ++i) {
        // if (ds.find(e[i].u) != ds.find(e[i].v))
        if (e[i].state != none) {
            // if (DEBUG) cout << "attemting to join " << e[i].u << ", " << e[i].v << endl;
            // if (DEBUG) cout << "and their parents is " << ds.find(e[i].u) << ", " << ds.find(e[i].v) << endl;
            ds.join(e[i].u, e[i].v);
        }
    }
}

#pragma endregion algorithm

#pragma region map
// class bin_tree {
//     private:
//     struct node {
//         node *left, *right;
//         int value, index;
//     };
//     node* root = 0;

//     node* find(node* n, int x) {
//         if (x > n->value && n->right) return find(n->right, x);
//         if (x < n->value && n->left) return find(n->left, x);
//         return n;
//     }

//     public:
//     bool has(int x) {
//         if (!root) return false;
//         node* n = find(root, x);
//         // cout << "value of node is " << n->value << endl;
//         return n->value == x;
//     }

//     int get_index(int x) {
//         return find(root, x)->index;
//     }

//     void add(int x, int index) {
//         node *new_node = new node {0,0,x,index};
//         if (!root) root = new_node;
//         else {
//             node* n = find(root, x);
//             if (x == n->value) return;
//             if (x < n->value) 
//                 n->left = new_node;
//             else n->right = new_node;
//         }
//     }
// };

// int get_mapped(int x, bin_tree& tree, int map[], int& map_i) {
//     int i;
//     if (tree.has(x)) {
//         i = tree.get_index(x);
//     } else {
//         i = map_i++;
//         tree.add(x, i);
//         map[i] = x;
//     }
//     return i;
// }

// void find_any(edge e[], int size, disjoint_set& ds) {
//     int n = ds.size();
//     int map[n], map_index = 0;
//     int x,y;
//     bin_tree tree;
//     graph g(n);
//     for (int i=0; i<size; ++i) {
//         x = get_mapped(e[i].u, tree, map, map_index);
//         y = get_mapped(e[i].v, tree, map, map_index);
//         g.add_edge(x, y);
//     }
// }

#pragma endregion mapped

#pragma region io

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

// void find_critical_connections(graph& g, edge e[], int m, bool visited[], int low_time[], int visit_time[]) {
//     return bridges;
// } 

template <typename T, typename U>
class bin_tree {
    private:
    struct node {
        node *left, *right;
        T key;
        U value;
    };
    node* root = 0;

    node* find(node* n, T x) {
        if (n->key < x  && n->right) return find(n->right, x);
        if (x < n->key && n->left) return find(n->left, x);
        return n;
    }

    public:
    bool has(T x) {
        if (!root) return false;
        node* n = find(root, x);
        return n->key == x;
    }

    U get(T x) {
        return find(root, x)->value;
    }

    void add(T key, U value) {
        node *new_node = new node {0,0,key,value};
        if (!root) root = new_node;
        else {
            node* n = find(root, key);
            if (key == n->key) return;
            if (key < n->key) 
                n->left = new_node;
            else n->right = new_node;
        }
    }
};

struct tuple {
    int x,y;

    bool operator<(tuple& other) const {
        int a = min(x,y),
            A  = min(other.x, other.y);
        if (a < A) return true;
        if (a > A) return false;
        int b = max(x, y),
            B = max(other.x, other.y);
        if (b < B) return true;
        return false;
    }

    bool operator==(tuple& other) const {
        return x == other.x && y == other.y || 
            x == other.y && y == other.x;
    }
};

void visit(int current, int parent, graph& g, bool visited[], int low_time[], int visit_time[], list<tuple>& out) {
    static int time = 0;
    if (DEBUG) cout << "visiting " << current << endl;
    visited[current] = true;
    visit_time[current] = low_time[current] = time++;

    auto& neighbors = g.neighbors(current);
    for (int neighbor : neighbors) {
        if (DEBUG) cout << "neighbor of me is " << neighbor << endl;
        if (DEBUG) cout << "parent of me is " << parent << endl;
        if (neighbor == parent) continue;
        if (!visited[neighbor]) {
            visit(neighbor, current, g, visited, low_time, visit_time, out);
            low_time[current] = min(low_time[current], low_time[neighbor]);
            if (DEBUG) {
                cout << "visit time is " << visit_time[current] << endl;
                cout << "low time is " << low_time[neighbor] << endl;
            }
            if (visit_time[current] < low_time[neighbor]) {
                if (DEBUG) cout << "arrrrrrrr " << current << ", " << neighbor << endl;
                out.push_back(tuple{current, neighbor});
            }
        } else {
            // back edge
            low_time[current] = min(low_time[current], visit_time[neighbor]);
        }
    }
}

void find_any(edge e[], int m, disjoint_set& ds, graph& g, bool visited[], int low_time[], int visit_time[]) {
    bin_tree<tuple, bool> has_multiple;
    bin_tree<tuple, edge*> tree;
    int x,y;
    for (int i=0; i<m; ++i) {
        if (e[i].state == none) continue;
        x = ds.find(e[i].u);
        y = ds.find(e[i].v);
        if (DEBUG) cout << "is edge " << e[i].u << ", " << e[i].v << " any?" << endl;
        if (DEBUG) cout << "adding graph edge " << x << ", " << y << endl;
        if (tree.has(tuple{x,y})) {
            g.remove_edge(x,y);
            has_multiple.add(tuple{x,y}, true);
            continue;
        }
        if (has_multiple.has(tuple{x,y})) continue;
        g.add_edge(x, y);
        tree.add(tuple{x,y}, &e[i]);
    }
    list<tuple> bridges;

    for (int i : g.nodes()) {
        visited[i] = false;
    }

    for (int i : g.nodes()) {
        visit(i, -1, g, visited, low_time, visit_time, bridges);
    }
    // find_critical_connections

    for (tuple& t : bridges) {
        tree.get(t)->state = any;
        auto ed = tree.get(t);
        if (DEBUG) cout << ed->u << ", " << ed->v << " is any" << endl;
    }

    g.clear();
}

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
    return 0;
}

int arr_test() {
    int e[6] = {1,2,3,4,5,6};
    arr_test(e+2, 3);
    return 0;
}

// /* passed */
// int tree_test() {
//     bin_tree t;
//     t.add(1);
//     t.add(3);
//     t.add(4);
//     t.add(5);
//     for (int i=0; i<=6; ++i) {
//         cout << t.has(i) << endl;
//     }
//     return 0;
// }
#pragma endregion test

int main() {
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
    
    // used by tarjan
    graph g(n);
    bool visited[n];
    int low_time[n], visit_time[n];
    // // reset flags
    // for (int i=0; i<n; ++i)
    //     visited[i] = false;

    // begin <= edges of weight w < end
    int begin, end;
    begin = 0;

    edge* e_head;
    int e_size;

    while (begin < m) {
        end = find_end_index(e, m, begin);
        e_head = e+begin;
        e_size = end - begin;
        if (DEBUG) cout << "weights of : " << e_head[0].weight << endl;

        find_none(e_head, e_size, ds);
        // if (DEBUG) cout << "checked nones" << endl;
        find_any(e_head, e_size, ds, g, visited, low_time, visit_time);
        if (DEBUG) cout << "checked anys" << endl;
        insert(e_head, e_size, ds);
        if (DEBUG) cout << "inserted" << endl;

        begin = end;
    }

    print_states(e, m);

    return 0;
}
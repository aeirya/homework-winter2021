#include <iostream>
using std::cin;
using std::cout;
using std::endl;

#include <list>
using std::list;

#include <vector>
using std::vector;

enum state {
    none, any, at_least_one
};

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


int main() {
    return disjoint_set_test();
    return 0;
}
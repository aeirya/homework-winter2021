/*
    درخت دودویی
*/

#include <iostream>
#include <vector>
using namespace std;
#define type long long

template <typename T>
class binary_tree {
    struct node {
        node* lchild;
        node* rchild;
        T value;
    };
    public:
    binary_tree() : root(0) {}

    bool add(T item, T& out) {
        return add_rec(item, out);
        // return add_proc(item, out);
    }

    private:

    /*
        add the value 'item' into binary tree,
        set the value of out, value of parent of the new node,
        return value indicates validity of 'out'.
    */
    bool add_proc(T item, T& out) {
        node* nod = new node {0,0,item};
        if (root == 0) {
            root = nod;
            return false;
        } else {
            node* current = root;
            while (true) {
                if (item == current->value) 
                    return false;
                else if (item < current->value) {
                    if (current->lchild) {
                        current = current->lchild;
                    } else {
                        out = current->value;
                        current->lchild = nod; 
                        return true;
                    }
                } else {
                    if (current->rchild) {
                        current = current->rchild;
                    } else {
                        out = current->value;
                        current->rchild = nod;
                        return true;
                    }
                }
            }
        }
    }

    /*
        the same method as add_proc, but in recursive style
    */
    bool add_rec(T item, T& out) {
        if (root == 0) {
            root = max = min = create_node(item);
            return true;
        } else if (item < min->value) {
            node* n = create_node(item);
            min->lchild = n;
            out = min->value;
            min = n; 
            return true;
        } else if(item > max->value) {
            node* n = create_node(item);
            max->rchild = n;
            out = max->value;
            max = n;
            return true;
        }
        else return add_rec(item, root, out);
    }

    bool add_rec(T item, node* n, T& out) {
        if (n->value == item) return false;
        if (item < n->value) {
            if (n->lchild) 
                return add_rec(item, n->lchild, out);
            else n->lchild = create_node(item);
        } else {
            if (n->rchild)
                return add_rec(item, n->rchild, out);
            else n->rchild = create_node(item);
        }
        out = n->value;
        return true;
    }

    node* create_node(T item) {
        return new node {0,0, item};
    }
    
    node* root;
    node* min;
    node* max;
};

int main() {
    #define ONLINE_JUDGE false
    #ifndef ONLINE_JUDGE
    ios_base::sync_with_stdio(false); cin.tie(NULL);
    freopen("input.txt", "r", stdin);
    freopen("error.txt", "w", stderr);
    freopen("output.txt", "w", stdout);
    #endif

    binary_tree<type> bin;
    type out;
    bool is_valid;

    type n;
    cin >> n;

    type x;
    cin >> x;
    bin.add(x, out);
    for (int i=0; i<n-1; ++i) {
        cin >> x;
        if (bin.add(x, out))
            cout << out << endl;
        else
            cout << "_" << endl;
    }

    return 0;
}

/*
    aeirya mohammadi
*/

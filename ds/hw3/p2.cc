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

    /*
        add the value 'item' into binary tree,
        set the value of out, value of parent of the new node,
        return value indicates validity of 'out'.
    */
    bool add(T item, T& out) {
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

    private:
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

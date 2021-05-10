/*
    درخت دودویی
*/

#include <iostream>
#include <vector>
using namespace std;
#define type long long

template <typename T>
class binary_tree {
    class node {
        node* lchild;
        node* rchild;
        T value;
        // node* parent;

        node(T _value, node* _parent) : 
            lchild(0), rchild(0), parent(_parent), value(_value) {}

        bool operator<(const node& other) const {
            return  value < other.value;
        }
    };
    public:
    binary_tree() : root(0) {}

    private:
    node* root;
    node* max;
    node* min;
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

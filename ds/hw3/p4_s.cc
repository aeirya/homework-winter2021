/*
    پیاده‌سازی 
    AVL
*/

#include <iostream>
#include <string>
#include <list>

using std::cin;
using std::cout;
using std::endl;
using std::string;

#define LONG long long

/*
    debugging tool
*/
int count = 0;
void rc()
{ cout << "rc! " << count++ << endl; }

/*
    help function
*/
template <typename T>
T inline max(const T& a, const T& b)
{ return a > b ? a : b; }

namespace avl_tree
{
    template <typename E>
    class avl_tree
    {
        public:
        struct node
        {
            E data;
            node* left;
            node* right;
            int height;

            bool operator <(const node& other) const
            { return data < other.data; }

            bool operator >(const node& other) const
            { return data > other.data; }

            bool operator ==(const node& other) const 
            { return data == other.data; }

            int dif() const
            { 
                int r = right ? right->height : -1,
                    l = left ? left->height : -1;
                return r-l;
            }
        };

        avl_tree() : root(0), m_size(0) { }

        void add(E e)
        {
            if (!contains(e))
            {
                ++m_size;
                node* n = new node {e,0,0,0};
                root = insert(n, root); 
            }
        }

        void remove(E e)
        { 
            if (contains(e)) 
            {
                --m_size; 
                root = remove(root, e);
            }
        }

        bool contains(E x)
        { return find(root, x) != 0; }

        node* ceiling(E e)
        { return ceiling(root, 0, e); }

        node* floor(E e)
        { return floor(root, 0, e); }

        int size()
        { return m_size; }

        void print()
        {
            cout << root->data << " ";
            print(*root);
        }

        private:
        node* root;
        int m_size;

        node* find(node* root, E x) 
        {
            if (root == 0) return 0;
            if (x < root->data) 
                return find(root->left, x);
            if (x > root->data)
                return find(root->right, x);
            return root;
        }

        node* remove(node* root, E x)
        {
            if (root == 0) return 0;
            if (x < root->data) 
                root->left = remove(root->left, x);
            else if (x > root->data)
                root->right = remove(root->right, x);
            else // if we've found the node
            {
                node* temp;
                if (root->left && root->right)
                {
                    // next successor
                    temp = minimum(root->right);
                    root->data = temp->data;
                    root->right = remove(root->right, temp->data);
                }
                else // if one or no child
                {
                    node* temp = root;
                    root = root->left ? root->left : root->right;
                    delete temp;
                }
            }
            if (root)
                root = &balance(*root);
            return root;
        }

        // first best item with value > x
        node* ceiling(node* root, node* best, E x)
        {
            if (!root) return best;
            if (root->data > x) 
            {
                if (best == 0 || root->data < best->data)
                    best = root; 
                if (root->left)
                    return ceiling(root->left, best, x);
                else return best;
            } 
            else return best;
        }

        node* minimum(node* root) 
        {
            // if (!root) return 0;
            if (root->left)
                return minimum(root->left);
            return root;
        }

        #pragma region floor
        
        node* floor(node* root, node* best, E x)
        {
            if (!root) return best;
            if (root->data < x) 
            {
                if (best == 0 || root->data > best->data)
                    best = root; 
                if (root->right)
                    return floor(root->right, best, x);
                else return best;
            } 
            else return best;
        }

        node* maximum(node* root)
        {
            if (!root) return 0;
            if (root->right)
                return maximum(root->right);
            return root;
        }

        #pragma endregion floor


        node* insert(node* n, node* parent) 
        {
            // todo: exception for duplicate item
            if (parent == 0) return n;
            
            if (*n < *parent) 
                parent->left = insert(n, parent->left);
            else
                parent->right = insert(n, parent->right);
            
            return &balance(*parent);
        }
        
        inline void update_height(node& n)
        {
            n.height = max(
                n.left ? n.left->height + 1 : 0,
                n.right ? n.right->height + 1 : 0
            );
        }
        /*
            p: parent node
            left: whether there was a node inserted left side (or right side)
        */
        node& balance(node& p) 
        {
            update_height(*root);
            int i = p.dif();
            int j;
            
            if (i < -1) {
                j = p.left ? p.left->dif() : 0;
                if (j < 0)
                    return right_rotate(p);
                else 
                {
                    p.left = &left_rotate(*p.left);
                    return right_rotate(p);
                }
            }
    
            if (i > 1) {
                j = p.right ? p.right->dif() : 0;
                if (j > 0) 
                    return left_rotate(p);
                else
                {
                    p.right = &right_rotate(*p.right);
                    return left_rotate(p);
                }
            }
            return p;
        }
        
        // clone
        // node& left_rotate(node& p) 
        // {
        //     node* new_mid = p.right;
        //     p.right = new_mid->left;
        //     new_mid->left = &p;

        //     update_height(*new_mid->left);
        //     update_height(*new_mid);
        //     return *new_mid;   
        // }

        // node& right_rotate(node& p) 
        // {
        //     node* new_mid = p.left;
        //     p.left = new_mid->right;
        //     new_mid->right = &p;

        //     update_height(*new_mid->right);
        //     update_height(*new_mid);
        //     return *new_mid;
        // }
        
        node& left_rotate(node& p) 
        {
            node* new_mid = p.right;
            p.right = new_mid->left;
            new_mid->left = &p;

            update_height(*new_mid->left);
            update_height(*new_mid);
            return *new_mid;   
        }

        node& right_rotate(node& p) 
        {
            node* new_mid = p.left;
            p.left = new_mid->right;
            new_mid->right = &p;

            update_height(*new_mid->right);
            update_height(*new_mid);
            return *new_mid;
        }

        void print(node& p) 
        {
            cout << p.left->data << " " << p.right->data << " ";
            print(*p.left);
            print(*p.right);
        }

    };

#pragma region tests
    int test_right_rotate() 
    {
        avl_tree<int> tree;
        tree.add(10);
        tree.add(11);
        tree.add(9);
        tree.add(8);
        tree.add(7);
        
        rc();
        tree.print();
        return 0;
    }

    int test_left_rotate() 
    {
        avl_tree<int> tree;
        tree.add(8);
        tree.add(7);
        tree.add(9);
        tree.add(10);
        tree.add(11);
        
        rc();
        tree.print();
        return 0;
    }

    int test_delete_1() 
    {
        avl_tree<int> tree;
        tree.add(10);
        tree.add(11);
        tree.add(9);
        tree.add(8);
        tree.add(7);
        tree.remove(7);
        tree.remove(11);
        return 0;
    }

    int test_ceiling_1() 
    {
        avl_tree<int> tree;
        tree.add(10);
        tree.add(11);
        tree.add(9);
        tree.add(8);
        tree.add(6);
        cout << tree.ceiling(7)->data << endl;
        return 0;
    }

#pragma endregion tests

} // avl tree

struct printable
{
    string* text;
    int number;
    bool is_text;
};

std::list<printable> outputs;
void print(int x) 
{
    outputs.push_back(printable{0, x, false});
}

void print(string s)
{
    string* text = new string();
    *text = s;
    outputs.push_back(printable{text, -1, true});
}

void print_output() 
{
    for (auto& p : outputs)
    {
        if (p.is_text)
            cout << *p.text << endl;
        else
            cout << p.number << endl;
    }
}

// template <typename T>
// void print(T t) 
// { 
//     cout << t << endl; 
// }

int main() 
{
    // return avl_tree::test_ceiling_1();
    int n;
    cin >> n;
    avl_tree::avl_tree<int> tree;
    string cmd;
    for (int i=0; i<n; ++i)
    {
        cin >> cmd;
        if (cmd == "size")
        {
            print(tree.size());
        }
        else 
        {
            int x;
            cin >> x;
            if (cmd == "add")
                tree.add(x);
            else if (cmd == "remove") {
                tree.remove(x);
            }
            else if (cmd == "contains")
                tree.contains(x) ? print("YES") : print("NO");
            else
            {
                if (cmd == "ceiling") 
                {
                    auto* n = tree.ceiling(x);
                    if (n) print(n->data);
                    else print("null"); 
                }
                else if (cmd == "floor")
                {
                    auto* n = tree.floor(x);
                    if (n) print(n->data);
                    else print("null");
                }
                else print("invalid command");
            }
        }
    }
    print_output();
    return 0;
}
/*
    پیاده‌سازی 
    AVL
*/

#include <iostream>
using std::cout;
using std::endl;

#define LONG long long

template <typename T>
T inline max(const T& a, const T& b)
{ return a > b ? a : b; }

int count = 0;
void rc()
{ cout << "rc! " << count++ << endl; }

namespace avl_tree
{
    template <typename E>
    class avl_tree
    {
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

        public:
        avl_tree() : root(0) { }

        void add(E e)
        {
            node* n = new node {e,0,0,0};
            if (root == 0) 
                root = n;
            else insert(n, root); 
        }

        void print()
        {
            cout << root->data << " ";
            print(*root);
        }

        private:
        node* root;

        node* insert(node* n, node* parent) 
        {
            if (*n == *parent) return parent;
            // bool is_root = *parent == *root;
            node* final_parent;
            if (*n < *parent) 
                final_parent = insert_left(n, parent);
            else
                final_parent = insert_right(n, parent);
            
            // if (is_root) root = parent;
            update_height(*final_parent);
            return &balance(*parent, *n < *parent);
            // return parent;
        }

        inline node* insert_left(node* n, node* parent) 
        {
            if (parent->left)
                return insert(n, parent->left);
            parent->left = n;
            return parent;
        }

        inline node* insert_right(node* n, node* parent) 
        {
            if (parent->right) 
                return insert(n, parent->right);
            parent->right = n; 
            return parent;
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
        node& balance(node& p, bool left) 
        {
            int i = p.dif();
            if (left)
            {
                if (i < -1) 
                    return right_rotate(p);
            } 
            else 
            {

            }
            return p;
        }
        
        void left_rotate(node& p) 
        {
            
        }

        node& right_rotate(node& p) 
        {
            cout << "right rotate" << endl;
            node* new_mid = p.left;
            p.left = new_mid->right;
            new_mid->right = &p;
            return *new_mid;
        }

        void print(node& p) 
        {
            cout << p.left->data << " " << p.right->data << " ";
            print(*p.left);
            print(*p.right);
        }

    };

    int test() 
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
} // avl tree

int main() 
{
    return avl_tree::test();
    return 0;
}
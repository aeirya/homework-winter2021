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

        // node* remove(node* n, E key)
        // {
        //     if (root == 0) return 0;
        //     if (root->)
        // }

        node* insert(node* n, node* parent) 
        {
            // todo: exception for duplicate item
            if (parent == 0) return n;
            
            if (*n < *parent) 
                parent->left = insert(n, parent->left);
            else
                parent->right = insert(n, parent->right);
            
            update_height(*parent);
            node* subroot = &balance(*parent, *n < *parent);
            if (parent == root) root = subroot;
            return subroot;
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
                if (i < -1) return right_rotate(p);
            } 
            else 
            {
                if (i > 1) return left_rotate(p);
            }
            return p;
        }
        
        // clone
        node& left_rotate(node& p) 
        {
            node* new_mid = p.right;
            p.right = new_mid->left;
            new_mid->left = &p;
            return *new_mid;   
        }

        node& right_rotate(node& p) 
        {
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
#pragma endregion tests

} // avl tree

int main() 
{
    return avl_tree::test_left_rotate();
    return 0;
}
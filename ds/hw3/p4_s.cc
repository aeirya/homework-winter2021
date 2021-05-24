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

        void remove(E e)
        { remove(root, e); }

        private:
        node* root;


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
                    temp = ceiling(root);
                    root->data = temp->data;
                    root->right = remove(root->right, temp->data);
                }
                else // if one or no child
                {
                    temp = root->left ? root->left : root->right;
                    if (temp)
                        *root = *temp;
                    else // zero child
                    {
                        delete root;
                        return 0;
                    }
                }
            }

            update_height(*root);
            bool was_root = this->root == root;
            root = &balance(*root, true); // removing from right <-> adding from left?
            if (was_root) this->root = root;
            return root;
        }

        // next successor
        node* ceiling(node* root)
        {
            return minimum(root->right);
        }

        // node* ceiling(node* root, E x)
        // {
        //     node* temp = find(root, x);
        //     return minimum(root->right);
        // }

        node* minimum(node* root) 
        {
            // if (!root) return 0;
            if (root->left)
                return minimum(root->left);
            return root;
        }

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
            // child which went under 'addition'
            node* child = left ? p.left : p.right;
            int j = child ? child->dif() : 0;
            
            if (left)
            {  
                if (i < -1) {
                    if (j < 0)
                        return right_rotate(p);
                    else 
                    {
                        p.left = &left_rotate(*p.left);
                        return right_rotate(p);
                    }
                }
            } 
            else 
            {
                if (i > 1) {
                    if (j > 0) 
                        return left_rotate(p);
                    else
                    {
                        p.right = &right_rotate(*p.right);
                        return left_rotate(p);
                    }

                }
            }
            return p;
        }
        
        // clone
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

    int test_delete_1() {
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
#pragma endregion tests

} // avl tree

int main() 
{
    return avl_tree::test_delete_1();
    return 0;
}
/*
    پیاده‌سازی 
    AVL
*/

#define LONG long long
#define E int

namespace avl_tree
{
    struct node
    {
        E data;
        node* left;
        node* right;
        int height;

        bool operator <(node& other) const
        { return data < other.data; }

        bool operator >(node& other) const
        { return data > other.data; }

        bool operator ==(node& other) const 
        { return data == other.data; }
    };

    struct avl_tree
    {
        node* root;

        void add(E e)
        {
            node* n = new node {e,0,0,0};
            if (root == 0) 
                root = n;
            else insert(*n, *root); 
        }

        private:

        void insert(node& n, node& parent)
        {
            if (n > parent) 
            {
                if (parent.right) 
                    insert(n, *parent.right);
                else parent.right = &n;
                
            }
            else if (n < parent)
            {
                if (parent.left)
                    insert(n, *parent.left);
                else parent.left = &n;
            }
        }

        void balance(node& parent) {

        }
        
        void left_rotate(node& n) 
        {

        }
    };


} // avl tree
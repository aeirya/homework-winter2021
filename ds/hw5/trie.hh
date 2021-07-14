#define STAR '*'

template <typename T>
class trie {
    public:
    class node {
        private:
        node** children = 0;

        public:
        bool is_word = false;
        T* data = 0;

        ~node() {
            delete data;
            if (children) {
                for (int i=0; i<27; ++i) {
                    if (children[i]) delete children[i];
                }
                delete[] children;
            }
        }

        /*
            0 reserved for special character
            1-26 for alphabet
        */
        node* next(char read) {
            int i;
            if (read == STAR)
                i = 0;
            else
                i = (int) read - 96;

            if (!children) {
                children = new node*[27];
                for (int j=0; j<27; ++j)
                    children[j] = 0;
            }
            if (!children[i])
                children[i] = new node();
            
            return children[i];
        }

        T value() { return data; }
    };
    
    private:
    node* root;

    /*
        either find the word or add missing chars
        returns the node containing the last char
    */
    node* find(const string& word) {
        node* n = root;
        for (char const& c : word) {
            n = n->next(c);
        }
        return n;
    }

    public:
    trie() {
        root = new node();
    }

    ~trie() {
        delete root;
    }

    void add(const string& word, T* data) {
        node* n = find(word);
        n->data = data;
        n->is_word = true;
    }

    T* get(const string& word) {
        return find(word)->data;
    }
};
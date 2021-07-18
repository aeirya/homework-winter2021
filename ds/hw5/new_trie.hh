class trie {
    public:
    class node {
        private:
        node** children = 0;

        public:
        bool is_word = false;
        int data = -1;

        ~node() {
            if (children) {
                for (int i=0; i<26; ++i) {
                    if (children[i]) delete children[i];
                }
                delete[] children;
            }
        }

        /*
            0-25 for alphabet
        */
        node* next(char read) {
            int i = (int) read - 97;

            if (!children) {
                children = new node*[26];
                for (int j=0; j<26; ++j)
                    children[j] = 0;
            }
            if (!children[i])
                children[i] = new node();
            
            return children[i];
        }

        int value() { return data; }
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

    void add(const string& word, int data) {
        node* n = find(word);
        n->data = data;
        n->is_word = true;
    }

    int get(const string& word) {
        return find(word)->data;
    }
};
#include <iostream>
#include <vector>
#include <list>
#include <string>
#include <algorithm>

using std::cin;
using std::cout;
using std::vector;
using std::list;
using std::string;
using std::reverse;

class trie {

    class node {
        private:
        char c;
        bool is_word = false;
        node** children = 0;
        list<node*> child_it;

        public:
        node(char _c) : c(_c) {}
        ~node() {
            if (children) {
                for (int i=0; i<26; ++i) {
                    if (children[i]) delete children[i];
                }
                delete[] children;
            }
        }

        bool word() const { return is_word; }

        node* next(char read) {
            int i = (int) read - 97;
            if (!children) {
                children = new node*[26];
                for (int i=0; i<26; ++i)
                    children[i] = 0;
            }
            if (!children[i]) {
                children[i] = new node(read);
                child_it.push_back(children[i]);
            }
            return children[i];
        }

        void mark() { is_word = true; }
        
        void reset() { is_word = false; }

        bool has(char ch) { return children[ch-97] != 0; }

        auto children_iterator() const {
            return child_it.begin();
        }
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
        root = new node(0);
    }

    ~trie() {
        delete root;
    }

    node* add(const string& word) {
        node* n = find(word);
        n->mark();
        return n;
    }

    node* get_root() const {
        return root;
    }
};


/*
    out : trie t
*/
void make_reverse_words_tree(const vector<string>& A, trie& t) {
    for (const string& s : A) {
        t.add(string(s.rbegin(), s.rend()));
    }
}

int search(const trie& t, const string& word) {
    auto* n = t.get_root(); 
    for (char const& c : word) {
        if (n->has(c))
            n = n->next(c);
        else return 0;
    }

}

int main() 
{
    int n, i;
    string s;
    vector<string> A;
    trie t;

    cin >> n;
    for (i=0; i<n; ++i) 
    {
        cin >> s;
        A.push_back(s);
    }

    make_reverse_words_tree(A, t);
    
    t.add()

}

/*
    let T be trie
    add all strings (reversed)
    for each string w:
        look in T
        the remaining? should be palindrome
*/
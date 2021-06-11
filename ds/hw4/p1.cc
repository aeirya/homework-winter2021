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
    public:
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

        list<int> pal_from_start;
        list<int> pal_from_end;
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

    void find_head_tail_palindromes(const string& word, 
        list<int>& pal_from_start, list<int>& pal_from_end) {
        size_t n = word.length();
        
        // find palindromes from start
        pal_from_start.push_back(0);
        pal_from_start.push_back(1);
        bool flag;
        int l,i;
        for (l=2; l<n; ++l) {
            flag = true;
            for (i=0; i<l; ++i) {
                if (word[i] != word[l-i]) {
                    flag= false;
                    break;
                } 
            }
            if (flag) pal_from_start.push_back(l);
        }
        // find palindromes from end
        pal_from_end.push_back(0);
        pal_from_end.push_back(1);
        for (l=2; l<n; ++l) {
            flag = true;
            for (i=0; i<l; ++i) {
                if (word[n-1-i] != word[n-1-(l-i)]) {
                    flag= false;
                    break;
                } 
            }
            if (flag) pal_from_end.push_back(l);
        }
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
        find_head_tail_palindromes(word, n->pal_from_start, n->pal_from_end);
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

trie::node* search(const trie& t, const string& word, bool& reached_end, int& depth) {
    auto* n = t.get_root(); 
    reached_end = false;
    depth = 0;
    for (char const& c : word) {
        if (!n->has(c)) return n;
        n = n->next(c);
        ++depth;
    }
    reached_end = true;
    return n;
}

void 

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
    int depth, count = 0;
    bool is_reached_end;
    for (string& word : A) {
        search(t, word, is_reached_end, depth);
        if (is_reached_end) {

        }
    }

}

/*
    let T be trie
    add all strings (reversed)
    for each string w:
        look in T
        the remaining? should be palindrome
*/
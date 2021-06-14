#include <iostream>
#include <vector>
#include <list>
#include <string>
#include <algorithm>

using std::cin;
using std::cout;
using std::endl;
using std::vector;
using std::list;
using std::string;
using std::reverse;

/* 
    returns true if the w_start,...,w_end is palindrome
*/
bool is_palindrome(const string& word, int start, int end) {
    while (start < end)
        if (word[start++] != word[end--]) return false;
    return true;
}

/*
    the word are kept in reverse order
    each node contains string ids where w_depth,...,w_1 is palindrome
*/
class trie {
    public:
    class node {
        private:
        char c = 0;
        bool is_word = false;
        list<int> words; // all the words residing here
        
        node** children = 0;
        list<int> pal_from_start_ids;

        public:
        node(char _c) : c(_c) {}
        ~node()
        {
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
            if (!children[i])
                children[i] = new node(read);
            return children[i];
        }

        void mark(int id) { 
            is_word = true;
            words.push_back(id);
        }

        char get_char() {return c;}

        bool has(char ch) { return children && children[ch-97] != 0; }

        int words_but_x(int x) {
            bool found = false;
            for (int index : words)
                found = found || index == x;
            return words.size() - found;
        }

        void add_pal_child() { ++pal_children; }

        // void add_pal_id(int id) { pal_from_start_ids.push_back(id); }
        
        class pal_it {
            private:
            const list<int>& pal;
            public:
            pal_it(list<int>& p): pal(p) {}
            list<int>::const_iterator begin() const { return pal.begin(); }
            list<int>::const_iterator end() const { return pal.end(); }
        };
        
        pal_it get_pal_ids() {
            return pal_it(pal_from_start_ids);
        }

        int pal_children = 0;
    };
    
    private:
    node* root;

    public:
    trie() { root = new node(0); }

    ~trie() { delete root; }

    void add(const string& word, int id) {
        node *n = root;
        
        // adding the string in reverse order
        for (int i=word.length()-1; i>=0; --i) {
            n = n->next(word[i]);
            if (is_palindrome(word, 0, i)) {
                n->add_pal_child();
            }
        }
        // n->add_pal_id(id); // zero length string is also pal
        n->mark(id);
    }

    node* get_root() const { return root; }
};

/*
    returns number of palindrome pairs found with 'word'
*/
int search(const trie& t, const string& word, int id) {
    int count = 0,
        depth = 0,
        len = word.length();
    cout << "searching word " << word << " in trie" << endl;
    auto* n = t.get_root();
    for (char const c : word) {
        if (!n->has(c)) 
            return count;
        n = n->next(c);
        // cout << "current char: " << n->get_char() << endl;
        // cout << "depth: " << depth << endl;
        /* finding palindrome words w of shape word|w (reverse(w) is also prefix of word) */
        bool found = (n->word() && is_palindrome(word, depth, len-1));
        if (found)
            cout << "found!" << endl;
        if (found) count += n->words_but_x(id);
        ++depth;
        // if (found) cout << id << "," << n->get_id() << endl;
    }
    count += n->words_but_x(id);
    count += n->pal_children;

    /* finding paldrome words w of shape w|rev(word) (w starts with reverse of word) */
    // we only need to check number of paldinrome beginnings after current node (which is preprocessed)
    // n = t.get_root();
    // for (int i=len-1; i>=0; --i)
    //     n = n->next(word[i]);
    // cout << "adding " << n->pal_children << endl;
    // count += n->pal_children;
    // for (int child = 0; child<26; ++child) {
    //     n->
    // }
    // for (int i : n->get_pal_ids()) {
    //     count += i != id; // only different string pairs
    //     // if (i != id)
    //     //     cout << "inserting id: " << i << endl;
    //     // cout << id << "," << i << endl;
    // }
    return count;
}

long long solve(vector<string>& A) {
    int i, 
        n = A.size();
    long long count = 0;
    trie t;

    for (i=0; i<n; ++i) 
        t.add(A[i], i);
    for (i=0; i<n; ++i)
        count += search(t, A[i], i);
    return count;
}

int test0() {
    vector<string> A = {   
        "abaccabaab"
        ,"accaba"
        ,"abacc"
        ,"ab"
        ,"ba"
        ,"aba"
        ,"ccaba"
        ,"abaaba"};
    cout << solve(A) << endl;
    return 0;
}

int test1() {
    vector<string> A = {   
        "ab"
        ,"ba"};
    cout << solve(A) << endl;
    return 0;
}

int main() {
    // return test1();

    int n, i;
    string s;

    vector<string> A;
    trie t;

    // getting input
    cin >> n;
    for (i=0; i<n; ++i) {
        cin >> s;
        A.push_back(s);
    }

    cout << solve(A) << endl;

    return 0;
}

/*
    let T be trie
    add all strings (reversed)
    for each string w:
        look in T
        the remaining? should be palindrome
*/

// کلمات
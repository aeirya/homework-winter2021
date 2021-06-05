/*
    بی‌پیشوندی
*/

#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using std::cin;
using std::cout;
using std::endl;
using std::string;
using std::vector;
using std::sort;

class trie {
    class node {
        private:
        char c;
        bool is_word = false;
        node** children = 0;

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

        node* next(char read) {
            int i = (int) read - 97;
            if (!children) {
                children = new node*[26];
                for (int i=0; i<26; ++i)
                    children[i] = 0;
            }
            if (!children[i]) {
                children[i] = new node(read);
            }
            return children[i];
        }

        void mark() { is_word = true; }
        
        void reset() { is_word = false; }

        bool word() const { return is_word; }
    };
    
    private:
    node* root;

    /*
        either find the word or add missing chars
        returns the node containing the last char

        collision: whether there was a suffic added to trie
    */
    node* find(const string& word, bool& collision) {
        node* n = root;
        for (char const& c : word) {
            n = n->next(c);
            if (n->word()) {
                n->reset();
                collision = true;
            }
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

    void add(string word, bool& collision) {
        find(word, collision)->mark();
    }

    // void remove(string word, bool& collision) {
    //     find(word, collision)->reset();
    // }
};

int solve(int n, int m, vector<string>& words) {
    // sort the words
    sort(words.begin(), words.end(), [](const string& s1, const string& s2) {
        return s1.length() < s2.length();
    });

    // make trie
    trie T;
    int count = 0;
    bool flag;
    int max = 0;
    string word;
    for (int i=0; count<m && i<n; ++i) {
        flag = false;
        word = words[i];
        max = word.length();
        T.add(word, flag); 
        if (!flag) ++count;
    }
    if (count < m) return -1;
    return max;
}

int test1() {
    int n = 4,
        m = 2;
    vector<string> words;
    words.reserve(n);
    words.push_back("zookar");
    words.push_back("zoo");
    words.push_back("jall");
    words.push_back("jaller");

    int max = solve(n, m, words);
    cout << max << endl;
    return 0;
}

int main() {
    // return test1();
    int n, m;
    cin >> n >> m;
    // input words
    vector<string> words;
    words.reserve(n);
    string buffer;
    for (int i=0; i<n; ++i) {
        cin >> buffer;
        words.push_back(buffer);
    }
    cout << solve(n, m, words) << endl;
}

/*
    aeirya mohammadi
*/
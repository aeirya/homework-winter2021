#include <iostream>
using std::cin;
using std::cout;
using std::endl;

#include <list>
using std::list;

#include <vector>
using std::vector;

#include <queue>
using std::queue;

using std::string;

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
    node* find(const string& word, int star_index) {
        int m = word.length();
        node* n = root;
        for (int i=0; i<m; ++i) {
            if (i != star_index) n = n->next(word[i]);
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

    void add(const string& word, int star_index, int data) {
        node* n = find(word, star_index);
        n->data = data;
        n->is_word = true;
    }

    int get(const string& word, int star_index) {
        return find(word, star_index)->data;
    }
};

class graph {
    private:
    vector<list<int>> A;

    public:
    graph(int n) {
        A.resize(n);
    }

    void add_edge(int a, int b) {
        A[a].push_back(b);
        A[b].push_back(a);
    }

    list<int>& neighbors(int v) {
        return A[v];
    }

    int size() {
        return A.size();
    }
};

struct tuple {
    int v;
    int level;
};

int bfs(graph& g, int end_i, bool visited[], queue<tuple>& q) {
    if (q.empty()) return -1;

    tuple t = q.front();
    q.pop();
    if (t.v == end_i) return t.level;

    auto& adj = g.neighbors(t.v);
    for (int i : adj) {
        if (!visited[i]) {
            visited[i] = true;
            q.push(tuple{i, t.level+1});
        }
    }
    return bfs(g, end_i, visited, q);
}

int solve(graph& g, int end_i) {
    int n = g.size();
    bool visited[n];

    for (int i=0; i<n; ++i)
        visited[i] = false;

    queue<tuple> q;
    // 0 : begin word index
    visited[0] = true;
    q.push(tuple{0,0});
    return 1 + bfs(g, end_i, visited, q);
}

int main()
{
    string begin_word, end_word;
    int n;

    cin >> begin_word 
        >> end_word
        >> n;

    // all words + begin_word
    ++n;
    vector<string> dictionary(n);

    // setup dictionary
    dictionary[0] = begin_word;
    for (int i=1; i<n; ++i)
        cin >> dictionary[i];

    // word length
    int m = begin_word.length();
    // words for each pattern
    vector<list<int>> pw(n*m);
    // a trie for each pattern index
    vector<trie> T(m);
    // generate patterns for each word
    int next_id = 0,
        id;
    for (int i=0; i<n; ++i) {
        string& word = dictionary[i];
        for (int j=0; j<m; ++j) {
            id = T[j].get(word, j);
            if (id < 0) {
                T[j].add(word, j, next_id);
                pw[next_id].push_back(i); // register word i to pattern 
                ++next_id;
            } else {
                pw[id].push_back(i); // register word i to an existing pattern
            }
        }
    }

    graph g(n);
    // make graph relations
    for (auto& cluster : pw) {
        for (int i : cluster) {
            for (int j : cluster) {
                if (i!=j) g.add_edge(i, j);
            }
        }
    }

    int end_i = -1;
    for (int i=1; i<n; ++i) {
        if (dictionary[i].compare(end_word)==0) {
            end_i = i;
            break;
        }
    }
    if (end_i < 0) {
        cout << 0 << endl;
        return 0;
    }

    int result = solve(g, end_i);
    cout << result << endl;
}
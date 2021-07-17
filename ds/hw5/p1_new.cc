#include <iostream>
using std::cin;
using std::cout;
using std::endl;

#include <list>
using std::list;

#include <vector>
using std::vector;

using std::string;

#include "trie.hh"

/*
    each word contains a list of type T*
*/
template <typename T>
class list_trie {
    typedef list<const T*> tlist;

    private:
    trie<tlist> t;

    public:
    tlist* add(const string& word, const T* data) {
        auto* list = get(word);
        list->push_back(data);
        return list;
    }

    tlist* get(const string& word) {
        auto* list = t.get(word);
        if (!list) {
            list = new tlist();
            t.add(word, list);
        }
        return list;
    }
};

inline string star(string word, int index) {
    word[index] = STAR;
    return word;
}

/*
    neighbors for all template clusters
*/
typedef list<const string*> strlist; 
class cluster_trie {
    private:
    list_trie<string> t;

    public:
    strlist* add(const string& word, int star_index) {
        /*
            key: word (with i'th index starred)
            val: word itself
         */
        return t.add(star(word, star_index), &word);
    }

    /* get cluster */
    strlist* get(const string& word, int star_index) {
        return t.get(star(word, star_index));
    }
};

/*
    clusters each string is in
*/
typedef list_trie<strlist> string_trie;


class graph {
    private:
    cluster_trie clusters;
    string_trie strings;

    public:
    void add(const string& word) {
        int len = word.length();
        strlist* cluster;
        auto* cluster_list = strings.get(word);
        for (int i=0; i<len; ++i) {
            cluster = clusters.add(word, i);
            cluster_list->push_back(cluster);
        }
    }

    auto* get_neighbors(const string& word) {
        return strings.get(word);
    }
};

int bfs(graph& g, queue<const string*> q, trie<bool> v) {
    if (q.empty()) return 0;

    auto* word = q.front();
    q.pop();

    // visit here
    cout << *word << endl;

    const auto neighbors = g.get_neighbors(*word);

    for (const auto& lists_it : *neighbors) {
        for (const auto& it : *lists_it) {
            const string other = *it;
            if (v.get(other) == 0) {
                v.add(other, (bool*)1);
                q.push(&other);
            }
        }
    }

    bfs(g, q, v);
    // return value
}

int solve(
    const string& begin_word,
    const string& end_word,
    graph& g,
    const list<string>& dictionary
    ) 
{
    trie<bool> visited;
    queue<const string*> q;
    
    for (auto& word : dictionary) {
        if (visited.get(word) == 0) {
            visited.add(word, (bool*)1);
            q.push(&word);
            bfs(g, q, visited);
        }
    }
    return 0;
}

int main()
{
    string begin_word, end_word;
    int n;

    cin >> begin_word 
        >> end_word
        >> n;

    // all words
    vector<string> dictionary(n);
    // patterns for every word
    vector<string> patterns(n);

    for (int i=0; i<n; ++i)
        cin >> dictionary[i];

    for (int i=0; i<n; ++i) {
        
    }

    graph g(n);


    

    // make graph relations

    cout << solve(begin_word, end_word, g, dictionary) << endl;
}
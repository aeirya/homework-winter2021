#include <iostream>
#include <list>
#include <queue>

using std::cin;
using std::cout;
using std::endl;
using std::string;
using std::list;
using std::queue;

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

/*
    hold lists of lists of T
    is iterable
*/
template <typename T>
class listlist {
    public:
    typedef list<const list<const T*>*> lol; // list of lists

    private:
    lol* lists;

    class iterator {
        typedef typename std::list<const list<const T*>*>::iterator t_lol_it;
        typedef typename std::list<const T*>::iterator t_lst_it; 

        private:
        t_lol_it lists_it;
        t_lst_it it;
        lol* m_lists;

        public:
        iterator(const t_lol_it& lsi, const t_lst_it& li, lol* p_lists) :
            lists_it(lsi), it(li), m_lists(p_lists) {}

        iterator(lol* _lists) : m_lists(_lists) {} 

        iterator& operator++() {
            ++it;
            if (it == (*lists_it)->end()) {
                ++lists_it;
                if (lists_it != m_lists->end())
                    it = (*lists_it)->begin();
            }
            return *this;
        }

        const T* operator*() {
            return *it;
        }

        friend bool operator==(const iterator& me, const iterator& other) {
            return 
            (me.m_lists->size() == 0 || other.m_lists->size() == 0)  ||
            (me.it == other.it && other.lists_it == me.lists_it);
        } 

        friend bool operator!=(const iterator& me, const iterator& other) {
            return me.it != other.it || other.lists_it != me.lists_it;
        }        
    };

    public:
    listlist(lol* l) : lists(l) {}

    void add(list<const T*>* l) {
        lists->push_back(l);
    }

    iterator begin() const {
        return iterator(lists->begin(), (*(lists->begin()))->begin(), lists);
    }

    iterator end() const {
        if (lists->size() == 0)
            return iterator(lists);
        auto e = lists->end();
        --e;
        auto le = (*e)->end();
        return iterator(lists->end(), le, lists);
    }
};

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

    listlist<string>* get_neighbors(const string& word) {
        auto* ll = strings.get(word);
        return new listlist<string>(ll);
    }
};

int bfs(graph& g, queue<const string*> q, trie<bool> v) {
    if (q.empty()) return 0;

    auto* word = q.front();
    q.pop();

    // visit here
    cout << *word << endl;

    const auto neighbors = g.get_neighbors(*word);
    string other;
    for (
        auto it = neighbors->begin();
        it != neighbors->end();
        ++it
    ) {
        other = **it;
        if (v.get(other) == 0) {
            v.add(other, (bool*)1);
            q.push(&other);
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
    list<string> dictionary;
    int n;

    cin >> begin_word 
        >> end_word
        >> n;

    string temp;
    for (int i=0; i<n; ++i) {
        cin >> temp;
        dictionary.push_back(temp);
    }

    graph g;
    for (const string& word : dictionary) {
        g.add(word);
    }

    cout << solve(begin_word, end_word, g, dictionary) << endl;
}
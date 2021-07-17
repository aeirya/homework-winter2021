#include <iostream>
using std::cin;
using std::cout;
using std::endl;

#include <list>
using std::list;

#include <vector>
using std::vector;

#include <algorithm>
using std::sort;

struct edge {
    int from;
    int to;
    int weight;

    bool operator<=(const edge& other) const {
        return this->weight <= other.weight;
    }

    bool operator<(const edge& other) const {
        return this->weight < other.weight;
    }
};

template <typename T>
class tailcut_list {
    private:
    vector<T> m_list;
    typename std::vector<T>::reverse_iterator rit;

    public:
    tailcut_list(vector<T> lst) 
        : m_list(lst) {
        sort(m_list.begin(), m_list.end());
        rit = m_list.rbegin();
    }

    /*
        places the tail where all items are smaller than x
    */
    void tail_as(T x) {
        // while (*rit < x)
        //     ++rit;
        // while (*rit >= x)
        //     --rit;
    }

    auto rbegin() {
        return rit;
    }
};

using graph = vector<edge>;

using component = list<int>;

list<component>* get_components(graph g) {
    tailcut_list<edge> l(g);
    return new list<component>();
}

int main() {
    int n, m, k;
    cin >> n >> m >> k;

    vector<edge> edges;
    int f, t, w;
    for (int i=0; i<m; ++i) {
        cin >> f >> t >> w;
        edges.push_back(edge{f, t, w});
    }
    return 0;
}
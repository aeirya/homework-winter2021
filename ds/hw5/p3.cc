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
    const int from;
    const int to;
    const int weight;

    bool operator<=(const edge& other) const {
        return this->weight <= other.weight;
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
};

using graph = vector<edge>;

using component = list<int>;

list<component>* get_components(graph g) {
    tailcut_list<edge> l(g);
    return new list<component>();
}

// int main() {
//     int n, m, k;
//     cin >> n >> m >> k;

//     int M[];
//     for (int i=0; i<m; ++i) {
//         cin M[i]
//     }
//     return 0;
// }
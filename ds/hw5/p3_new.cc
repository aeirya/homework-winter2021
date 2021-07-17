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

#include <stack>
using std::stack;

#include <algorithm>
using std::sort;

#define DEBUG 0

struct edge {
    int from;
    int to;
    int weight;
};

bool operator==(const edge& a, const edge& b) {
    return a.weight == b.weight
        && a.from == b.from 
        && a.weight == b.weight;
}

bool operator<(const edge& a, const edge& b) {
    return a.weight < b.weight || 
        a.weight == b.weight && (
            a.from < b.from || 
            a.from == b.from && a.to < b.to
    );
}

class graph {
    private:
    vector<list<int>> A; // adjacency list

    void connect(int from, int to) {
        A[from].push_back(to);
        A[to].push_back(from);
    }

    void disconnect(int from, int to) {
        A[from].remove(to);
        A[to].remove(from);
    }
    
    public:

    graph(int n) {
        A.resize(n);
    }

    void add(edge& e) {
        connect(e.from-1, e.to-1);
    }

    void remove(edge& e) {
        disconnect(e.from-1, e.to-1);
    }

    list<int>& neighbors(int v) {
        return A[v];
    }

    int size() {
        return A.size();
    }
};

#pragma region copied_from_two

void dfs_visit(int v, graph& g, bool visited[], stack<int>* finished) {
    visited[v] = true;
    auto neighbors = g.neighbors(v);
    for (int n : neighbors)
        if (!visited[n])
            dfs_visit(n, g, visited, finished);
    
    if (finished) 
        finished->push(v);
}

/*
    get connected component sizes
*/
list<int> cc_sizes(graph& g) {
    int n = g.size();
    bool visited[n];

    for (int i=0; i<n; ++i)
        visited[i] = false;

    list<int> cc;
    for (int v=0; v<n; ++v) {
        int size = 0;
        stack<int> st;
        if (visited[v]) continue;
        dfs_visit(v, g, visited, &st);
        cc.push_back(st.size());
    }
    return cc;
}   

#pragma endregion

/*
    returns all paths in component
    n : component size
*/
int comp_paths(int n) {
    return n*(n-1)/2;
}

int total_paths(graph& g) {
    list<int> c = cc_sizes(g);
    int sum=0;
    for (int size : c)
        sum += comp_paths(size);
    return sum;
}

int drop(edge e[], int m, int threshold) {
    int i=m-1;
    while (i>=0 && e[i].weight>threshold) {
        --i;
    }
    return i+1;
}

int main() {
    int n, m, k;
    cin >> n >> m >> k;

    edge e[m];
    for (int i=0; i<m; ++i) {
        cin >> e[i].from >> e[i].to >> e[i].weight;
    }

    // sort edges
    sort(e, e+m);
    m = drop(e, m, k);

    graph g(n);
    for (int i=0; i<m; ++i)
        g.add(e[i]);

    int paths, new_m;
    paths = total_paths(g);
    new_m = drop(e, m, k-1);

    for (int i=m-1; i>=new_m; --i)
        g.remove(e[i]);

    paths -= total_paths(g);
    cout << paths << endl;
    return 0;
}

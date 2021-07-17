/*
    فیزیک‌دان نابغه
*/

#include <iostream>
using std::cin;
using std::cout;
using std::endl;

#include <list>
using std::list;

#include <vector>
using std::vector;

#include <stack>
using std::stack;

#define DEBUG 0

class graph {
    private:
    vector<list<int>> A;

    public:
    graph(int n) {
        A.resize(n);
    }

    list<int>& neighbors(int v) {
        return A[v];
    }

    void add_edge(int from, int to) {
        A[from].push_back(to);
    }

    int size() {
        return A.size();
    }
};

graph to_undirected_graph(graph& dir) {
    int n = dir.size();
    graph g(n);
    for (int i=0; i<n; ++i) {
        auto& adj = dir.neighbors(i);
        for (int j : adj) {
            g.add_edge(i, j);
            g.add_edge(j, i);
        }
    }
    return g;
}

void dfs_visit(int v, graph& g, bool visited[], list<int>* finished) {
    visited[v] = true;
    auto neighbors = g.neighbors(v);
    for (int n : neighbors)
        if (!visited[n])
            dfs_visit(n, g, visited, finished);
    
    if (finished) 
        finished->push_back(v);
}

bool is_dag(graph& g, list<int>& comp) {
    int n = g.size();
    bool visited[n];
    list<int> finished;
    vector<int> finish_time(n);
    list<int> neighbors;

    for (int i=0; i<n; ++i)
        visited[i] = false;

    // dfs visit (on component vertices)
    for (int v : comp)
        if (!visited[v]) 
            dfs_visit(v, g, visited, &finished);

    // set finish times 
    int t = 0;
    for (int i : finished) {
        finish_time[i] = t++;
    }

    // dfs again and find back edge
    for (int v : comp) {
        neighbors = g.neighbors(v);
        for (int to : neighbors)
            if (finish_time[v] < finish_time[to])
                return false;
    }
    return true;
}

/*
    get connected components for undirected graph
*/
list<list<int>> get_connected_components(graph& g) {
    int n = g.size();
    bool visited[n];

    for (int i=0; i<n; ++i)
        visited[i] = false;

    list<list<int>> cc;
    for (int v=0; v<n; ++v) {
        list<int> comp;
        if (visited[v]) continue;
        dfs_visit(v, g, visited, &comp);
        cc.push_back(comp);
    }
    return cc;
}

int main() {
    int n,  // towns
        m;  // important pairs

    cin >> n >> m;

    int from, to;
    graph g(n);
    for (int i=0; i<m; ++i) {
        cin >> from >> to;
        g.add_edge(from-1, to-1);
    }

    graph undir = to_undirected_graph(g);
    auto cc = get_connected_components(undir);
    int sum = g.size()-1;
    for (auto& comp : cc) {
        if (!is_dag(g, comp)) {
            ++sum;
        }
    }
    cout << sum << endl;
}

/*
    aeirya mohammadi
*/
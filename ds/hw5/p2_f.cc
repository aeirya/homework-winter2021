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

#include <queue>
using std::queue;

#include <stack>
using std::stack;

#include <algorithm>
using std::sort;

#define DEBUG 0

#pragma region 
class graph {
    public:
    virtual void add_edge(int from, int to) = 0;
    virtual const list<int>& neighbors(int v) = 0;
    virtual int size() = 0;
};

class directed_graph : public graph {
    private: 
    int n;
    vector<list<int>> A;
    
    public:
    directed_graph(int _n) {
        n = _n;
        A.resize(_n);
    }

    void add_edge(int from, int to) {
        A[from].push_back(to);
    }

    const list<int>& neighbors(int v) {
        return A[v];
    }

    directed_graph transpose() {
        directed_graph g(n);
        for (int i=0; i<n; ++i) {
            for (int j : neighbors(i)) {
                g.add_edge(j, i);
            }
        }
        return g;
    }

    int size() {
        return n;
    }
};

class undirected_graph : public graph {
    private:
    directed_graph g;
    int n;

    public:
    undirected_graph(int _n) : n(_n) , g(_n) { }

    undirected_graph(directed_graph& d) : n(d.size()), g(d.size()) {
        bool A[n][n];
        for (int i=0; i<n; ++i)
            for (int j=0; j<i; ++j)
                A[i][j] = false;

        for (int i=0; i<n; ++i) {
            auto neigh = d.neighbors(i);
            for (int j : neigh)
                if (i<j && !A[j][i] || j<i && !A[i][j])
                    add_edge(i,j);
        }
    }

    void add_edge(int a, int b) {
        g.add_edge(a, b);
        g.add_edge(b, a);
    }

    const list<int>& neighbors(int v) {
        return g.neighbors(v);
    }

    int size() {
        return n;
    }
};

undirected_graph to_undirected_graph(directed_graph& g) {
    return undirected_graph(g);
}
#pragma endregion

void c() {
    cout << "checkpoint" << endl;
}

void dfs_visit(int v, graph& g, bool visited[], stack<int>* finished) {
    if (DEBUG) cout << "visiting " << v << endl;
    visited[v] = true;
    auto neighbors = g.neighbors(v);
    for (int n : neighbors)
        if (!visited[n])
            dfs_visit(n, g, visited, finished);
    
    if (finished) 
        finished->push(v);
}

/*
    get connected components
*/
list<list<int>> get_connected_components(undirected_graph& g) {
    int n = g.size();
    bool visited[n];
    stack<int> st;

    for (int i=0; i<n; ++i)
        visited[i] = false;

    list<list<int>> cc;
    for (int v=0; v<n; ++v) {
        if (visited[v]) continue;
        dfs_visit(v, g, visited, &st);
        list<int> comp;
        while (!st.empty()) {
            comp.push_back(st.top());
            st.pop();
        }
        cc.push_back(comp);
    }
    return cc;
}

/*
    strongly connected components
*/
list<list<int>> get_scc(directed_graph& g) {
    int n = g.size();
    bool visited[n];
    stack<int> finished;
    
    // reset visited
    for (int i=0; i<n; ++i)
        visited[i] = false;

    // get finish times
    for (int i=0; i<n; ++i) {
        if (!visited[i])
            dfs_visit(i, g, visited, &finished);
    }
    
    directed_graph gt = g.transpose();

    // reset visited
    for (int i=0; i<n; ++i)
        visited[i] = false;
    
    int v;
    stack<int> st;
    list<list<int>> scc;
    // dfs in order of finish times
    while (!finished.empty()) {
        v = finished.top();
        finished.pop();
        if (!visited[v]) {
            dfs_visit(v, gt, visited, &st);
            
            // empty components stack
            list<int> comp;
            while (!st.empty()) {
                v = st.top();
                st.pop();
                comp.push_back(v);
            }
            scc.push_back(comp);
            
        }
    }
    return scc;
}

// bool is_dag(directed_graph& g, list<int>& comp) {
//     int n = g.size();
//     bool visited[n];
//     stack<int> st;
//     list<int> neighbors;

//     for (int i=0; i<n; ++i)
//         visited[i] = false;

//     int start = comp.front();
//     if (DEBUG) cout << "checking if dag, starting " << start << endl;
    
//     st.push(start);

//     while (!st.empty()) {
//         int v = st.top();
//         st.pop();
//         if (DEBUG) cout << "visit " << v << endl;
//         if (visited[v]) return false;

//         visited[v] = true;
//         neighbors = g.neighbors(v);
//         for (int neighbor : neighbors)
//             st.push(neighbor);
//     }
//     return true;
// }

/*
    checks if a subset of graph g is dag
*/
bool is_dag(directed_graph& g, list<int>& comp) {
    int n = g.size();
    bool visited[n];
    stack<int> finished;
    vector<int> finish_time(n);
    list<int> neighbors;

    for (int i=0; i<n; ++i)
        visited[i] = false;

    // dfs visit (on component vertices)
    for (int v : comp)
        if (!visited[v]) 
            dfs_visit(v, g, visited, &finished);

    // set finish times 
    for (int t=n-1; t>=0; --t) {
        finish_time[finished.top()] = t;
        finished.pop();
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

void print_component(list<int>& comp) {
    cout << "component is : ";
    for (int v : comp) 
        cout << v << " ";
    cout << endl;
}

int cc_test() {
    directed_graph g(6);
    g.add_edge(1,2);
    g.add_edge(2,3);
    g.add_edge(4,5);
    c();
    auto undirected = to_undirected_graph(g);
    c();
    auto cc = get_connected_components(undirected);
    c();
    for (auto comp : cc) {
        for (int v : comp) 
            cout << v << " ";
        cout << endl;
    }
    return 0;
}

int main()
{  
    int n,  // towns
        m;  // important pairs

    cin >> n >> m;

    // int a[m],  // from 
    //     b[m];  // to

    // for (int i=0; i<m; ++i)
    //     cin >> a[i] >> b[i];

    directed_graph g(n);
    int from, to;
    for (int i=0; i<m; ++i) 
    {
        cin >> from >> to;
        g.add_edge(from-1, to-1);
    }

    auto undirected = to_undirected_graph(g);
    auto cc = get_connected_components(undirected);
    int sum = g.size()-1;
    // cout << "SUM STARTS WITH " << sum << endl;
    bool dag;
    for (auto comp : cc) {
        // print_component(comp);
        dag = is_dag(g, comp);
        // if (dag) cout << "DAG" << endl;
        if (!dag) ++sum;
    }
    cout << sum << endl;
}

/*
    aeirya mohammadi
*/
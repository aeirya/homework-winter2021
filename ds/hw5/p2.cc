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

#include "graph.hh"

void c() {
    cout << "checkpoint" << endl;
}

void dfs_visit(int v, directed_graph& g, bool visited[], stack<int>* finished) {
    visited[v] = true;
    auto neighbors = g.neighbors(v);
    for (int n : neighbors)
        if (!visited[n])
            dfs_visit(n, g, visited, finished);
    
    if (finished) 
        finished->push(v);
}

/*
    strongly connected components
*/
list<list<int>> get_scc(directed_graph& g) {
    int n = g.get_size();
    bool visited[n];
    stack<int> finished;
    
    // reset visited
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
        g.add_edge(from, to);
    }

    auto scc = get_scc(g);
    for (auto comp : scc) {
        for (int v : comp) {
            cout << v << " ";
        }
        cout << endl;
    }

}
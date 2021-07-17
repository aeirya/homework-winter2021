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

struct component {
    int n;

    int paths() {
        return n*(n-1)/2;
    }
};

class graph {
    private:
    int n;
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
    graph() {}

    graph(int n) {
        this->n = n;
        A.resize(n);
        // for (int i=0; i<n; ++i)
        //     A[i] = list<int>();
        if (DEBUG)
            cout << "graph made" << endl;
    }

    void add(edge& e) {
        connect(e.from-1, e.to-1);
        if (DEBUG)
            cout << "edge added" << endl;
    }

    void remove(edge& e) {
        disconnect(e.from-1, e.to-1);
        cout << "removing " << e.from << "," << e.to << endl;
    }

    /* get connected components */
    list<component> gcc() {
        int i, // counter
            x; // current to visit 
        stack<int> s; // dfs stack
        bool visited[n]; // dfs flag
        list<list<int>> c; // component lists

        // init
        for (i=0; i<n; ++i) 
            visited[i] = false;

        // do dfs
        for (i=0; i<n; ++i) {
            if (visited[i]) continue;
            list<int> comp; // component starting from i
            s.push(i);
            while (!s.empty()) {
                x = s.top();
                s.pop();
                if (visited[i]) continue;
                visited[i] = true;
                cout << "visiting " << x << endl;
                comp.push_back(x);
                for (int adj : A[x]) {
                    s.push(adj);
                    cout << "i see " << adj << endl;
                }
            }
            c.push_back(comp);
        }

        // calc component sizes
        list<component> result;
        for (auto& comp : c) {
            result.push_back(component{(int)comp.size()});
            cout << "front: " << result.front().n << endl;
        }
        return result;
    }
};

class egraph {
    private:
    int m;
    edge* edges;
    graph g;

    public:
    egraph(edge e[], int me, graph& g) {
        sort(e, e+me);
        edges = e;
        m = me;
        this->g = g;
    }

    /* drops edges bigger than threshold */
    void drop_edges(int threshold) {
        int i=m-1;
        while (i>=0 && edges[i].weight>threshold) {
            g.remove(edges[i]);
            --i;
            --m;
        }
    }
};

int total_paths(graph& g) {
    cout << "\\\\" << endl;
    list<component> c = g.gcc();
    int sum=0;
    for (auto& comp : c) {
        sum += comp.paths();
    }
    return sum;
}

int main() {
    int n, m, k;
    cin >> n >> m >> k;

    graph g(n);
    edge e[m];
    for (int i=0; i<m; ++i) {
        cin >> e[i].from >> e[i].to >> e[i].weight;
        g.add(e[i]);
    }

    int x;
    egraph eg(e, m, g);
    // eg.drop_edges(k);
    x = total_paths(g);
    // eg.drop_edges(k-1);
    // x -= total_paths(g);
    cout << x << endl;
    return 0;
}


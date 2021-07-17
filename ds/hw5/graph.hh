
class directed_graph {
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

    int get_size() {
        return n;
    }
};

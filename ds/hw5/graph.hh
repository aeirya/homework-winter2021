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
#include "common.hh"
#include "graph.hh"

int main() {
    directed_graph g(5);
    g.add_edge(1,2);
    g.add_edge(1,4);
    g.add_edge(1,3);
    g.add_edge(5,1);
    g.add_edge(4,1);
    auto t = g.transpose();
    for (int i : t.neighbors(1)) {
        cout << i << endl;
    }
    return 0;
}
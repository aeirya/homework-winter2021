#include <iostream>
using std::cin;
using std::cout;
using std::endl;

#include <list>
using std::list;

#include <vector>
using std::vector;

// class graph {
//     private:
//     vector<list<int>> A;

//     public:
//     graph(int n) {
//         A.resize(n);
//     }

//     void add_edge(int a, int b) {
//         A[a].push_back(b);
//         A[b].push_back(a);
//     }

//     list<int>& neighbors(int v) {
//         return A[v];
//     }

//     int size() {
//         return A.size();
//     }
// };

inline int min(int x, int y) {
    return x<y ? x:y;
}

struct tuple {
    int x,y;
};

void visit(int current, int parent, graph& g, bool visited[], int low_time[], int visit_time[], vector<tuple>& out) {
    static int time = 0;
    visited[current] = true;
    visit_time[current] = low_time[current] = time++;

    auto& neighbors = g.neighbors(current);
    for (int neighbor : neighbors) {
        if (neighbor == parent) continue;
        if (!visited[neighbor]) {
            visit(neighbor, current, g, visited, low_time, visit_time, out);
            low_time[current] = min(low_time[current], low_time[neighbor]);
            if (visit_time[current] < low_time[neighbor]) {
                out.push_back(tuple{current, neighbor});
            }
        } else {
            // back edge
            low_time[current] = min(low_time[current], visit_time[neighbor]);
        }
    }
}   

vector<tuple> critical_connections(graph& g) {
    int n = g.size();
    int low_time[n], visit_time[n];
    bool visited[n];
    vector<tuple> bridges;
    
    for (int i=0; i<n; ++i) {
        visited[i] = false;
    }
    visit(0, -1, g, visited, low_time, visit_time, bridges);
    return bridges;
} 

// int main() {
//     graph g(4);
//     g.add_edge(0,1);
//     g.add_edge(1,2);
//     g.add_edge(2,0);
//     g.add_edge(1,3);
//     auto cc = critical_connections(g);
//     for (tuple t : cc) {
//         cout << t.x << "," << t.y << endl;
//     }
// }
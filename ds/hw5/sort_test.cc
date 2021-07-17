#include <vector>
using std::vector;

#include <algorithm>
using std::sort;

struct edge {
    int weight;
    
    bool operator<=(const edge other) const {
        return this->weight <= other.weight;
    }

    bool operator<(const edge other) const {
        return this->weight < other.weight;
    }
};

int main() {
    vector<edge> v;
    sort(v.begin(), v.end());
    return 0;
}



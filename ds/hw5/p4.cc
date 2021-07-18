#include <iostream>
using std::cin;
using std::cout;
using std::endl;

#include <list>
using std::list;

#include <vector>
using std::vector;

enum state {
    none, any, at_least_one
};

class dset {
    private:
    vector<int> parents;
    vector<int> sizes;

    public:
    dset(int n) {
        parents.resize(n);
        for (int i=0; i<n; ++i)
            parents[i] = -1;
    }

    void join(int x, int y) {
        if (y<=x) {
            int tmp = x;
            x = y;
            y = tmp;
        }
        parent[x] = y; 
    }

}
int main() {

    return 0;
}
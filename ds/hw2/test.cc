#include <iostream>
#include <vector>

using namespace std;

int main() {
    vector<int> v(10);
    v.push_back(0);
    v.push_back(2);
    v.push_back(1);
    v.resize()
    // v.shrink_to_fit();
    for (int i=0; i<v.size(); ++i) {
        cout << v[i];
    }
    cout << endl;
    return 0;
}
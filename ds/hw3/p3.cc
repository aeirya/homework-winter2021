/*
    همسایه‌های حسود
*/

#include <iostream>
#define type long long
using std::cin;
using std::cout;
using std::end;

struct point {
    int x, y;
};

point& input_point() {
    point* p;
    int x,y;
    cin >> x >> y;
    p = new point {x,y};
    return *p;
}

struct person {
    point up, down;
}

int main() {
    int n, m;
    cin >> n >> m;
    
    for (int i=0; i<n; ++i) {
        point 
            up_left    = input_point(),
            down_right = input_point();
        
    }

    return 0;
}
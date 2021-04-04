/* 
مختصات اشتباه
*/
#include "iostream"

/*
    stack implemented with arrays
*/
template <typename T>
class stack {
    private:
    T* arr;
    int index;      // address to push
    int size;
    int nextResize;
    
    public:
    stack() : index(0), size(0), nextResize(2) {
        arr = new T[2];
    }

    ~stack() {
        delete[] arr;
    }

    bool empty() {
        return size == 0;
    }

    T top() {
        return arr[index-1];
    }

    T pop() {
        --index;
        --size;
        auto t = top();
        check_for_resize();
        return t;
    }

    void push(T item) {
        arr[index] = item;
        ++size;
        ++index;
        check_for_resize();
    }

    void print() {
        stack st;
        while (! empty()) {
            st.push(pop());
        }
        while (! st.empty()) {
            auto x = st.pop();
            std::cout << x;
            push(x);
        }
    }

    private:
    /*
        this function will resize the array whenever it needs to shrink or make room
    */
    void check_for_resize() {
        bool make_room = size == nextResize;
        bool shrink = size == nextResize/4;

        T* copy;
        if (make_room) copy = new T[nextResize*2];
        else if (shrink) copy = new T[nextResize/2];
        else return;
        
        std::copy(arr, arr + size, copy);
        nextResize = size * 2;
        delete[] arr;
        arr = copy;
    }
};

int* next_greater_elements(int arr[], int n) {
    stack<int> s;
    int* next = new int[n];
    // iterating from n-1 to 0
    for (int i = n - 1; i >= 0; i--) 
    {
        /*We will pop till we get the 
        greater element on top or stack gets empty*/
        while (!s.empty() && s.top() <= arr[i])
            s.pop();
  
        /*if stack gots empty means there 
        is no element on right which is greater 
        than the current element.
        if not empty then the next greater 
        element is on top of stack*/
        if (s.empty()) 
            next[i] = -1;         
        else 
            next[i] = s.top();        
  
        s.push(arr[i]);
    }
    return next;
}

int nge_index(int nge[], int arr[], int i, int n) {
    int x = nge[i];
    while (arr[i] != x && i<n) ++i;
    return i;
}

// previous smaller element?!
int pse_index(int nge[], int arr[], int i, int n) {
    int j = i;
    int x = arr[i];
    do {
        --i;
    } while (arr[i] <= x && i>=0);
    return i;
}

int solve(int arr[], int nge[], int n) {
    int sum, i, previous, next;
    sum = i = 0;
    previous = next = -1;
    
    do {
        next = nge_index(nge, arr, i, n);
        previous = pse_index(nge, arr, i, n);
        sum += (next - i) * (i - previous) * arr[i];
        sum %= 105131359;
        ++i;
    } while (i < n);
    
    return sum;
}
  
void test() {
    int arr[] = { 0, -1, 3, -2, 1, 2 };
    // int arr[] = {1,2,3};
    int n = sizeof(arr) / sizeof(arr[0]);
    int* nge = next_greater_elements(arr, n);
    int sum = solve(arr, nge, n);
}

void print_nge(int nge[], int arr[], int n) {
    for (int i=0; i<n; ++i) {
        std::cout << nge[i] << " " << nge_index(nge, arr, i, n) << "\n";
    }
}

int main()
{
    int n;
    std::cin >> n;
    int* arr = new int[n];
    for (int i=0; i<n; ++i) 
        std::cin >> arr[i];

    int* nge = next_greater_elements(arr, n);
    int sum = solve(arr, nge, n);
    std::cout << sum << std::endl;

    return 0;
}

/*
    aeirya mohammadi
    97103779
*/
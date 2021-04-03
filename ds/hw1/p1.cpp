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
    int index;
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
        return arr[index];
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

// void printNGE(int arr[], int n)
// {
//     stack<int> s;
  
//     int arr1[n];
  
//     // iterating from n-1 to 0
//     for (int i = n - 1; i >= 0; i--) 
//     {
//         /*We will pop till we get the 
//         greater element on top or stack gets empty*/
//         while (!s.empty() && s.top() <= arr[i])
//             s.pop();
  
//         /*if stack gots empty means there 
//         is no element on right which is greater 
//         than the current element.
//         if not empty then the next greater 
//         element is on top of stack*/
//         if (s.empty()) 
//             arr1[i] = -1;         
//         else 
//             arr1[i] = s.top();        
  
//         s.push(arr[i]);
//     }
  
//     for (int i = 0; i < n; i++)
//         cout << arr[i] << " ---> " << arr1[i] << endl;
// }
  
// /* Driver program to test above functions */
// int main()
// {
//     int arr[] = { 11, 13, 21, 3 };
//     int n = sizeof(arr) / sizeof(arr[0]);
//     printNGE(arr, n);
//     return 0;
// }


// #include "iostream"

// int main() {

//     // get input
//     int n;
//     std::cin >> n;

//     long int A[n];
//     for (int i = 0; i < n; ++i) {
//         std::cin >> A[i];
//     }

//     // algorithm
//     for (int sublen = 2; sublen < n; ++sublen) {
//         int sum = 0;
//         int max = A[0];
//         for (int i = 1; i < n - sublen;++i;) {
//             if (A[i] > max) max = A[i];
//         }
//         sum = (sum + max) 
//         ?!
//     }


//     return 0;
// }

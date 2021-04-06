/*
احراز هویت

this is only a test, and I have no intention of 
using std library and this code as final submission
*/

#include "iostream"
#include "list"

using namespace std;

class Notepad {

private:
    list<char> data;
    list<char>::const_iterator pointer;
    int index;
    int size;
    const bool show_pointer = false;

public:
    Notepad() : index(0), size(0) {
        pointer = data.cbegin();
    }

    ~Notepad() {}
    
    void insertChar(char c) {
        data.insert(pointer, c);
        ++index;
        ++size;
    }

    void deleteChar() {
        if (index > 0) {
            auto it = pointer;
            data.erase(--pointer);
            pointer = it;
            --index;
            --size;
        }
    }

    void pointerLeft() {
        if (index > 0) {
            --index;
            --pointer;
        }
    }

    void pointerRight() {
        if (index < size) {
            ++index;
            ++pointer;
        }
    }

    void print() {
        if (show_pointer)
            data.insert(pointer, '|');
        for (char c : data) {
            std::cout << c;
        }
        if (show_pointer) {
            auto it = pointer;
            data.erase(--pointer);
            pointer = it;
        }
        std::cout << std::endl;
    }

    void printStatus() {
        cout << index << " " << *pointer << endl;
    }
};

void operate(Notepad& notepad, char c) {
    if      (c == '<') notepad.pointerLeft();
    else if (c == '>') notepad.pointerRight();
    else if (c == '-') notepad.deleteChar();
    else               notepad.insertChar(c);
}

int main() {
    int n;
    std::cin >> n;

    auto* notepad = new Notepad();
    char c;
    for (int i=0; i<n; ++i) {
        std::cin >> c;
        operate(*notepad, c);
    }

    notepad->print();

    // list<int> l;
    // l.push_back(1);
    // l.push_back(2);
    // l.push_back(3);
    // auto it = l.begin();
    // ++it;
    // ++it;
    // ++it;
    // // ++it;
    // l.insert(it, 4);
    // l.insert(it, 5);
    // --it;
    // l.erase(it);
    // --it;
    // l.erase(it);

    // for (int x : l) {
    //     std::cout << x;
    // }

    // list<char> c;
    // auto it = c.begin();
    // c.insert(it, 'a');
    // c.insert(it, '|');
    // --it;
    // for (char ch : c) {
    //     cout << ch;
    // }
    // cout << "\n";
    // c.erase(it);
    // for (char ch : c) {
    //     cout << ch;
    // }
}

/*
    aeirya mohammadi
    97103779
*/


/// note:
/// add deconstructors
/// add copy constructor
/// add = operator
/// could also use cpp standard library
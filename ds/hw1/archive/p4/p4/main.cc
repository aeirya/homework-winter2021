#include "iostream"
#include "notepad.hh"

int main() {
    auto* notepad = new Notepad();
    notepad->insertChar('a');
    notepad->insertChar('b');
    notepad->insertChar('c');
    notepad->print();
//    std::cout << node->value << "h";
    return 0;
    
}
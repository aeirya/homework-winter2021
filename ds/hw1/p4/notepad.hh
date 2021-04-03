#include "linked_list.hh"

class Notepad {

public:
    Notepad();
    ~Notepad();
    
    void insertChar(char c);
    void pointerLeft();
    void pointerRight();
    void deleteChar();
    void print();
private:
    LinkedList<char>* data;
    CNode* current;
};

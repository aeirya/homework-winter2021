#include "notepad.hh"
#include "iostream"

/*
 Notepad class implementation
 */

Notepad::Notepad() {
    current = new CNode {0, NULL, NULL};
}

Notepad::~Notepad() {
//    delete current;
//    delete data;
}

void Notepad::pointerLeft() {
    current = current->previous;
}

void Notepad::pointerRight() {
    current = current->next;
}

void Notepad::insertChar(const char c) {
    data->insert(c, *current);
    pointerRight();
}

void Notepad::deleteChar() {
    auto& to_delete = current;
    pointerLeft();
    data->remove(*to_delete);
}

void Notepad::print() {
    for (char c : *data) {
        std::cout << c;
    }
}

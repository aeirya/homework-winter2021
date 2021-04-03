/*
احراز هویت

آئیریا محمدی
97103779
*/

// headers
#include "iostream"

/// macros
#define TT template <typename T>

/// aliases
#define CNode LinkedList<char>::Node

/*
    definitions
*/

template <typename T>
class LinkedList {
public:
    struct Node;
    class NodeIterator;
    
    LinkedList() : head(NULL), current(head) {};
    ~LinkedList();
    
    void add(const T& value);
    void removeCurrent();
    
    void insert(const T& value, Node& previous);
    void remove(Node& node);
    
    auto begin();
    auto end() const;
    
private:
    Node* current;
    Node* head;
};

template <typename T>
struct LinkedList<T>::Node
{
    T value;
    Node* next;
    Node* previous;
};

template <typename T>
class LinkedList<T>::NodeIterator {
private:
    Node* node;
    
public:
    NodeIterator(Node &node) : node(&node) { }
    NodeIterator(const LinkedList &list);
    NodeIterator() : node(0) { }
    
    auto &operator++();
    auto &operator--();
    bool operator==(const NodeIterator& other);
    bool operator!=(const NodeIterator& other) const;
    T& operator*();
    
    Node& getCurrent();
};

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

/*
    implementations
*/

TT LinkedList<T>::~LinkedList() {
    auto& node = *head;
    while (! node) {
        auto& next = node;
        delete node;
        node = next;
    }
}

// inserts value after 'previous' node and before its next node

template <typename T>
void LinkedList<T>::insert(const T& value, Node& previous) {
//    Node* node = new Node { value, &previous, *(previous.next) };
    Node* node = new Node();
    node->value = value;
    node->previous = &previous;
    node->next = previous.next;
    previous.next = node;
    
    // check for null previous
    if (! previous.previous) {
        this->head = node;
    }
}

// removes the node from linked list, connecting its previous and next nodes

template <typename T>
void LinkedList<T>::remove(Node& node) {
    node.previous->next = node.next;
    node.next->previous = node.previous;
    delete &node;
}

TT auto LinkedList<T>::begin() {
    return NodeIterator(*head);
}

TT auto LinkedList<T>::end() const {
    return NodeIterator();
}

/*
    Node iterator class implementation
*/

TT LinkedList<T>::NodeIterator::NodeIterator(const LinkedList &list) :
    node(list.head) { }

TT auto& LinkedList<T>::NodeIterator::operator++() {
    return *this;
}

TT bool LinkedList<T>::NodeIterator::operator==(const NodeIterator &other) {
    return this->node == other.node;
}

TT bool LinkedList<T>::NodeIterator::operator!=(const NodeIterator &other) const {
    return this->node != other.node;
}

TT T& LinkedList<T>::NodeIterator::operator*() {
        return this->node->value;
    }

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

int main() {
    auto* notepad = new Notepad();
    notepad->insertChar('a');
    notepad->insertChar('b');
    notepad->insertChar('c');
    notepad->print();
//    std::cout << node->value << "h";
    return 0;
    
}

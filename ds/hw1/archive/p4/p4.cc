/*
احراز هویت
*/

#include "iostream"

#define TT template <typename T>

TT class LinkedList {
    public:

    struct Node
    {
        T value;
        Node* previous;
        Node* next;
    };

    class NodeIterator {
        public:
        NodeIterator(Node &node) : node(&node) {}
        NodeIterator(const LinkedList &list);
        NodeIterator() : node(0) {}
        ~NodeIterator() { }
        
        Node& getCurrentNode() {
            return *node;
        }

        NodeIterator &operator++() {
            this->node = this->node->next;
            return *this;
        }

        NodeIterator &operator--() {
            this->node = this->node->previous;
            return *this;
        }

        T& operator*() {
            return this->node->value;
        }

        bool operator!=(const NodeIterator& other) const {
            return other.node != this->node;
        } 

        bool operator==(const NodeIterator& other) {
            return this->node == other.node;
        }

        private:
        Node* node;
    };

    void add(const T& value) {
        Node* node = new Node {value, tail, 0};

        if (!head) {
            head = node;
            tail = node;
        } else {
            tail->next = node;
            tail = node;
        }
    }

    void insert(T value, Node& previous) {
        Node* node = new Node {value, &previous, previous.next};
        previous.next = node;
    }

    void remove(Node& node) {
        if (node.previous)
            node.previous->next = node.next;
        if (node.next) 
            node.next->previous = node.previous;
    }

    NodeIterator begin() {
        return NodeIterator(*head);
    }

    NodeIterator end() {
        return NodeIterator();
    }

    LinkedList() : head(0), tail(0) {}
    ~LinkedList() {}

    private:
    Node* head;
    Node* tail;
};

class Notepad {

public:
    Notepad() : index(0), size(0) {
        data.add(0);
        pointer = data.begin();
    }

    ~Notepad() {}
    
    void insertChar(char c) {
        ++size;
        auto& node = pointer.getCurrentNode();
        data.insert(c, node);
        pointerRight();
    }

    void deleteChar() {
        if (index > 0) {
            --size;
            auto& node = pointer.getCurrentNode();
            pointerLeft();
            data.remove(node);
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
        for (char& c : data) {
            if (c != 0) {
                std::cout << c;
            }
        }
        std::cout << std::endl;
    }

private:
    LinkedList<char> data;
    LinkedList<char>::NodeIterator pointer;
    int index;
    int size;
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
    for (int i=0; i<n; ++i) {
        char c;
        std::cin >> c;
        operate(*notepad, c);
    }

    notepad->print();
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
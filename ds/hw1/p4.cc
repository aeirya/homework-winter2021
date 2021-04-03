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

        Node& getCurrent() {
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
        node.previous->next = node.next;
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
    Notepad() {
        data.add(0);
        current = data.begin();
    }

    ~Notepad() {}
    
    void insertChar(char c) {
        auto& node = current.getCurrent();
        data.insert(c, node);
        pointerRight();
    }

    void pointerLeft() {
        --current;
    }

    void pointerRight() {
        ++current;
    }

    void deleteChar() {
        auto& node = current.getCurrent();
        pointerLeft();
        data.remove(node);
    }

    void print() {
        for (char& c : data) {
            std::cout << c;
        }
        std::cout << std::endl;
    }

private:
    LinkedList<char> data;
    LinkedList<char>::NodeIterator current;
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
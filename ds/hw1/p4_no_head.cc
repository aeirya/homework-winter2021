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

    NodeIterator begin() {
        return NodeIterator(*head);
    }

    NodeIterator end() {
        return NodeIterator();
    }

    LinkedList() : head(0), tail(0) {}

    private:
    Node* head;
    Node* tail;
};


int main() {
    auto* list = new LinkedList<int>();
    list->add(1);
    list->add(2);
    list->add(1);
    for (int x : *list) {
        std::cout << x;
    }
}
#include "iostream"

template <typename T>

class list {
    public:
    
    struct node {
        T value;
        node* previous;
        node* next;
    };

    class iterator {
        public:
        
        iterator(node& start) {
            current = &start;
        }
        
        iterator &operator++() {
            this->current = this->current->next;
            return *this;
        }

        iterator &operator--() {
            this->current = this->current->previous;
            return *this;
        }

        T& operator*() {
            return this->current->value;
        }

        bool operator!=(const iterator& other) const {
            return other.current != this->current;
        } 

        bool operator==(const iterator& other) {
            return this->current == other.current;
        }
        
        node& get_current() {
            return *current;
        }
        
        private:
        node* current;
    };

    void insert(T value, iterator& it) {
        // current pointer node
        node &current = it.get_current();
        // create node
        node* _node = new node {value, current.previous, &current};
        // insert before the pointer
        if (current.previous)
            current.previous->next = _node;
        current.previous = _node;

        if (!_node->previous)
            head = _node;
//        if (head == _end)
//            head = _end->previous;
        if (_node->next == _end)
            tail = _node;
    }

    void erase(iterator& it) {
        node& current = it.get_current();
        if (!current.previous) return;
        node* _node = current.previous;
        if (_node->previous)
            _node->previous->next = &current;
        current.previous = _node->previous;
        
        if (_node == head) {
            head = head->next;
        }
        if (_node == tail) {
            if (tail->previous)
                tail = tail->previous;
            else
                tail = _end;
        }
        
        delete _node;
//        Node* next = it.node;
//        if (!next)
//        Node &node = next.previous;
//
//        if (node.previous)
//            node.previous->next = node.next;
//        if (node.next)
//            node.next->previous = node.previous;
    }

    iterator begin() {
        return iterator(*head);
    }

    iterator end() {
        return iterator(*_end);
    }

    list() : head(0), tail(0) {
        _end = new node {0,0,0};
        head = tail = _end;
    }

    private:
    node* head;
    node* tail;
    node* _end;
};

void test_list() {
    list<int> l;
    auto it = l.begin();
    l.insert(1, it);
    --it;
    l.insert(2, it);
    --it;
    l.insert(0, it);
    ++it;
    ++it;
    l.erase(it);
    l.erase(it);
    l.erase(it);
    l.insert(0, it);
    l.insert(2, it);
    
    for (int x : l)
        std::cout << x;
}

int main() {
    return 0;
}

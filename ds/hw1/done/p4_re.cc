/*
    احراز هویت
    (تمرین سری یک)
*/

#include "iostream"

template <typename T>

/*
    link list implementation in cpp,
    it includes an iterator, and insert and erase methods,
    behaving just as std::list
*/

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

        node& get_current() {
            return *current;
        }
        
        private:
        node* current;
    };

    void insert(iterator& it, T value) {
        // current pointer node
        node &current = it.get_current();
        // create new node
        node* _node = new node {value, current.previous, &current};
        // insert before the pointer
        if (current.previous)
            current.previous->next = _node;
        // connect from left
        current.previous = _node;

        // check for new head
        if (!_node->previous)
            head = _node;
        // check for new tail
        if (_node->next == _end)
            tail = _node;
    }

    // removes current node, connectng its before and after
    void erase(iterator& it) {
        node& current = it.get_current();
        // connect from right
        current.next->previous = current.previous;
        // connect from left
        if (current.previous)
            current.previous->next = current.next;
        // check for new head
        else if (&current == head)
            head = current.next;
        // check for new tail
        if (&current == tail) {
            if (current.previous)
                tail = current.previous;
            else
                tail = _end;
        }
        delete &current;
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

class Notepad {

private:
    list<char> data;
    list<char>::iterator pointer;
    int index;
    int size;
    const bool show_pointer = false;

public:
    Notepad() : index(0), size(0), pointer(data.begin()) {}

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
        std::cout << index << " " << *pointer << std::endl;
    }
};

void operate(Notepad& notepad, char c) {
    if      (c == '<') notepad.pointerLeft();
    else if (c == '>') notepad.pointerRight();
    else if (c == '-') notepad.deleteChar();
    else               notepad.insertChar(c);
}

void test(Notepad& notepad) {
    notepad.insertChar('a');
    notepad.insertChar('b');
    notepad.insertChar('b');
    notepad.pointerLeft();
    notepad.insertChar('o');
    notepad.pointerLeft();
    notepad.deleteChar();
    notepad.print();
}

int doTest() {
    Notepad notepad;
    test(notepad);
    return 0;
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
    return 0;
}

/*
    aeirya mohammadi
    97103779
*/
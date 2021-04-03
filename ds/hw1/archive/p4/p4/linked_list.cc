#include "linked_list.hh"

#define TT template <typename T>

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

TT typename LinkedList<T>::NodeIterator LinkedList<T>::begin() {
    return NodeIterator(*head);
}

TT typename LinkedList<T>::NodeIterator LinkedList<T>::end() const {
    return NodeIterator();
}

/*
    Node iterator class implementation
*/

TT LinkedList<T>::NodeIterator::NodeIterator(const LinkedList &list) :
    node(list.head) { }

TT typename LinkedList<T>::NodeIterator& LinkedList<T>::NodeIterator::operator++() {
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
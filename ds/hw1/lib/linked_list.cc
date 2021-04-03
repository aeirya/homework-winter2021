#include "linked_list.hh"

namespace data_structures {

   template <typename T>
    LinkedList<T>::LinkedList() {
    
    }

    template <typename T>
    void LinkedList<T>::insert(T value) {

    }

    template <typename T>
    void LinkedList<T>::Node::addNext(Node& node) {
        (*this).next = &node;
    }
}

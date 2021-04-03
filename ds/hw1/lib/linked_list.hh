#ifndef LINKED_LIST_H
#define LINKED_LIST_H

#pragma once

namespace data_structures {
 
    /*
    two-way linked list definition
    */

    template <typename T>
    class LinkedList {
        public:
            class Node;
            LinkedList();
            void insert(T value);

        private:
            Node* head;
            Node* tail;
    };

    template <typename T>
    class LinkedList<T>::Node {
        public:
        T value;
        Node* next;

        void addNext(Node& node);
    };

}

#endif


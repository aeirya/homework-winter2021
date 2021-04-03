#pragma once

#include "iostream"

#define CNode LinkedList<char>::Node

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
    
    LinkedList<T>::NodeIterator begin();
    LinkedList<T>::NodeIterator end() const;
    
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

public:
    NodeIterator(Node &node) : node(&node) { }
    NodeIterator(const LinkedList &list);
    NodeIterator() : node(0) { }
    
    NodeIterator &operator++();
    NodeIterator &operator--();
    bool operator==(const NodeIterator& other);
    bool operator!=(const NodeIterator& other) const;
    T& operator*();
    
    Node& getCurrent();

private:
    Node* node;
};
#include <iostream>
/*
ایستگاه باربری
*/

/*
  definitions
*/
class Stack {
    private:
        struct Node
        {
            int value;
            Node* previous;
        };
        Node* top;
        int size;

    public:
        Stack();
        Stack(int A[], int size);

        void push(int n);
        int pop();
        int peek();
        bool isEmpty();
        int getSize();

        Stack& reversed();
};

class Rails {
  private:
      Stack* mid;
      Stack* right;
      Stack* left;

  public:
      Stack* actions;

      Rails(int n);
      ~Rails();
      void pushMid();
      void popMid();
      void popLeft();
      int peekMid();
      int peekRight();
      int peekLeft();
      void popAllMid();
      int getActionCount();
};

/*
  implemetations
*/

/// Stack

Stack::Stack() : top(0), size(0) {}

Stack::Stack(int A[], int size) {
    top = 0;
    for (int i=0; i<size; ++i) push(A[i]);
}

void Stack::push(int n) {
    Node* node = new Node {n, top};
    top = node;
    ++size;
}

int Stack::pop() {
    if (! top) return 0;
    int value = top->value;
    auto& node = top->previous;
    delete top;
    top = node;
    --size;
    return value;
}

int Stack::peek() {
    if (!top) return 0;
    return top->value;
}

bool Stack::isEmpty() {
    return top == 0;
}

int Stack::getSize() {
    return size;
}

Stack& Stack::reversed() {
    Stack* stack = new Stack();
    auto& node = top;
    while (node) {
        stack->push(node->value);
        node = node->previous;
    }
    return *stack;
}

/// Rails
Rails::Rails(int n) {
    left = new Stack();
    mid = new Stack();
    right = new Stack();
    actions = new Stack();
    for (int i=0; i<n; ++i) {
        left->push(i+1);
    }
}

Rails::~Rails() {
    delete left;
    delete mid;
    delete right;
    delete actions;
}

void Rails::pushMid() {
    actions->push(1);
    mid->push(
        left->pop()
    );
}

void Rails::popMid() {
    actions->push(3);
    right->push(
        mid->pop()
    );
}

void Rails::popLeft() {
    actions->push(2);
    right->push(
        left->pop()
    );
}

int Rails::peekMid() {
    return mid->peek();
}

int Rails::peekLeft() {
    return left->peek();
}

int Rails::peekRight() {
    return right->peek();
}

void Rails::popAllMid() {
    while (! mid->isEmpty()) popMid();
}

// help functions

void print(std::string msg) {
  std::cout << msg << std::endl;
}

void rc() {
  print("reached checkpoint");
}

// algorithm

bool isCombinable(Rails* rail, int n, int P[]) {
    Stack* p = new Stack(P, n);
    while (!p->isEmpty()) {
        int x = p->pop();

        if (x == rail->peekMid()) {
            rail->popMid();
            continue;
        }
        if (x == rail->peekLeft()) {
            rail->popLeft();
            continue;
        }
        int y=0;
        while (y != x) {
            rail->pushMid();
            y = rail->peekLeft();
            if (!y) {
                if (rail->peekMid()==x)
                    continue;
                else return false;
            }
        }
        rail->popLeft();
    }
    return true;
}

int main() {
    // get input
    int n;
    std::cin >> n;
    int P[n];

    for (int i = 0; i<n; ++i) {
        std::cin >> P[i];
    }

    // solve
    Rails* rail = new Rails(n);
    if (isCombinable(rail, n, P)) {
        auto& actions = rail->actions->reversed();
        std::cout << actions.getSize() << std::endl;
        int n = actions.getSize();
        while (n>1) {
            --n;
            std::cout << actions.pop() << " ";
        }
        std::cout << actions.pop() << std::endl;
        delete &actions;
    } else {
        std::cout << -1 << std::endl;
    }
    delete rail;
    return 0;
}

/*
    aeirya mohammadi
    97103779
*/
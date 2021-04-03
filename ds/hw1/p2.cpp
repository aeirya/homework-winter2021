//#include <iostream>
//
///*
//   definitions
//*/
//class Stack {
//   private:
//       struct Node
//       {
//           Node* previous;
//           int value;
//       };
//       Node* top;
//
//   public:
//       Stack();
//       Stack(int A[], int size);
//
//       void push(int n);
//       int pop();
//       int peek();
//       bool isEmpty();
//};
//
//class Rails {
//   private:
//       Stack* mid;
//       Stack* right;
//       Stack* left;
//       int n;
//   public:
//       Rails(int n);
//       ~Rails();
//       void pushMid();
//       void popMid();
//       void popLeft();
//       int peekMid();
//       int peekRight();
//       int peekLeft();
//       void popAllMid();
//};
//
///*
//   implemetations
//*/
//
///// Stack
//
//Stack::Stack() {
//   top = NULL;
//}
//
//Stack::Stack(int A[], int size) {
//   top = NULL;
//   for (int i=0; i<size; ++i) push(A[i]);
//}
//
//void Stack::push(int n) {
//   Node* node = new Node {top, n};
//   top = node;
//}
//
//int Stack::pop() {
//   if (! top) return NULL;
//   Node* node = top;
//   top = top->previous;
//   int value = node->value;
//   delete node;
//   return value;
//}
//
//int Stack::peek() {
//   return top->value;
//}
//
//bool Stack::isEmpty() {
//   return top == NULL;
//}
//
///// Rails
//Rails::Rails(int n) {
//   left = new Stack();
//   mid = new Stack();
//   right = new Stack();
//   for (int i=0; i<n; ++i) {
//       left->push(i+1);
//   }
//   this->n = n;
//}
//
//Rails::~Rails() {
//   delete left;
//   delete mid;
//   delete right;
//}
//
//void Rails::pushMid() {
//   mid->push(
//       left->pop()
//   );
//}
//
//
//void Rails::popMid() {
//   right->push(
//       mid->pop()
//   );
//}
//
//void Rails::popLeft() {
//   right->push(
//       left->pop()
//   );
//}
//
//int Rails::peekMid() {
//   return mid->peek();
//}
//
//int Rails::peekLeft() {
//   return left->peek();
//}
//
//int Rails::peekRight() {
//   return right->peek();
//}
//
//void Rails::popAllMid() {
//   while (! mid->isEmpty()) popMid();
//}
//
//void print(std::string msg) {
//   std::cout << msg << std::endl;
//}
//
//void rc() {
//   print("reached checkpoint");
//}
//
//bool isCombinable(Rails* rail, int n, int P[]) {
//   Stack* p = new Stack(P, n);
//   while (!p->isEmpty()) {
//       int x = p->pop();
//       print("popping x:‌‌ "+ std::to_string(x));
//
//       if (x == rail->peekMid()) {
//           rail->popMid();
//           continue;
//       }
//       if (x == rail->peekLeft()) {
//           rail->popLeft();
//           continue;
//       }
//       int y=0;
//       while (y != x) {
//           rail->pushMid();
//           y = rail->peekLeft();
//           if (!y) {
//               if (p->isEmpty())
//                   return false;
//               else continue;
//           }
//       }
//       // if left.top == x
//       rail->popLeft();
//   }
//   return true;
//}
//
//int main() {
//   // get input
//   int n;
////    std::cin >> n;
//    n = 3;
//   int P[n];
//    P[0] = 1;
//    P[1] = 3;
//    P[2] = 2;
////    for (int i = 0; i<n; ++i) {
////        std::cin >> P[i];
////    }
////    algorithm
//   Rails* rail = new Rails(n);
//   if (isCombinable(rail, n, P)) {
//       std::cout << "yay";
//   } else {
//       std::cout << "gay";
//   }
//   return 0;
//}

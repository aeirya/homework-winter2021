
public class p4 {
    static interface ILinkedList<T> {
        void insert(T value);
    }
    
    static class LinkedList<T> implements ILinkedList<T> {
        class Node {
            T value;
            Node previous;
            Node next;

            Node(T value, Node previous, Node next) {
                this.value = value;
                this.previous = previous;
                this.next = next;
            }

            /*
                inserts node after *this
            */
            void insertAfterMe(Node node) {
                node.next = this.next;
                this.next = node;
                node.previous = this;
            }

            boolean isHead() {
                return previous == null;
            }

            boolean isTail() {
                return next == null;
            }
        }

        private Node current;
        
        public LinkedList() {
            current = null;
        }

        public void insert(T value) {
            if (current == null) {
                current = new Node(value, null, null);   
            } else {
                current = insert(value, current);
            }
        }

        Node insert(T value, Node previous) {
            var node = new Node(value, previous, previous.next);
            previous.next = node;
            return node;
        }

        public void remove() {
            if (! isEmpty()) {
                if (current.isHead() && current.isTail()) {
                    current = null;
                } else if (current.isTail()) {
                    current.previous.next = null;
                    previous();
                } else if (current.isHead()) {
                    current.next.previous = null;
                    next();
                } else {
                    current.previous.insertAfterMe(current.next);
                    previous();
                }
            }
        }

        public T next() {
            if (current.isTail()) return null;
            current = current.next;
            return current.value;
        }

        public T previous() {
            if (current.isHead()) return null;
            current = current.previous;
            return current.value;
        }

        public boolean isEmpty() {
            return current == null;
        }

        public T head() {
            while (! current.isHead()) {
                previous();
            }
            return current.value;
        }
    }

    static class Notepad {
        private LinkedList<Character> data;
        private int index, size;

        public Notepad() {
            data = new LinkedList<>();
            index = 0;
            size = 0;
        }

        public void insertChar(char c) {
            data.insert(c);
            ++size;
            pointerRight();
        }

        public void deleteChar() {
            if (index > 0) {
                data.remove();
                --size;
            }
        }

        public void pointerLeft() {
            if (index > 0) {
                --index;
                data.previous();
            }
        }
        
        public void pointerRight() {
            if (index < size) {
                ++index; 
                data.next();
            }
        }

        public void print() {
            var value = data.head();
            while (value != null) {
                printChar(value);
                value = data.next();
            }
        }

        void printChar(Character c) {
            System.out.print(c);
        }

        void newLine() {
            System.out.println();
        }
    }


    static void test1(Notepad notepad) {
        notepad.insertChar('a');
        notepad.insertChar('b');
        notepad.insertChar('b');
        notepad.pointerLeft();
        notepad.insertChar('o');
        notepad.pointerLeft();
        notepad.deleteChar();
    }

    public static void main(String[] args) {
        Notepad notepad = new Notepad();
        test1(notepad);
        notepad.print();
    }
}

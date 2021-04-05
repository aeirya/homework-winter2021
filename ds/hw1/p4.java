import java.util.Scanner;

public class p4 {
    static interface ILinkedList<T> {
        void insert(T value);
    }
    
    static class LinkedList<T> implements ILinkedList<T> {
        public class Node {
            T value;
            Node previous;
            Node next;

            Node(T value, Node previous, Node next) {
                this.value = value;
                this.previous = previous;
                this.next = next;
            }

            boolean isHead() {
                return previous.isNull();
            }

            boolean isTail() {
                return next == null;
            }

            boolean isNull() {
                return value == null;
            }

            @Override
            public String toString() {
                if (value == null) return "NULL";
                return value.toString();
            }
        }
        
        private final Node NULL = new Node(null, null, null);
        private Node current;
        
        public LinkedList() {
            current = NULL;
        }

        public void insert(T value) {
            if (current.isNull()) {
                current = new Node(value, NULL, NULL.next);   
                NULL.next = current;
                // current.previous = NULL;
            } else {
                current = insert(value, current);
            }
        }

        Node insert(T value, Node previous) {
            Node node = new Node(value, previous, previous.next);
            previous.next = node;
            return node;
        }

        public void remove() {
            if (! isEmpty()) {
                if (current.isHead() && current.isTail()) {
                    current = NULL;
                    NULL.next = null;
                } else if (current.isTail()) {
                    current.previous.next = null;
                    previous();
                } else if (current.isHead()) {
                    current.next.previous = NULL;
                    NULL.next = current.next;
                    next();
                } else {
                    current.previous.next = current.next;
                    current.next.previous = current.previous;
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
            if (current.isNull()) return null;
            this.current = current.previous;
            return current.value;
        }

        public boolean isEmpty() {
            return current.isNull() && current.next == null;
        }

        public T head() {
            if (isEmpty()) return null;
            current = NULL.next;
            return current.value;
        }

        public Node getHead() {
            return NULL;
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
            ++index;
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
            LinkedList<Character>.Node node = data.getHead();
            for (int i=0; i<size; ++i) {
                node = node.next;
                printChar(node.value);
            }
            newLine();
        }

        void printChar(Character c) {
            System.out.print(c);
        }

        void newLine() {
            System.out.println();
        }
    }

    static class NotepadApp {
        private Notepad notepad;

        public NotepadApp() {
            notepad = new Notepad();
        }

        public void operate(Character c) {
            if      (c == '<') notepad.pointerLeft();
            else if (c == '>') notepad.pointerRight();
            else if (c == '-') notepad.deleteChar();
            else               notepad.insertChar(c);
        }

        public void print() {
            notepad.print();
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

    static void test2(Notepad notepad) {
        notepad.insertChar('a');
        notepad.insertChar('b');
        notepad.insertChar('c');
        notepad.insertChar('d');
    }

    static void test3(Notepad notepad) {
        notepad.insertChar('a');
        notepad.insertChar('b');
        notepad.pointerLeft();
        notepad.insertChar('c');
        notepad.pointerRight();
        notepad.insertChar('d');
    }

    static void test4(Notepad notepad) {
        notepad.insertChar('a');
        notepad.insertChar('b');
        notepad.deleteChar();
        notepad.insertChar('c');
    }

    static void test5(Notepad notepad) {
        notepad.insertChar('b');
        notepad.pointerLeft();
        notepad.pointerLeft();
        notepad.insertChar('o');
    }

    static void test6(Notepad notepad) {
        notepad.insertChar('b');
        notepad.pointerLeft();
        notepad.deleteChar();
        notepad.pointerLeft();
        notepad.insertChar('o');
    }

    static void manualTest(Scanner sc, NotepadApp app) {
        char c;
        do {
            c = sc.next().charAt(0);
            app.operate(c);
            app.print();
        } while (c != '!');
    }

    public static void main(String[] args) {
        NotepadApp app = new NotepadApp();
        final Scanner sc = new Scanner(System.in);
        // manualTest(sc, app);
        // return;
        int n = sc.nextInt();
        while (n>0) {
            app.operate(
                sc.next().charAt(0)
            );
            --n;
        }
        sc.close();
        app.print();
    }
}

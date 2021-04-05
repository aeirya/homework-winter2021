import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Scanner;

public class p4 {

    static class LinkedList<T> implements Iterable<T> {
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
                return value == null && previous == null;
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
            current = insert(value, current);
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
                    NULL.next = current.next;
                    current.next.previous = NULL;
                    current = NULL;
                } else {
                    current.next.previous = current.previous;
                    current.previous.next = current.next;
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
            current = current.previous;
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

        private Node getHead() {
            return NULL.next;
        }

        @Override
        public Iterator<T> iterator() {
            return new NodeIterator<>(getHead());
        }
    }

    static class Notepad {
        private final LinkedList<Character> data;
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
                --index;
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
            final Iterator<Character> it = data.iterator();
            while (it.hasNext()) {
                printChar(it.next());
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

        public void printStatus() {
            LinkedList<Character>.Node c = notepad.data.current;
            System.out.println(notepad.size + " " + notepad.index + " " + c.value);
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
            app.printStatus();
        } while (c != '!');
    }

    static class NodeIterator<T> implements Iterator<T> {
        private LinkedList<T>.Node current;

        NodeIterator(LinkedList<T>.Node head) {
            current = head;
        }
        
        @Override
        public boolean hasNext() {
            return current != null;
        }

        @Override
        public T next() throws NoSuchElementException {
            if (current == null) throw new NoSuchElementException();
            T val = current.value;
            current = current.next;
            return val;
        }

    }
    
    public static void main(String[] args) {
        NotepadApp app = new NotepadApp();
        final Scanner sc = new Scanner(System.in);
        manualTest(sc, app);
        return;
        // int n = sc.nextInt();
        // while (n>0) {
        //     app.operate(
        //         sc.next().charAt(0)
        //     );
        //     --n;
        // }
        // sc.close();
        // app.print();
    }

}

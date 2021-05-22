#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

#pragma region heap impl

// template <typename T>
// void inline swp(T* a, T* b) {
//     T temp = *a;
//     *a = *b;
//     *b = temp;
// }

// template <typename T>
// /*
//     min heap implementation using arrays
//     methods:
//         add(T)
//         pop => T
// */
// class heap {
//     public:
//     heap() {}

//     void add(T x) {
//         v.push_back(x);
//         type n = v.size();
//         bubble_up(n-1);
//     }

//     T pop() {
//         T m = v[0];
//         v[0] = v.back();
//         v.pop_back();
//         bubble_down(0);
//         return m;
//     }

//     type size() const {
//         return v.size();
//     }

//     bool has_item() const {
//         return size() > 0;
//     }

//     void print() {
//         for (auto& item : v) cout << item << " ";
//         cout << endl;
//     }

//     private:
//     vector<T> v;

//     void bubble_up(type i) {
//         if (v[i] < parent(i))
//             swp(&v[i], &parent(i));
//         if (i > 0) 
//             bubble_up(parent_i(i));
//     }

//     void bubble_down(type i) {
//         if (lchild_i(i) >= v.size()) return;
        
//         bool left = lchild(i) < rchild(i);
//         T& child = left ? lchild(i) : rchild(i);
//         type child_i = left ? lchild_i(i) : rchild_i(i);
        
//         if (child < v[i]) {
//             swp(&v[i], &child);
//             bubble_down(child_i);
//         }
//     }

//     type inline parent_i(type i) const {
//         return (i-1)/2;
//     }

//     type inline rchild_i(type i) const {
//         return 2*i+2;
//     }

//     type inline lchild_i(type i) const {
//         return 2*i+1;
//     }

//     inline T& parent(type i) {
//         return v[(i-1)/2];
//     }

//     inline T& rchild(type i) {
//         return v[2*i+2];
//     }

//     inline T& lchild(type i) {
//         return v[2*i+1];
//     }
// };
#pragma endregion min heap

#pragma region person

typedef struct _person_ 
{
    struct interval 
    {
        int start, end;
    } *x_interval, *y_interval;
} person;

/*
    returns true if p1 less than p2
*/
bool compare_x(person *p1, person *p2) 
{
    return p1->x_interval->end < p2->x_interval->end;
}

/*
    returns true if p1 less than p2
*/
bool compare_y(person *p1, person *p2) 
{
    return p1->y_interval->end < p2->y_interval->end;
}

person* new_person(int x0, int y0, int x1, int y1) 
{
    person* p = malloc(sizeof(*p));
    struct interval *x, *y;
    x = malloc(sizeof(struct interval*));
    y = malloc(sizeof(struct interval*));
    x->start = x0;
    x->end = x1;
    y->start = y0;
    y->end = y1;
    p->x_interval = x;
    p->y_interval = y;
    return p;
}

#pragma endregion person

#pragma region linked list

/*
    linked list
*/
typedef struct node 
{
    int data;
    struct node* next;
} node;

typedef struct list 
{
    node *root, *current;
} list;

void add(list* l, int data) 
{
    struct node *new_node = malloc(sizeof(*new_node));
    new_node->data = data;
    if (l->root) 
        l->current->next = new_node;
    else 
        l->root = new_node;
    l->current = new_node;
}

bool has_item(list* l)
{
    return l->root;
}

#pragma endregion list

typedef struct heap heap;

void add(heap* h, int data) 
{
    
}

void insert(list *l,person **p, heap *h)
{
    struct node* ptr = l->root;
    while (ptr) 
    {
        add(ptr->data)
    }
}

int test() 
{
    list* l = malloc(sizeof(*l));
    add(l, 2);
    add(l, 1);
    add(l, 3);

    struct node* n = l->root;
    while (n) 
    {
        printf("%d", n->data);
        n= n->next;
    }
    return 0;
}

int main() 
{
    return test();

    // var declaration
    int i,              // loop counter
        n, m,           // # of people, # of cells
        x0, y0, x1, y1; // box coordinates
    
    list **cells_x, **cells_y;   // people for each cell
    person **people;             // people structure to hold coordinates

    // mem alloc
    cells_x = malloc(m*sizeof(list*));
    cells_y = malloc(m*sizeof(list*));
    
    people = malloc(n*sizeof(person*));

    // input
    scanf("%d %d", &n, &m);
    for (i=0; i<n; ++i) 
    {
        scanf("%d %d %d %d", &x0, &y0, &x1, &y1);
        // add person's index to x,y cells' lists
        add(cells_x[x0], i);
        add(cells_y[y0], i);
        // make person
        people[i] = new_person(x0, y0, x1, y1);
    }

    // solve
    for (i=0; i<n; ++i)
    {
        if (has_item(cells_x[i])) 
        {

        }
    }
    

    return 0;
}
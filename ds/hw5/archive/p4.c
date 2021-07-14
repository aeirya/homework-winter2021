#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

// #define N 100000

#pragma region list

/* A linked list node */
typedef struct Node
{
    // Any data type can be stored in this node
    void  *data;
  
    struct Node *next;
} Node;
  
/* Function to add a node at the beginning of Linked List.
   This function expects a pointer to the data to be added
   and size of the data type */
void push(struct Node** head_ref, void *new_data, size_t data_size)
{
    // Allocate memory for node
    struct Node* new_node = (struct Node*)malloc(sizeof(struct Node));
  
    new_node->data  = malloc(data_size);
    new_node->next = (*head_ref);
  
    // Copy contents of new_data to newly allocated memory.
    // Assumption: char takes 1 byte.
    int i;
    for (i=0; i<data_size; i++)
        *(char *)(new_node->data + i) = *(char *)(new_data + i);
  
    // Change head pointer as new node is added at the beginning
    (*head_ref)    = new_node;
}

#pragma endregion list

typedef struct 
{
    int source;
    int dest;
    int weight;
    
    bool all;
    bool none;
    bool any;
} Edge;

typedef struct Vertex 
{
    int index;
    Node* edges; // edges list head
} Vertex;

typedef struct 
{
    Vertex** vertices;
} Graph;


Node* make_int_list(int arr[], int n)
{
    Node *start = NULL;
    for (int i=n-1; i>=0; i--)
       push(&start, &arr[i], sizeof(int));
    return start;
}

/*
    graph methods
*/

void node_add_edge(Node* n, Edge* e)
{

}

void graph_add_edge(Graph* g, Edge* e) 
{
    node_add_edge(g->vertices[e->source], e); 
    node_add_edge(g->vertices[e->dest], e); 
    // aeirya
}

Vertex* make_node(int index)
{
    Vertex* n = malloc(sizeof(Vertex*));
    n->index = index;
    n->edges = NULL;
}


Graph* make_graph(Edge* edges[], int n, int m) 
{
    unsigned i;
    Graph* graph;
    Vertex* vertices[n];

    // allocation
    graph = malloc(sizeof(Graph));

    // make node
    for (i=0; i<n; ++i) 
        vertices[i] = make_node(i+1);
    graph->vertices = vertices;

    for (i=0; i<m; ++i) 
        graph_add_edge(graph, edges[i]);

    return graph;
}

int get_other_end(int vertex, Edge* edge)  
{
    if (edge->source == vertex) 
        return edge->dest;
    return edge->source;
}

#pragma region sort

// Merges two subarrays of arr[]. 
// First subarray is arr[l..m] 
// Second subarray is arr[m+1..r] 
void merge(Edge* arr[], int l, int m, int r) 
{ 
    int i, j, k; 
    int n1 = m - l + 1; 
    int n2 = r - m; 
  
    /* create temp arrays */
    Edge *L[n1], *R[n2]; 
  
    /* Copy data to temp arrays L[] and R[] */
    for (i = 0; i < n1; i++) 
        L[i] = arr[l + i]; 
    for (j = 0; j < n2; j++) 
        R[j] = arr[m + 1 + j]; 
  
    /* Merge the temp arrays back into arr[l..r]*/
    i = 0; // Initial index of first subarray 
    j = 0; // Initial index of second subarray 
    k = l; // Initial index of merged subarray 
    while (i < n1 && j < n2) { 
        if (L[i]->source < R[i]->source || (L[i]->source == R[i]->source && L[i]->dest <= R[i]->dest)) {
            arr[k] = L[i]; 
            i++; 
        } 
        else { 
            arr[k] = R[j]; 
            j++; 
        } 
        k++; 
    } 
  
    /* Copy the remaining elements of L[], if there 
       are any */
    while (i < n1) { 
        arr[k] = L[i]; 
        i++; 
        k++; 
    } 
  
    /* Copy the remaining elements of R[], if there 
       are any */
    while (j < n2) { 
        arr[k] = R[j]; 
        j++; 
        k++; 
    } 
} 
  
/* l is for left index and r is right index of the 
   sub-array of arr to be sorted */
void mergeSort(Edge* arr[], int l, int r) 
{ 
    if (l < r) { 
        // Same as (l+r)/2, but avoids overflow for 
        // large l and h 
        int m = l + (r - l) / 2; 
  
        // Sort first and second halves 
        mergeSort(arr, l, m); 
        mergeSort(arr, m + 1, r); 
  
        merge(arr, l, m, r); 
    } 
} 

#pragma endregion sort

#pragma region input

void input_edges(Edge* edges[], int m) 
{
    Edge *e;
    for (int i=0; i<m; ++i) 
    {
        e = malloc(sizeof(Edge*));
        scanf("%d %d %d", &e->source, &e->dest, &e->weight);
        edges[i] = e;
    }
}

// test
void print_edges(Edge* edges[], int m) 
{
    Edge *e;
    for (int i=0; i<m; ++i) 
    {
        e = edges[i];
        printf("%d, %d, %d\n", e->source, e->dest, e->weight);
    }
}

#pragma endregion input

void set_flags(Edge* e[], int m)
{
    for (int i=0; i<m; ++i) 
    {
        // unless we've found an exception
        e[i]->all = true;
        e[i]->none = true;
        e[i]->any = false;    
    }
}

// Node* make_list(void *arr[], int n, size_t data_size) 
// {
//     Node *start = NULL;
//     for (int i=n; i>=0; i--)
//        push(&start, &arr[i], data_size);
//     return start;
// }



int test_list() 
{
    int arr[] = {10, 20, 30, 40, 50}, i;
    // Node *start = NULL;
    // unsigned int_size = sizeof(int);
    // for (i=4; i>=0; i--)
    //    push(&start, &arr[i], int_size);
    
    // Node *current = start;
    Node* current = make_int_list((void*)arr, 5);
    
    while (current != 0)
    {
        printf("%d", *(int*)current->data);
        current = current->next;
    }  
    return 0;  
}

int main() 
{
    return test_list();
    int n, m;
    // scanf("%d %d", &n, &m);

    m = 2; 
    Edge* edges[m];
    input_edges(edges, m);
    set_flags(edges, m);
    // print_edges(edges, m);
    // Graph* g = makeGraph();

    return 0;
}
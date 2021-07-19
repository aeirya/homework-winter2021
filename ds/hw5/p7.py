struct {

}

trie {
    word node {
        string index
    }
}

tree {
    node {
        children : list<node>
        is_word : bool
        i : string index stored in node
    }
}

make_graph(trie t) {
    graph g;
    bfs(t.root, for each visited node n do { compare_children(n) })
}

void compare_children(node n) {
    global {
        g : graph
        strings : list<string>
    }
    current, previous : node
    a,b : string

    current = children.head()
    while current != null {
        previous = current
        current = current.next()
        a = strings[previous.i] 
        b = stirngs[current.i]
        for (int i=0; i<max(a.len, b.len); ++i) {
            if (a[i] != b[i]) {
                g.add_edge(a[i], b[i])
                break
            }
        }
    }
}

topo_sort(graph g) {
    global sorted_list
    color { white, grey, black }

    visit(node n) {
        if (n.color == black) return;
        if (n.color == grey) return true; // not a dag
        n.color = grey
        for m in neighbors(n)
            if visit(m) then return true
        n.color = black
        sorted_list.push_head(n)
    }
    
    for (node n in g) 
        n.color = white
    for (node n in g)
        if (n.color != white) 
            if visit(n) then return false  // not a dag
    return true; // succesfully created the list
}
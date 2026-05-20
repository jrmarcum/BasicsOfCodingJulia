function slices_index(s, v)
    for (i, x) in enumerate(s)
        if v == x
            return i - 1
        end
    end
    return -1
end

mutable struct ListNode{T}
    val::T
    next::Union{ListNode{T}, Nothing}
end

mutable struct List{T}
    head::Union{ListNode{T}, Nothing}
    tail::Union{ListNode{T}, Nothing}
    List{T}() where T = new{T}(nothing, nothing)
end

function push_node!(lst::List{T}, v::T) where T
    node = ListNode{T}(v, nothing)
    if lst.tail === nothing
        lst.head = node
        lst.tail = lst.head
    else
        lst.tail.next = node
        lst.tail = lst.tail.next
    end
end

function all_elements(lst::List{T}) where T
    elems = T[]
    e = lst.head
    while e !== nothing
        push!(elems, e.val)
        e = e.next
    end
    return elems
end

s = ["foo", "bar", "zoo"]
println("index of zoo: ", slices_index(s, "zoo"))

lst = List{Int}()
push_node!(lst, 10)
push_node!(lst, 13)
push_node!(lst, 23)
println("list: ", all_elements(lst))

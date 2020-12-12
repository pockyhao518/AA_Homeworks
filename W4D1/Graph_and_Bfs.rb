class GraphNode
    attr_reader :value, :neighbors
    def initialize(value)
        @value = value
        @neighbors = []
    end

    def neighbors=(neighbor)
        neighbor.each do |el|
            @neighbors << el
        end
    end
end

def bfs(starting_node, target_value, visited = [])
    target = nil
    return starting_node if starting_node.value == target_value
    return target if starting_node.neighbors == []
    starting_node.neighbors.each do |node|
        if !visited.include?(node)
            visited << node
            check = bfs(node, target_value, visited)
            target = check if check.nil? == false
        end
    end
    target
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "b") # => GraphNode b
p bfs(a, "f") # => nil
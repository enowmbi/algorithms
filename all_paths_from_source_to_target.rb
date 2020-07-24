# @param {Integer[][]} graph
# @return {Integer[][]}
def all_paths_source_target(graph)
    edges = {}
    graph.each_with_index do |edge, i|
        edges[i] = []
        edge.each do |e|
            edges[i] << e
        end
    end
    breadth_first_traversal_paths(0, edges, graph.size-1)
end

def breadth_first_traversal_paths(node, edges, n, tmp_path = [])
  queue = [[node, [node]]]
  paths = []
  until queue.empty?
    v, path = queue.shift
    if v == n
      paths << path
    end
    edges[v].each do |e|
      queue.push([e, path + [e]])
    end
  end
  paths
end

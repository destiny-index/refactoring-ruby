# new_network = { :nodes => [], :old_networks => [] }
# new_network[:old_networks] << node.network
# new_network[:nodes] << node
# new_network[:name] = new_network[:old_networks].collect do |network|
#   network.name
# end.join(" - ")

new_network = NetworkResult.new
new_network.old_networks << node.network
new_network.nodes << node

class NetworkResult
  attr_reader :old_networks, :nodes

  def initialize
    @nodes = []
    @old_networks = []
  end

  def name
    old_networks.collect { |network| network.name }.join(" - ")
  end
end

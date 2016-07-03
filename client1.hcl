# Increase log verbosity
log_level = "DEBUG"

#bind_addr = "0.0.0.0"

#advertise {
  # We need to specify our host's IP because we can't
  # advertise 0.0.0.0 to other nodes in our cluster.
#  rpc = "10.0.0.14:4647"
#  serf = "10.0.0.14:4648"
#}

# Setup data dir
data_dir = "/tmp/client1"

# Enable the client
client {
    enabled = true

    # For demo assume we are talking to server1. For production,
    # this should be like "nomad.service.consul:4647" and a system
    # like Consul used for service discovery.
    servers = ["192.168.0.14:4647"]
}

# Modify our port to avoid a collision with server1
ports {
    http = 4648
}

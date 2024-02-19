"""
  AbstractStorage

Module defining interface to use for creating Storage objects
"""
module AbstractStorage

"""
Define an abstract Container Type to be used for storage like objects
"""
abstract type Container end

"""
  Container(::Type{C}, d::Dict)

Create a container object  
"""
Container(::Type{C}, d::Dict) where {C<:Container} = nothing

"""
  minimaldict(container::C)

Create a dictionary from `container` containing the minimum
information required to locate the container.
"""
minimaldict(container::C) where {C<:Container} = Dict(n=>getfield(container, n) for n ∈ fieldnames(C))

"""
  backend(container::C)

String representation of the storage backend, e.g. "posix", "azureblob", "awsbucket", etc.
"""
backend(container::C) where {C<:Container} = "unknown"

"""
  session(container::C)

Create a authenticated interaction with a container
"""
session(container::C) where {C<:Container} = nothing

"""
  scrubsession!(container::C)

Remove sensitive information from `session` (e.g. token, client secret)
"""
scrubsession(container::C) where {C<:Container} = copy(container)

"""
  scrubsession!(container::C)

Remove sensitive information from `session` (e.g. token, client secret)
"""
scrubsession!(container::C) where {C<:Container} = container

export Container, backend, minimaldict, scrubsession, scrubsession!, session

end

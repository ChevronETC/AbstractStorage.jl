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
  session(container::C)

Create an authenticated interaction with a container
"""
session(container::C) where {C<:Container} = nothing

"""
  scrubsession(container::C)

Remove sensitive information from `session` (e.g. token, client secret)
"""
scrubsession(container::C) where {C<:Container} = copy(container)

"""
  scrubsession!(container::C)

Remove sensitive information from `session` (e.g. token, client secret)
"""
scrubsession!(container::C) where {C<:Container} = container

export Container, scrubsession, scrubsession!, session

end

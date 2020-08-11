module AbstractStorage

abstract type Container end

Container(::Type{C}, d::Dict) where {C<:Container} = nothing
session(container::C) where {C<:Container} = nothing
scrubsession(container::C) where {C<:Container} = copy(container)
scrubsession!(container::C) where {C<:Container} = container

export Container, scrubsession, scrubsession!, session

end

module AbstractStorage

abstract type Container end

Container(::Type{C}, d::Dict) where {C<:Container} = nothing
session(container::C) where {C<:Container} = nothing

export Container, session

end

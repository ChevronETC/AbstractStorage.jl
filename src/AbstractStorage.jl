__precompile__(true)

module AbstractStorage

abstract type Container end

function readpieces() end
function readpieces!() end
function writepieces() end

export Container, readpieces, readpieces!, writepieces

end

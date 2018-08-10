module AbstractStorage

abstract type Container end

function readpieces!() end
function writepieces() end

export Container, readpieces!, writepieces

end

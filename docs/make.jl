using Documenter, AbstractStorage

makedocs(
    sitename="AbstractStorage",
    modules=[AbstractStorage],
    pages = [
        "index.md",
        "links.md",
        "reference.md"
        ]
)

deploydocs(
    repo = "github.com/ChevronETC/AbstractStorage.jl.git"
)
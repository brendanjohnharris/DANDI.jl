using DANDIArchive
using Documenter

DocMeta.setdocmeta!(DANDIArchive, :DocTestSetup, :(using DANDIArchive); recursive=true)

makedocs(;
    modules=[DANDIArchive],
    authors="brendanjohnharris <brendanjohnharris@gmail.com> and contributors",
    repo="https://github.com/brendanjohnharris/DANDIArchive.jl/blob/{commit}{path}#{line}",
    sitename="DANDIArchive.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(
    repo = "github.com/brendanjohnharris/DANDIArchive.jl.git",
)

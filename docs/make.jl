using DANDI
using Documenter

DocMeta.setdocmeta!(DANDI, :DocTestSetup, :(using DANDI); recursive=true)

makedocs(;
    modules=[DANDI],
    authors="brendanjohnharris <brendanjohnharris@gmail.com> and contributors",
    repo="https://github.com/brendanjohnharris/DANDI.jl/blob/{commit}{path}#{line}",
    sitename="DANDI.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

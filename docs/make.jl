using Dandi
using Documenter

DocMeta.setdocmeta!(Dandi, :DocTestSetup, :(using Dandi); recursive=true)

makedocs(;
    modules=[Dandi],
    authors="brendanjohnharris <brendanjohnharris@gmail.com> and contributors",
    repo="https://github.com/brendanjohnharris/Dandi.jl/blob/{commit}{path}#{line}",
    sitename="Dandi.jl",
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
    repo = "github.com/brendanjohnharris/Dandi.jl.git",
)

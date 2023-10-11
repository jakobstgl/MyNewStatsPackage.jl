using MyNewStatsPackage
using Documenter

DocMeta.setdocmeta!(MyNewStatsPackage, :DocTestSetup, :(using MyNewStatsPackage); recursive=true)

makedocs(;
    modules=[MyNewStatsPackage],
    authors="Jakob Steglich <steglich.jakob@outlook.de> and contributors",
    repo="https://github.com/jakobstgl/MyNewStatsPackage.jl/blob/{commit}{path}#{line}",
    sitename="MyNewStatsPackage.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://jakobstgl.github.io/MyNewStatsPackage.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/jakobstgl/MyNewStatsPackage.jl",
    devbranch="master",
)

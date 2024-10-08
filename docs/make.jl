using Documenter

repo_url = "github.com/control-toolbox/LossControl.jl"

makedocs(;
    warnonly=:cross_references,
    sitename="Loss control",
    format=Documenter.HTML(;
        repolink="https://" * repo_url,
        prettyurls=false,
        size_threshold_ignore=[
            "statement.md", "numerical.md", "zermelo1.md", "zermelo2.md", "ho.md"
        ],
        assets=[
            asset("https://control-toolbox.org/assets/css/documentation.css"),
            asset("https://control-toolbox.org/assets/js/documentation.js"),
        ],
    ),
    pages=[
        "Introduction" => "index.md",
        "Statement of the problem" => "statement.md",
        "Numerical approach" => "numerical.md",
        "Zermelo navigation: Example 1" => "zermelo1.md",
        "Zermelo navigation: Example 2" => "zermelo2.md",
        "Harmonic oscillator problem" => "ho.md",
    ],
)

deploydocs(; repo=repo_url * ".git", devbranch="main")

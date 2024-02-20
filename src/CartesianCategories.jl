__precompile__(false)

module CartesianCategories

@nospecialize

using CAP

push!(ModulesForEvaluationStack, CartesianCategories)

include("init.jl")

end # module CartesianCategories

__precompile__(false)

module CartesianCategories

using CAP

push!(ModulesForEvaluationStack, CartesianCategories)

include("init.jl")

pop!(ModulesForEvaluationStack)

end # module CartesianCategories

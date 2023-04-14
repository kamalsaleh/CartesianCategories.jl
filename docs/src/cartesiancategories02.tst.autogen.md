
```jldoctest
julia> using CAP; using CartesianCategories

julia> I = InitialCategory( )
InitialCategory( )

julia> IsInitialCategory( I )
true

julia> Display( I )
A CAP category with name InitialCategory( ):

5 primitive operations were used to derive 13 operations for this category which mathematically
* IsEquippedWithHomomorphismStructure (but !yet algorithmically)
* IsInitialCategory

julia> OI = Opposite( I )
Opposite( InitialCategory( ) )

julia> IsInitialCategory( OI )
true

julia> Display( OI )
A CAP category with name Opposite( InitialCategory( ) ):

17 primitive operations were used to derive 17 operations for this category which mathematically
* IsEquippedWithHomomorphismStructure (but !yet algorithmically)
* IsInitialCategory

```

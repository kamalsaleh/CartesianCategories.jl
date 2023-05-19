
```jldoctest AutoDocTests
julia> using CAP; using CartesianCategories

julia> true
true

julia> distributive = DummyCategory( @rec(
          list_of_operations_to_install =
            @Concatenation(
              CAP_INTERNAL_CONSTRUCTIVE_CATEGORIES_RECORD.IsCartesianClosedCategory,
              CAP_INTERNAL_CONSTRUCTIVE_CATEGORIES_RECORD.IsCocartesianCategory  ),
          properties = [ "IsBicartesianClosedCategory", "IsSkeletalCategory" ] ) );

julia> InfoOfInstalledOperationsOfCategory( distributive )
19 primitive operations were used to derive 110 operations for this category which algorithmically
* IsBicartesianClosedCategory
and furthermore mathematically
* IsDistributiveCategory (but !yet algorithmically)
* IsSkeletalCategory

```

```jldoctest AutoDocTests
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

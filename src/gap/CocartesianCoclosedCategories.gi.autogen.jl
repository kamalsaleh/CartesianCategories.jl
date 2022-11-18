# SPDX-License-Identifier: GPL-2.0-or-later
# CartesianCategories: Cartesian && cocartesian categories && various subdoctrines
#
# Implementations
#
# THIS FILE WAS AUTOMATICALLY GENERATED



##
AddDerivationToCAP( IsomorphismFromCoexponentialToObject,
                    "calling the WithGiven operation ⥉ a skeletal setting",
                    [ [ IsomorphismFromCoexponentialToObjectWithGivenCoexponential, 1 ] ],
                    
  function( cat, object )

    return IsomorphismFromCoexponentialToObjectWithGivenCoexponential( cat, object, object );

end; CategoryFilter = IsSkeletalCategory );

##
AddDerivationToCAP( IsomorphismFromObjectToCoexponential,
                    "calling the WithGiven operation ⥉ a skeletal setting",
                    [ [ IsomorphismFromObjectToCoexponentialWithGivenCoexponential, 1 ] ],
                    
  function( cat, object )

    return IsomorphismFromObjectToCoexponentialWithGivenCoexponential( cat, object, object );

end; CategoryFilter = IsSkeletalCategory );

####################################
# Convenience Methods
####################################

##
InstallMethod( @__MODULE__,  Coexponential,
        [ IsCapCategoryObject, IsCapCategoryObject ],
        
  CoexponentialOnObjects );

##
InstallMethod( @__MODULE__,  Coexponential,
        [ IsCapCategoryMorphism, IsCapCategoryMorphism ],
        
  CoexponentialOnMorphisms );

##
InstallMethod( @__MODULE__,  Coexponential,
        [ IsCapCategoryObject, IsCapCategoryMorphism ],
        
  function( a, beta )
    
    return CoexponentialOnMorphisms( IdentityMorphism( a ), beta );
    
end );

##
InstallMethod( @__MODULE__,  Coexponential,
        [ IsCapCategoryMorphism, IsCapCategoryObject ],
        
  function( alpha, b )
    
    return CoexponentialOnMorphisms( alpha, IdentityMorphism( b ) );
    
end );

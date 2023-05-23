# SPDX-License-Identifier: GPL-2.0-or-later
# CartesianCategories: Cartesian and cocartesian categories and various subdoctrines
#
# Implementations
#
# THIS FILE WAS AUTOMATICALLY GENERATED



##
AddDerivationToCAP( IsomorphismFromExponentialToObject,
                    "calling the WithGiven operation in a skeletal setting",
                    [ [ IsomorphismFromExponentialToObjectWithGivenExponential, 1 ] ],
                    
  function( cat, object )
    
    return IsomorphismFromExponentialToObjectWithGivenExponential( cat, object, object );
    
end; CategoryFilter = IsSkeletalCategory );

##
AddDerivationToCAP( IsomorphismFromObjectToExponential,
                    "calling the WithGiven operation in a skeletal setting",
                    [ [ IsomorphismFromObjectToExponentialWithGivenExponential, 1 ] ],
                    
  function( cat, object )
    
    return IsomorphismFromObjectToExponentialWithGivenExponential( cat, object, object );
    
end; CategoryFilter = IsSkeletalCategory );

####################################
# Convenience Methods
####################################

##
InstallMethod( @__MODULE__,  Exponential,
        [ IsCapCategoryObject, IsCapCategoryObject ],
        
  ExponentialOnObjects );

##
InstallMethod( @__MODULE__,  Exponential,
        [ IsCapCategoryMorphism, IsCapCategoryMorphism ],
        
  ExponentialOnMorphisms );

##
InstallMethod( @__MODULE__,  Exponential,
        [ IsCapCategoryObject, IsCapCategoryMorphism ],
        
  function( a, beta )
    
    return ExponentialOnMorphisms( IdentityMorphism( a ), beta );
    
end );

##
InstallMethod( @__MODULE__,  Exponential,
        [ IsCapCategoryMorphism, IsCapCategoryObject ],
        
  function( alpha, b )
    
    return ExponentialOnMorphisms( alpha, IdentityMorphism( b ) );
    
end );

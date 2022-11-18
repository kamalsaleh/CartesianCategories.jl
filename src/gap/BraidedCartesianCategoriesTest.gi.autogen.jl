# SPDX-License-Identifier: GPL-2.0-or-later
# CartesianCategories: Cartesian && cocartesian categories && various subdoctrines
#
# Implementations
#
# THIS FILE WAS AUTOMATICALLY GENERATED



@InstallGlobalFunction( "BraidedCartesianCategoriesTest",
    
    function( cat, a, b )
        
        local opposite, verbose,
              
              a_op, braiding_a_b, braiding_a_b_op, braiding_inverse_a_b, braiding_inverse_a_b_op, 
              b_op, braiding_b_a, braiding_b_a_op, braiding_inverse_b_a, braiding_inverse_b_a_op;
        
        opposite = Opposite( cat );
        
        a_op = Opposite( a );
        b_op = Opposite( b );
        
        verbose = ValueOption( "verbose" ) == true;
        
        if CanCompute( cat, "CartesianBraiding" )
            
            if verbose
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CartesianBraiding' ..." );
                
            end;
            
            braiding_a_b = CartesianBraiding( a, b );
            braiding_b_a = CartesianBraiding( b, a );
            
            braiding_inverse_a_b_op = CocartesianBraidingInverse( opposite, a_op, b_op );
            braiding_inverse_b_a_op = CocartesianBraidingInverse( opposite, b_op, a_op );
            
            @Assert( 0, IsCongruentForMorphisms( braiding_inverse_a_b_op, Opposite( braiding_a_b ) ) );
            @Assert( 0, IsCongruentForMorphisms( braiding_inverse_b_a_op, Opposite( braiding_b_a ) ) );
            
        end;
        
        if CanCompute( cat, "CartesianBraidingInverse" )
            
            if verbose
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CartesianBraidingInverse' ..." );
                
            end;
            
            braiding_inverse_a_b = CartesianBraidingInverse( a, b );
            braiding_inverse_b_a = CartesianBraidingInverse( b, a );
            
            braiding_a_b_op = CocartesianBraiding( opposite, a_op, b_op );
            braiding_b_a_op = CocartesianBraiding( opposite, b_op, a_op );
            
            @Assert( 0, IsCongruentForMorphisms( braiding_a_b_op, Opposite( braiding_inverse_a_b ) ) );
            @Assert( 0, IsCongruentForMorphisms( braiding_b_a_op, Opposite( braiding_inverse_b_a ) ) );
            
        end;

end );

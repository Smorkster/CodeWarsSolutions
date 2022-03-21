function going( $n )
{
    function Get-Factorial ( $n )
    {
        if ( $n -eq 0 ) { return 1 }
        1..$n | % { [bigint]$a = 1 } { $a *= $_ } { $a }
    }
    function Get-FactorialSum ( $n )
    {
        if ( $n -eq 0 ) { return 1 }
        1..$n | % { [bigint]$a = 0 } { $a += ( 1..$_ | % { [bigint]$b = 1 } { $b *= $_ } { $b } ) } { $a }
    }
    return [System.Math]::Round( ( ( 1 / ( Get-Factorial $n ) ) * ( Get-FactorialSum $n ) ) , 6 )
}

#going 5
#going 7
going 304
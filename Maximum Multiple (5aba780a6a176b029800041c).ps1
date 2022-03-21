function MaxMultiple( [int] $d, [int] $b )
{
    for ( $i = $b; $i -gt 1; $i-- )
    { if ( ( $i % $d) -eq 0 ) { return $i } }
}

MaxMultiple 2 7
MaxMultiple 3 10

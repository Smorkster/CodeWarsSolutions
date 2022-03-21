function Doubles 
{   
    [OutputType([double])]
    Param ([int]$maxk, [int]$maxn)

    1..$maxn | ForEach-Object { $a = 0 } { $a += 1 / ( $maxk * ( [math]::Pow( ( 1 + $maxn ),  ( $maxk * 2 ) ) ) ) } { $a }
}

Doubles 1 3
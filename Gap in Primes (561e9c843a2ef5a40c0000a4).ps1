function gap([int]$g, [int]$m, [int]$n) 
{
    function Test-IsPrime {
        param( [int]$n )
        if ( $n -eq 2 -or $n -eq 3 ) { return $true }
        if ( $n -le 1 -or $n % 2 -eq 0 -or $n % 3 -eq 0 ) { return $false }
        for ( $i = 5; $i * $i -le $n; $i += 6 ) { if ( $n % $i -eq 0 -or $n % ( $i + 2 ) -eq 0 ) { return $false } }

        return $true
    }

    $res = @()
    for ( $i = $m; $i -le $n; $i++ )
    {
        if ( ( Test-IsPrime $i ) -and ( Test-IsPrime ( $i + $g ) ) )
        {
            $Inbetween = $false
            for ( $j = 1 ; $j -lt $g ; $j++ )
            { if ( Test-IsPrime ( $i + $j ) ) { $Inbetween = $true ; break } }
            if ( $Inbetween ) { break }
            else { $res = $i, ( $i + $g ) ; break }
        }
    }
    return $res
}

#gap 2 100 110
#gap 4 100 110
#gap 6 100 110
#gap 8 300 510
gap 10 330 400
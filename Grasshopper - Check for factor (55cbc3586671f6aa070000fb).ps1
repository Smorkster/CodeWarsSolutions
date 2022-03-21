function CheckForFactor([int] $base, [int] $factor) {
    $r = foreach ( $a in 1..$base )
    {
        if ( $a * $factor -eq $base ) { $true; $break }
    }
    return $r -eq $true
  }

CheckForFactor 10 2
CheckForFactor 63 7
CheckForFactor 2450 5
CheckForFactor 24612 3
CheckForFactor 9 2
CheckForFactor 653 7
CheckForFactor 2453 5
CheckForFactor 24617 3
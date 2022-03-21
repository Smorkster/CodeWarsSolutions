function evaporator ( [double] $content, [double] $evapperday, [double] $threshold )
{
    $p = $evapperday/100
    $pt = $threshold/100
    $ticker = 0
    $i = 1
    while( $i -gt $pt)
    {
        $i = $i - ( $i * $p )
        $ticker += 1
    }
    $ticker
}

evaporator 10 10 5
evaporator 10 10 10
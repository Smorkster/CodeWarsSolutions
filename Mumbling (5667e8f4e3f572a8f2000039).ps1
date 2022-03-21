function accum($s)
{
    $TI = ( Get-Culture ).TextInfo
    $r = ""
    for ( $i = 0; $i -lt $s.Length; $i++ )
    {
        $a = ""
        for ( $j = 1 ; $j -le ( $i + 1 ) ; $j++ )
        { $a += $s[$i] }
        $r += "$( $TI.ToTitleCase( $a ) )-"
    }
    return $r.TrimEnd( "-" )
}

accum "abcd"
#accum "ZpglnRxqenU"
#accum "NyffsGeyylB"
#accum "MjtkuBovqrU"
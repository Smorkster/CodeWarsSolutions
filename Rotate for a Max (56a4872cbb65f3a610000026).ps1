function max-rot
{
    param ( [string] $n )

    $l = @( $n )
    $ofs = ""
    for ( $i = 0 ; $i -lt $n.Length; $i++ )
    {
        $Latest = ( $l | Select-Object -Last 1 )
        $Latest.GetEnumerator() | `
            ForEach-Object `
            {
                $c = 0
                $First=""
                $Last=""
            } `
            {
                if ( $c -lt $i )
                {
                    $First += "$_"
                }
                elseif ( $c -eq $i )
                {
                    $CharFlip = "$_"
                }
                else
                {
                    $Last += "$_"
                }
                $c += 1
            }

        $l += "$First$Last$CharFlip"
    }

    return $l | Sort-Object | Select-Object -Last 1
}

max-rot 38458215

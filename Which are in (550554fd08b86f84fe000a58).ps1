function in-array
{
    [OutputType( [string[]] )]
    Param ( [string[]]$a1, [string[]]$a2 )

    $r = [System.Collections.ArrayList]::new()
    foreach ( $a in $a1 )
    {
        foreach ( $b in $a2 ) { if ( $b -cmatch $a ) { [void]$r.Add( $a ) } }
    }
    return $r | Select-Object -Unique | Sort-Object
}

in-array @("live", "arp", "strong") @("lively", "alive", "harp", "sharp", "armstrong")
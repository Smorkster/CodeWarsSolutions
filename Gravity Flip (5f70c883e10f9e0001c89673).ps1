function flip
{
    param (
    [ValidateScript( { $_ -match "L|R" } )]
        [char] $dir,
        [int[]] $arr
    )

    switch ( $dir )
    {
        "L" { return ( $arr | Sort-Object -Descending ) }
        "R" { return ( $arr | Sort-Object ) }
    }
}
function My-Languages
{
    param ( [hashtable] $results )

    return ( $results.GetEnumerator() | Sort-Object -Property Value -Descending | ForEach-Object { if ( $_.Value -ge 60 ) { $_.Key } } )
}
function mix
{
    param (
        [string] $s1,
        [string] $s2
    )

    $s1 = $s1 -creplace "[A-Z]"
    $s2 = $s2 -creplace "[A-Z]"

    $CharList = [System.Collections.ArrayList]::new()
    ( ( ( $s1.GetEnumerator() | Where-Object { [char]::IsLower( $_ ) } ) -join '' ),( ( $s2.GetEnumerator() | Where-Object { [char]::IsLower( $_ ) } ) -join '' ) -join '' ).GetEnumerator() | `
        Select-Object -Unique | `
        ForEach-Object {
            $s1CharCount = $s1 -replace "[^$($_)]"
            $s2CharCount = $s2 -replace "[^$($_)]"
            if ( $s1CharCount.Length -gt $s2CharCount.Length )
            {
                $CharList.Add( [PSCustomObject]@{
                    StringId = "1"
                    String = $s1CharCount
                    CharCount = $s1CharCount.Length
                } ) | Out-Null
            }
            elseif ( $s1CharCount.Length -lt $s2CharCount.Length )
            {
                $CharList.Add( [PSCustomObject]@{
                    StringId = "2"
                    String = $s2CharCount
                    CharCount = $s2CharCount.Length
                } ) | Out-Null
            }
            else {
                $CharList.Add( [PSCustomObject]@{
                    StringId = "E"
                    String = $s1CharCount
                    CharCount = $s1CharCount.Length
                } ) | Out-Null
            }
        }
    return ( $CharList | `
        Where-Object { $_.CharCount -gt 1 } | `
        Sort-Object -Property @{ Expression = { $_.CharCount } ; Descending = $true }, `
                            @{ Expression = { $_.StringId } }, `
                            @{ Expression = { [byte][char]( $_.String[0] ) } } | `
        ForEach-Object {
            "$( $_.StringId ):$( $_.String )"
        } ) -join "/"
}

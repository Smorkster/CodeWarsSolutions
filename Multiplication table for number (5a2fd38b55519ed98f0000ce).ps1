function Multi-Table
{
    param ( [int] $n )

    $ReturnString = ""
    1..10 | ForEach-Object { $ReturnString += "$_ * $n = $( $_ * $n )`n" }
    return $ReturnString.Trim()
}
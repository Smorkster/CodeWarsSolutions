function Convert-StringToCamelCase
{
    param ( $String )

    $a, $r = $String -split "-|_"
    $r | ForEach-Object { $a = "$a$( ( Get-Culture ).TextInfo.ToTitleCase( $_ ) )" }
    return $a
}

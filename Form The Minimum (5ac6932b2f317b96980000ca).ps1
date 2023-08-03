function Get-MinValue
{
    param ( [int[] ] $values )
    $OFS = ""
    return [string]( $values | Select-Object -Unique | Sort-Object )
}
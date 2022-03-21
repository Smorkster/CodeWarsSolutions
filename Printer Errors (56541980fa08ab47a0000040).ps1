function printer-error($s)
{
    $tot = $s.Length
    $e = ( $s -replace "[a-m]" ).Length
    "$e/$tot"
}

printer-error "aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"
printer-error "kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"
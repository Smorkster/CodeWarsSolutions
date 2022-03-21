function part-list
{
    [OutputType([string])]
    Param ([string[]]$arr)

    $ret = ""
    for ( $i = 0 ; $i -lt ( $arr.Count - 1 ) ; $i++ )
    {
        $ret += "($( $arr[0..$i] ), $( $arr[( $i + 1 )..( $arr.Length )] ))"
    }
    $ret
}

part-list "I", "wish", "I", "hadn't", "come"
part-list "cdIw", "tzIy", "xDu", "rThG"
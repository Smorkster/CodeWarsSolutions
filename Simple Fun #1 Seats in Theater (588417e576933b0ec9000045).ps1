function seats_in_theater {
    [OutputType([int])]
    Param ([int]$total_col, [int]$total_row, [int]$col, [int]$row)

    $ColBlock = $total_col - $col + 1
    $RowBlock = $total_row - $row
    return $ColBlock * $RowBlock
}

seats_in_theater 16 11 5 3
seats_in_theater 1 1 1 1
seats_in_theater 13 6 8 3
seats_in_theater 60 100 60 1
seats_in_theater 1000 1000 1000 1000
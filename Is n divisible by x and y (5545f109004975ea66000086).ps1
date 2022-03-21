function IsDivisible([int] $n, [int] $x, [int] $y) {
    $n % $x -eq 0 -and $n % $y -eq 0
}

IsDivisible 3 3 4
IsDivisible 12 3 4
IsDivisible 8 3 4
IsDivisible 48 3 4
IsDivisible 100 5 10
IsDivisible 100 5 3
IsDivisible 4 4 2
IsDivisible 5 2 3
IsDivisible 17 17 17
IsDivisible 17 1 17
module Lists where

x = [1, 2, 3]

numbers = 1 : 2 : 3 : []


double n =
    case n of
    []    -> []
    _     -> (2 * (head n)) : double(tail n)

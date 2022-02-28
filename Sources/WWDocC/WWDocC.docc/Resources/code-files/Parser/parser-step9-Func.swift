let multiply3: (Int) -> (Character) -> (Int) -> Int
= { x in { op in { y in x * y } } }

let p1: Parser<(Character) -> (Int) -> Int>
= Parser.integer.map { x in // (Result) -> T
    // (Int) -> (Character) -> (Int) -> Int
    multiply3(x)
}

let p2: Parser<(Int) -> Int>
= p1.combined(.char("*")).map { (fn, op) in
    // fn: (Character) -> (Int) -> Int
    fn(op)
}

let p3: Parser<Int>
= p2.combined(.integer).map { (fn, y) in
    // fn: (Int) -> Int
    fn(y)
}

print(p3.run("2*3"))
// Optional((6, ""))

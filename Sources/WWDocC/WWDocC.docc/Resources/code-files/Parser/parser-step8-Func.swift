Parser.integer
    .combined(.char("*"))
    .combined(.integer)
// Optional((((2, "*"), 3), ""))
    .map { $0.0 * $1 }
    .run("2*3")
// Optional((6, ""))

let multiply: ((Int, Character), Int) -> Int = {
    $0.0 * $1
}

// 将嵌套转化为单层以方便 `map` 的书写
let multiply2: (Int, Character, Int) -> Int = {
    $0 * $2
}

// 由于每层的解析器只能拿到一个结果
// 我们需要通过 Curry 将参数分开传入
let multiply3: (Int) -> (Character) -> (Int) -> Int
= { x in { op in { y in x * y } } }

let multiply4: (Int) -> (Character) -> (Int) -> Int
= curry(multiply2)

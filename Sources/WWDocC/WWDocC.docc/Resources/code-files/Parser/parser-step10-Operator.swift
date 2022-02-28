precedencegroup SequencePrecedence {
    associativity: left
    higherThan: AdditionPrecedence
}

infix operator <*> : SequencePrecedence
func <*> <A, B>(
    lhs: Parser<(A) -> (B)>, rhs: Parser<A>
) -> Parser<B> {
    lhs.combined(rhs).map { f, x in f(x) }
}

infix operator *> : SequencePrecedence
func *> <A, B>(
    lhs: Parser<A>, rhs: Parser<B>
) -> Parser<B> {
    lhs.combined(rhs).map { _, y in y }
}

infix operator <* : SequencePrecedence
func <* <A, B>(
    lhs: Parser<A>, rhs: Parser<B>
) -> Parser<A> {
    lhs.combined(rhs).map { x, _ in x }
}

infix operator <^> : SequencePrecedence
func <^> <A, B>(
    lhs: @escaping (A) -> B, rhs: Parser<A>
) -> Parser<B> {
    rhs.map(lhs)
}

let star = curry { $0 * $1 }
<^>
Parser.integer <*> (.char("*") *> .integer)

print(star.run("2*3"))
// Optional((6, ""))

let star = curry { $0 * $1 }
<^>
Parser.integer // <*> (.char("*") *> .integer)
// Optional(( (Int) -> Int, "*3" ))

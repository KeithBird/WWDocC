extension Parser {
    /// Combine two `Parser` into one
    /// - Returns: Combine their `Result`s into tuple
    func combined<R2>(_ other: Parser<R2>) -> Parser<(Result, R2)> {
        Parser<(Result, R2)> { input in
            guard let (result1, remainder1) = self.parse(input) else {
                return nil
            }
            guard let (result2, remainder2) = other.parse(remainder1) else {
                return nil
            }
            return ((result1, result2), remainder2)
        }
    }
}

Parser.integer
    .combined(.char("*"))
    .combined(.integer)
// Optional((((2, "*"), 3), ""))
    .map { $0.0 * $1 }
    .run("2*3")
// Optional((6, ""))

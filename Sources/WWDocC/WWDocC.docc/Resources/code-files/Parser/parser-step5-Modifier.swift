extension Parser {
    /// Generate a parser repeat parses until fails
    var many: Parser<[Result]> {
        Parser<[Result]> { input in
            var result: [Result] = []
            var remainder = input
            while let (element, newRemainder) = parse(remainder) {
                result.append(element)
                remainder = newRemainder
            }
            return (result, remainder)
        }
    }
}

Parser.digit.many.run("123abc")
// Optional((["1", "2", "3"], "abc"))

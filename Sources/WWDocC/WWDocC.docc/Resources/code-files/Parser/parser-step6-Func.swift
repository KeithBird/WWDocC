extension Parser {
    /// Execute parse
    func run(_ string: String) -> (Result, String)? {
        guard let (result, reminder) = parse(string) else {
            return nil
        }
        return (result, String(reminder))
    }
    
    /// Transform `Parser`'s result
    func map<T>(
        _ transform: @escaping (Result) -> T
    ) -> Parser<T> {
        Parser<T> { input in
            guard let (result, remainder) = self.parse(input) else { return nil }
            return (transform(result), remainder)
        }
    }
}

Parser.digit.many
    .map { Int(String($0))! }
// ["1", "2", "3"] -> "123" -> 123
    .run("123abc")
// Optional((123, "abc"))

extension Parser where Result == Int {
    /// A `Parser<Int>` that parse a integer
    static let integer = Parser<Character>.digit.many
        .map { Int(String($0))! }
}

extension CharacterSet {
    func contains(_ c: Character) -> Bool {
        let scalars = c.unicodeScalars
        guard scalars.count == 1 else { return false }
        return contains(scalars.first!)
    }
}

extension Parser where Result == Character {
    /// A `Parser<Char>` that parse a decimal digits
    static let digit: Parser<Character> = .char(
        // (Character) -> Bool
        matching: CharacterSet.decimalDigits.contains
    )
}

Parser.digit.run("456")
// Optional(("4", "56"))

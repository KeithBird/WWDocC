extension Parser {
    /// Generate a `Parser<Char>` to parse a char
    static func char(_ char: Character) -> Parser<Character> {
        Parser<Character> { input in
            guard let first = input.first else { return nil }
            guard char == first else { return nil }
            
            // func dropFirst() -> Substring
            // (A slice of a string.) O(N) -> O(1)
            return (first, String(input.dropFirst()))
        }
    }
    
    /// Generate a `Parser<Char>` to parse a char
    static func char(
        matching condition: @escaping(Character) -> Bool
    ) -> Parser<Character> {
        Parser<Character> { input in
            guard let char = input.first else { return nil }
            guard condition(char) else { return nil }
            return (char, String(input.dropFirst()))
        }
    }
}

extension Parser {
    /// Execute parse
    func run(_ string: String) -> (Result, String)? {
        
        // (Result, String)? ->  (Result, String)
        guard let (result, reminder) = parse(string) else {
            return nil
        }
        return (result, reminder)
    }
}

Parser<Character>.char("1").run("123")
// Optional(("1", "23"))

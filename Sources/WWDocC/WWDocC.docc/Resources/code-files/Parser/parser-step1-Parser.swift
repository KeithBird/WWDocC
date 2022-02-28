struct Parser<Result> {
    
    /// Parse a part of string
    let parse: (String) -> (Result, String)?
}

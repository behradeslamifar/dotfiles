# Coding Standard

### Rule 1: Function Closing Brace Comment
All functions MUST have a comment at the colsing brace that includes the full function signature exactly as it appears in the declaration

#### Format
The comment should be the exact function signature from the declaration line, including receiver (if applicable)

#### Examples

**Good Example - Simple Function**
```go
func CalculateSum(a, b int) int {
    return a + b
} // CalculateSum(a, b int) int
```

**Good Example - Method with Value Receiver**
```go
func (c config) GetPort() int {
    return c.Port
} // (c config) GetPort() int

#### Important Notes
- Copy the exact function signature from the declration
- Include receiver for methods: // (c config) GetPort() int
- Comment should be on the same line as the closing brace
- Apply to ALL functions and methods. no exceptations

### Rule2: Naming Convention for local variables, global variables, constants and functions

#### Format
Choose one of naming convention ([wikipedia.org: Naming convention](https://en.wikipedia.org/wiki/Naming_convention_(programming)))
- flatcase
- UPPERFLATCASE
- camelCase
- PascalCase
- snake_case
- SCREAMING_SNAKE_CASE or MACRO_CASE
- camel_Snake_Case
- Pascal_Snake_Case



//: [Previous](@previous)

func isValidSudoku(_ board: [[Character]]) -> Bool {
    var rows = [Int: Set<Character>]()
    var cols = [Int: Set<Character>]()
    var squares = [[Int]: Set<Character>]()
    
    for row in 0..<9 {
        for col in 0..<9 {
            let char = board[row][col]
            if char == "." {
                continue
            }
            if rows[row, default: []].contains(char) ||
                cols[col, default: []].contains(char) ||
                squares[[row/3,col/3], default: []].contains(char) {
                return false
            }
            rows[row, default: []].insert(char)
            cols[col, default: []].insert(char)
            squares[[row/3,col/3], default: []].insert(char)
        }
    }
    return true
}

//: [Next](@next)

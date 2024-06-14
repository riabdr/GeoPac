import SwiftUI

struct mmm: View {
    enum Player {
        case human, computer
    }
    
    @State private var board = Array(repeating: "", count: 9)
    @State private var currentPlayer: Player = .human
    
    var body: some View {
        VStack {
            Text("Tic Tac Toe")
                //.font(.title)
                .font(.custom("Times New Roman", fixedSize:50))
                .padding()
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 5) {
                ForEach(0..<9, id: \.self) { index in
                    CellView(value: board[index], onTap: {
                        if board[index].isEmpty {
                            board[index] = "✈️"
                            if !checkWinner(player: .human) {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    makeComputerMove()
                                }
                            }
                        }
                    })
                }
            }
        }
        .padding()
    }
    
    func checkWinner(player: Player) -> Bool {
        let winPatterns: [[Int]] = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        let playerMark = player == .human ? "✈️" : "🌺"
        
        for pattern in winPatterns {
            if board[pattern[0]] == playerMark && board[pattern[1]] == playerMark && board[pattern[2]] == playerMark {
                print("\(player) wins!")
                return true
            }
        }
        
        return false
    }
    
    func makeComputerMove() {
        var emptyCells: [Int] = []
        for (index, value) in board.enumerated() {
            if value.isEmpty {
                emptyCells.append(index)
            }
        }
        
        if let randomIndex = emptyCells.randomElement() {
            board[randomIndex] = "🌺"
            _ = checkWinner(player: .computer)
        }
    }
}

struct CellView: View {
    let value: String
    let onTap: () -> Void
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.blue.opacity(0.5))
                .aspectRatio(1, contentMode: .fit)
                .onTapGesture {
                    onTap()
                }
            
            Text(value)
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        mmm()
    }
}


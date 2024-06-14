//
//  tic.swift
//  GeoPac
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI
import Foundation
//struct tic: View {
    //import Foundation

    // Enum to represent the players
    enum Player {
        case X
        case O
    }

    // Enum to represent the state of each cell in the board
    enum CellState {
        case empty
        case filled(Player)
    }

    // Function to print the current state of the board
    func printBoard(board: [[CellState]]) {
        for row in board {
            for cell in row {
                switch cell {
                case .empty:
                    print("_", terminator: "\t")
                case .filled(let player):
                    switch player {
                    case .X:
                        print("X", terminator: "\t")
                    case .O:
                        print("O", terminator: "\t")
                    }
                }
            }
            print()
        }
    }

    // Function to check if a player has won
    func checkWin(board: [[CellState]], player: Player) -> Bool {
        // Check rows
        for row in board {
            if row.filter({ if case .filled(player) = $0 { return true } else { return false }}).count == 3 {
                return true
            }
        }
        
        // Check columns
        for columnIndex in 0..<3 {
            if board[0][columnIndex] == .filled(player) &&
               board[1][columnIndex] == .filled(player) &&
               board[2][columnIndex] == .filled(player) {
                return true
            }
        }
        
        // Check diagonals
        if board[0][0] == .filled(player) && board[1][1] == .filled(player) && board[2][2] == .filled(player) {
            return true
        }
        
        if board[0][2] == .filled(player) && board[1][1] == .filled(player) && board[2][0] == .filled(player) {
            return true
        }
        
        return false
    }

    // Function to check if the board is full
    func isBoardFull(board: [[CellState]]) -> Bool {
        for row in board {
            for cell in row {
                if case .empty = cell {
                    return false
                }
            }
        }
        return true
    }

    // Function to play the game
    func playGame() {
        var currentPlayer: Player = .X
        var board: [[CellState]] = Array(repeating: Array(repeating: .empty, count: 3), count: 3)
        
        print("Let's play Tic Tac Toe!")
        
        while true {
            printBoard(board: board)
            print("Player \(currentPlayer)'s turn. Enter row and column (e.g., 1 2): ")
            if let input = readLine(),
               let position = input.split(separator: " ").map({ Int($0)! - 1 }),
               position.count == 2,
               position.allSatisfy({ $0 >= 0 && $0 < 3 }),
               board[position[0]][position[1]] == .empty {
                board[position[0]][position[1]] = .filled(currentPlayer)
                if checkWin(board: board, player: currentPlayer) {
                    printBoard(board: board)
                    print("Player \(currentPlayer) wins!")
                    break
                } else if isBoardFull(board: board) {
                    printBoard(board: board)
                    print("It's a draw!")
                    break
                }
                currentPlayer = (currentPlayer == .X) ? .O : .X
            } else {
                print("Invalid input. Try again.")
            }
        }
    }

    // Start the game
    playGame()

}

#Preview {
    tic()
}

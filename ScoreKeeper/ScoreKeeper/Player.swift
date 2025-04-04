//
//  Player.swift
//  ScoreKeeper
//
//  Created by dong eun shin on 4/1/25.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()


    var name: String
    var score: Int
}

extension Player: Equatable {
    static func == (lhs: Player, rhs: Player) -> Bool {
        lhs.name == rhs.name && lhs.score == rhs.score
    }
}

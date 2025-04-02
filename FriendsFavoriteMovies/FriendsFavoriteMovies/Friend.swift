//
//  Friend.swift
//  FriendsFavoriteMovies
//
//  Created by dong eun shin on 4/1/25.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String

    init(name: String) {
        self.name = name
    }

    static let sampleData = [
        Friend(name: "Elena"),
        Friend(name: "Graham"),
        Friend(name: "Mayuri"),
        Friend(name: "Rich"),
        Friend(name: "Rody"),
    ]
}

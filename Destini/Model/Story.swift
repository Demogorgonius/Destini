//
//  Story.swift
//  Destini
//
//  Created by Sergey on 01.02.2023.
//

import Foundation

struct Story {
    let title: String
    let choice1: String
    let choice1Destination: Int
    let choice2: String
    let choice2Destination: Int
    
    init(t: String, c1: String, c1D: Int, c2: String, c2D: Int) {
        self.title = t
        self.choice1 = c1
        self.choice1Destination = c1D
        self.choice2 = c2
        self.choice2Destination = c2D
    }
}

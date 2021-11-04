//
//  pokedex.swift
//  pokedex
//
//  Created by Alexander Buysse on 01/10/2021.
//

import Foundation
import SwiftUI

struct Pokedex: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var img: String
    var weight: String
    var height: String
    }

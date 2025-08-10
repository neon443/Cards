//
//  Card.swift
//  Cards
//
//  Created by neon443 on 09/08/2025.
//

import Foundation

struct Card {
	var suit: Suit
	var value: Int
}

enum Suit {
	case spade
	case heart
	case club
	case diamond
}

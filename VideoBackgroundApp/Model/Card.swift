//
//  Card.swift
//  VideoBackgroundApp
//
//  Created by Pouya Sadri on 29/01/2024.
//

import SwiftUI

struct Card : Identifiable{
	let id : UUID = UUID()
	let title : String
	let description : String
}


let testData : [Card] = [
	Card(title: "Select Your Destiny", description: "Choose your destination, plan your tour. Select the fabulous place for your holiday"),
	Card(title: "Schedule Your Trip", description: "Choose the date and get your ticket. We give you the best price"),
	Card(title: "Enjoy Your Holidays", description: "Enjoy the holiday! Don't forget to take awesome pictures and share with your friends."),
	Card(title: "", description: "")
]

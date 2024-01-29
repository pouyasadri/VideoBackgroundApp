//
//  CardView.swift
//  VideoBackgroundApp
//
//  Created by Pouya Sadri on 29/01/2024.
//

import SwiftUI

struct CardView: View {
	
	var card : Card
	
    var body: some View {
		VStack{
			
			Spacer()
				.frame(width: 400,height: 400)
			
			Text(card.title)
				.font(.system(size: 35))
				.fontWeight(.bold)
				.foregroundStyle(.white)
				.offset(y:40)
			
			Text(card.description)
				.fontWeight(.regular)
				.multilineTextAlignment(.center)
				.font(.system(size: 22))
				.foregroundStyle(.white)
				.frame(width: 335,height: 100)
				.offset(y: 40)
				.padding(5)
		}
		.padding()
    }
}

#Preview {
    CardView(card: testData[1])
}

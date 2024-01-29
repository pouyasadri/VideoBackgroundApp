//
//  LoginView.swift
//  VideoBackgroundApp
//
//  Created by Pouya Sadri on 29/01/2024.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
		ZStack{
			Color.black
				.opacity(0.5)
				.ignoresSafeArea()
			LoginBoard()
			
		}
    }
}

#Preview {
    LoginView()
}

//MARK: - Login Board

struct LoginBoard : View {
	var body: some View {
		ZStack{
			RoundedRectangle(cornerRadius: 50)
				.frame(width: 425, height: 320)
				.foregroundStyle(.white)
			
			VStack{
				HStack{
					Text("Login")
						.foregroundStyle(.black)
						.fontWeight(.bold)
						.font(.system(size: 35))
					Spacer()
						.frame(width: 240,height: 0)
				}
				
				FormFieldView(image: "person", text: "Username")
				FormFieldView(image: "key", text: "Password")
				
				Button{
					// do nothing
				}label: {
					HStack{
						Text("Sing In")
					}
				}
				.tint(.black)
				.clipShape(.capsule)
				.buttonStyle(.borderedProminent)
				
				Spacer()
					.frame(width: 0,height: 80)
			}
			
		}
		.offset(y: 320)
	}
}

//MARK: - Form Field View

struct FormFieldView : View {
	
	let image : String
	let text : String
	
	var body: some View {
		HStack{
			Image(systemName: image)
				.foregroundStyle(.secondary)
				.padding()
			
			Text(text)
				.frame(width: 280,height: 50,alignment: .leading)
		}
		.overlay(
			RoundedRectangle(cornerRadius: 8)
				.stroke(Color.gray,lineWidth: 1)
		)
	}
}

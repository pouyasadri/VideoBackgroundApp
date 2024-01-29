//
//  ContentView.swift
//  VideoBackgroundApp
//
//  Created by Pouya Sadri on 29/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ZStack{
			MainView()
		}
    }
}

#Preview {
    ContentView()
}

//MARK: - Main View

struct MainView: View {
	
	init(){
		UIPageControl.appearance().currentPageIndicatorTintColor = .white
		UIPageControl.appearance().pageIndicatorTintColor = UIColor.white.withAlphaComponent(0.2)
	}
	
	@State private var selectedPage = 0
	@State private var isShowLogin = false
	
	var body: some View {
		ZStack{
			PlayerView()
				.ignoresSafeArea()
			semiTransparentRoundedRectangle()
			
			VStack{
				Image("travel")
					.resizable()
					.frame(width: 320,height: 160)
					.padding(.top,25)
				Spacer()
				
			}
			.padding(20)
			
			cardTabView()
			
			if selectedPage == 3 {
				loginView()
			}
		}
		.onChange(of: selectedPage){
			if selectedPage != 3 {
				isShowLogin = false
			}
		}
	}
	
	private func semiTransparentRoundedRectangle() -> some View{
		RoundedRectangle(cornerRadius: 20)
			.frame(width: 500,height: 320)
			.foregroundStyle(.black.opacity(0.1))
			.blur(radius: 2)
			.offset(y: 320)
	}
	
	private func cardTabView() -> some View{
		ZStack{
			TabView(selection: $selectedPage){
				ForEach(0 ..< testData.count , id: \.self){ index in
					CardView(card: testData[index])
						.tag(index)
					
				}
			}
			.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
		}
	}
	
	private func loginView() -> some View{
		ZStack{
			LoginBoard()
		}
		.offset(y: isShowLogin ? 0 : 300)
		.onAppear{
			withAnimation(Animation.default.repeatCount(1)){
				isShowLogin.toggle()
			}
		}
	}
}

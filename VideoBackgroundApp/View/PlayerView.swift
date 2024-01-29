//
//  PlayerView.swift
//  VideoBackgroundApp
//
//  Created by Pouya Sadri on 29/01/2024.
//

import SwiftUI
import AVKit
import AVFoundation

struct PlayerView : UIViewRepresentable{
	func makeUIView(context: Context) -> some UIView {
		LoopingPlayerUIView(frame: .zero)
	}
	
	func updateUIView(_ uiView: UIViewType, context: Context) {
	}
}

class LoopingPlayerUIView : UIView{
	private let playerLayer = AVPlayerLayer()
	private var playerLoopers : AVPlayerLooper?
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupPlayer()
	}
	
	required init?(coder : NSCoder){
		super.init(coder: coder)
		setupPlayer()
	}
	
	private func setupPlayer(){
		guard let fileURL = Bundle.main.url(forResource: "video", withExtension: ".mp4")else{
			print("Error : Video file not found.")
			return
		}
		
		let asset = AVAsset(url: fileURL)
		let item = AVPlayerItem(asset: asset)
		let player = AVQueuePlayer()
		
		playerLayer.player = player
		playerLayer.videoGravity = .resizeAspectFill
		layer.addSublayer(playerLayer)
		
		playerLoopers = AVPlayerLooper(player: player, templateItem: item)
		
		player.play()
		
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		playerLayer.frame = bounds
	}
}

#Preview {
    PlayerView()
}

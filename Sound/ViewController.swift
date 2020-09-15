//
//  ViewController.swift
//  Sound
//
//  Created by 高山瑞基 on 2020/09/14.
//  Copyright © 2020 Takayama Mizuki. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButton: UIButton!
    
    //ドラムのサウンドファイルを読み込んで、プレイヤーを作る
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownDrumButton() {
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
    }

    @IBAction func touchUpDrumButton() {
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }

}


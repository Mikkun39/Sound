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
    
    //ドラムのサウンドファイルを読み込んで、プレイヤーを作る
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapDrupButton() {
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
    }


}


//
//  ViewController.swift
//  Swift5Timer1
//
//  Created by kobashou06 on 2020/11/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    var timer = Timer()
    var count = Int()
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stopButton.isEnabled = true
    }
    
    func startTimer(){
        
        //タイマーを回す　０.２秒ごとにあるメソッドを呼ぶ
        timer = Timer.scheduledTimer(timeInterval: 0.2,
                                     target: self,
                                     selector: #selector(timerUpdate),
                                     userInfo: nil,
                                     repeats: true)
                                     
        
    }
    
    //０.２秒ごとに呼ばれる
    @objc func timerUpdate(){
        
        count = count + 1
        imageView.image = imageArray[count]
        
        
        
    }
    

    @IBAction func start(_ sender: Any) {
        
        //imageViewのimageに画像を反映していく
        
        //startButtonは押せなくする
        startButton.isEnabled = true
        
    }
    
    @IBAction func stop(_ sender: Any) {
        
        //imageViewのimageに反映されている画像の流れをストップする
        
        //startButtonを押せるようにする
        startButton.isEnabled = false
        
    }
    
    
}


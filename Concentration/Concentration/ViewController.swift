//
//  ViewController.swift
//  Concentration
//
//  Created by 송지훈 on 2020/03/06.
//  Copyright © 2020 송지훈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var flipCardCollection: [UIButton]!
    
    
    var flipCount = 0 {
        didSet { // 속성감시자 flipCount가 바뀔때마다 didSet 안의 내용을 실행한다.
            flipCountScore.text = "Flip Count : \(flipCount)"

        }
    }
    
    var emojiSets = ["👽","🧖‍♂️","👽","🧖‍♂️"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var flipCountScore: UILabel!
    
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let flipCardIndex = flipCardCollection.firstIndex(of: sender){
            print(flipCardIndex)
            flipCard(withEmoji: emojiSets[flipCardIndex], on: sender)
        }else{
            print("UNKNOWN CARD")
        }
    }
    

    // 매개변수에서 withEmojis는 밖에서 전달해주는 이름이고 emoji는 내부에서 쓰는 이름임
    // _ sender 는 밖에서 전달해주는게 없고 sender 라는 이름만 안에서 사용하겠다는 말
    func flipCard(withEmoji emoji:String, on button: UIButton){
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        }else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}


//
//  ViewController.swift
//  lyrics
//
//  Created by Yolanda H. on 2018/12/22.
//  Copyright © 2018 Yolanda H. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var printButton: UIButton!
    @IBOutlet weak var lyrics: UILabel!
    func shineForYou(){
        lyrics.text = "你最喜歡月光 我將銀河擦亮\n\n透出閃耀的光芒\n\n你最喜歡煙火 為你點燃海洋\n\n我們一起去流浪"
    }
    func coverForYou(){
        lyrics.text = "貝殼裡的珍珠 做成蝸牛的家\n\n拇指公主長高啦\n\n小王子的頭髮 變成冬日服裝\n\n這樣你能暖和吧"
    }
    func forYouBuySomething(){
        lyrics.text = "買了一雙巨人翅膀 \n\n還有一對天使眼光\n\n如果你喜歡飛翔 \n\n我也能為你裝模作樣"
    }
    func forYouLoseSomething(){
        lyrics.text = "一隻旋轉水晶木馬 \n\n一條美人魚的尾巴\n\n和魔法師的皮箱 \n\n都為你冒險失去方向"
    }
    func fantasy(meSeven: String){
        lyrics.text = "你就是我的全部 有你我就能滿足\n\n" + meSeven + "在薄冰上跳舞\n\n做你遊牧的民族 我的憂傷迷了路\n\n那麼快樂 那麼獨特 稀有的"
    }
    func boutique(sixAddSix: String, bestCollection: String, end: String){
        lyrics.text = "我有一座奇幻 美麗的精品店\n\n蒐集世界的寶藏\n\n" + sixAddSix + "\n\n費盡心思調查 " + bestCollection + end
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lyrics.text = "《奇幻精品店》\n\n許哲珮 Peggy"
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func playSlider(_ sender: UISlider) {
        let sliderInt = Int(slider.value)
        if sliderInt == 0 {
            lyrics.text = "《奇幻精品店》Open🔮"
        }
        else if sliderInt == 1 {
            shineForYou()
        
        }
        else if sliderInt == 2 {
            forYouBuySomething()
            
        }
        else if sliderInt == 3 {
            fantasy(meSeven: "我們一起轉個圈 ")
        }
        else if sliderInt == 4 {
            boutique(sixAddSix: "會說話的吉他 會保密的紙箱",bestCollection: "你最愛的寶貝 ", end: "我的戰利品")
        }
        else if sliderInt == 5 {
            coverForYou()
        }
        else if sliderInt == 6 {
            forYouLoseSomething()
        }
        else if sliderInt == 7 {
            fantasy(meSeven: "我有人魚的勇氣 ")
        }
        else if sliderInt == 8 {
            boutique(sixAddSix: "為了討你歡心 是我所有目的",bestCollection: "你才是最珍貴 ", end: "是我最後的收藏")
        }
        else {
            lyrics.text = "《奇幻精品店》Closed"
        }
        printButton.setTitle("▶️"+String(sliderInt), for: UIControl.State.normal)
    }
    
    @IBAction func button(_ sender: UIButton) {
        let sliderInt = Int(slider.value)
        self.lyrics.frame.origin.y = 150
        self.lyrics.alpha = 0
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 3, delay: 0, animations: {
            self.lyrics.frame.origin.y = 40
            self.lyrics.alpha = 1
        }, completion: nil)
        if sliderInt == 0 {
            lyrics.text = "《奇幻精品店》Open🔮"
            sender.setTitle("➡️", for: UIControl.State.normal)
            slider.value = 1.0
        }
            else if sliderInt == 1 {
                shineForYou()
                sender.setTitle("▶️ 1", for: UIControl.State.normal)
                slider.value = 2.0
            }
            else if sliderInt == 2 {
                forYouBuySomething()
                
                sender.setTitle("▶️ 2", for: UIControl.State.normal)
                slider.value = 3.0
            }
            else if sliderInt == 3 {
                fantasy(meSeven: "我們一起轉個圈 ")
                sender.setTitle("▶️ 3", for: UIControl.State.normal)
                slider.value = 4.0
            }
            else if sliderInt == 4 {
                boutique(sixAddSix: "會說話的吉他 會保密的紙箱",bestCollection: "你最愛的寶貝 ", end: "我的戰利品")
                sender.setTitle("▶️ 4", for: UIControl.State.normal)
                slider.value = 5.0
            }
            else if sliderInt == 5 {
                coverForYou()
                sender.setTitle("▶️ 5", for: UIControl.State.normal)
                slider.value = 6.0
            }
            else if sliderInt == 6 {
                forYouLoseSomething()
                sender.setTitle("▶️ 6", for: UIControl.State.normal)
                slider.value = 7.0
            }
            else if sliderInt == 7 {
                fantasy(meSeven: "我有人魚的勇氣 ")
                sender.setTitle("▶️ 7", for: UIControl.State.normal)
                slider.value = 8.0
            }
            else if sliderInt == 8 {
                boutique(sixAddSix: "為了討你歡心 是我所有目的",bestCollection: "你才是最珍貴 ", end: "是我最後的收藏")
                sender.setTitle("▶️ 8", for: UIControl.State.normal)
                slider.value = 9
            }
            else {
                lyrics.text = "《奇幻精品店》Closed"
                sender.setTitle("↩️", for: UIControl.State.normal)
                slider.value = 0
            }
        
    }
    


}


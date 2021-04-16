//
//  CircularButton.swift
//  CircularButton
//
//  Created by Angelos Staboulis on 16/4/21.
//

import Foundation
import UIKit
@IBDesignable
class CircularButton:UIButton{
    @IBInspectable
    var caption:String!=""{
        didSet{
            self.setTitle(caption, for: .normal)
        }
    }
    @IBInspectable
    var bgColor:UIColor! = .clear{
        didSet{
            backgroundColor = bgColor
        }
    }
    @IBInspectable
    var captionColor:UIColor! = .clear{
        didSet{
            setTitleColor(captionColor, for: .normal)
        }
    }
    @IBInspectable
    var isRound:String!=""{
        didSet{
            if isRound.contains("Round") {
                makeRound()
            }
            else{
                
            }
        }
    }
    @IBInspectable
    var bgImage:UIImage! = .none{
        didSet{
            setBackgroundImage(bgImage, for: .normal)
        }
    }
    func moveToPosition(rect:CGRect){
        self.frame = rect
    }
    func moveDown(delay:Int,y:CGFloat){
        UIView.animate(withDuration: TimeInterval(delay)) {
            if y < UIScreen.main.bounds.height {
                let result = UIScreen.main.bounds.height - y
                var value =  Int()
                value = value + Int((y + result))
                self.layer.frame.origin.y =  self.layer.frame.origin.y + CGFloat(value)
            }
            
        }
    }
    func moveUp(delay:Int,y:CGFloat){
        UIView.animate(withDuration: TimeInterval(delay)) {
            if y > 0 {
                let result = UIScreen.main.bounds.height - y
                var value =  Int()
                value = value + Int((y + result))
                self.layer.frame.origin.y =  self.layer.frame.origin.y + CGFloat(-value)
            }
            
        }
    }
    func makeRound(){
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.masksToBounds = true
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override class func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
    }
}

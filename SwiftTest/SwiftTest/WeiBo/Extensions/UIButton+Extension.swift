//
//  UIButton+Extension.swift
//  SwiftTest
//
//  Created by 王成龙 on 2022/8/8.
//

import UIKit

extension UIButton{
    
    class func imageButton(normalImageName:String, backgroundImageName:String) -> UIButton{
        let button = UIButton()
        button.setImage(UIImage(named: normalImageName), for: .normal)
        let normalImageHL = normalImageName + "_highlighted"
        button.setImage(UIImage(named: normalImageHL), for: .highlighted)
        
        button.setBackgroundImage(UIImage(named: backgroundImageName), for: .normal)
        let backgroundImageHL = backgroundImageName + "_highlighted"
        button.setBackgroundImage(UIImage(named: backgroundImageHL), for: .highlighted)
        return button
    }
    
    class func textButton(title:String, fontSize:CGFloat, normalColor:UIColor, highlightedColor:UIColor, backgroundImageName:String? = nil) -> UIButton{
        
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(normalColor, for: .normal)
        button.setTitleColor(highlightedColor, for: .highlighted)
        button.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        if let backgroundImageName = backgroundImageName{
            button.setBackgroundImage(UIImage(named: backgroundImageName), for: .normal)
            let backgroundImageNameHL = backgroundImageName + "_highlighted"
            button.setBackgroundImage(UIImage(named: backgroundImageNameHL), for: .highlighted)
        }
        return button
    }
    
    
}

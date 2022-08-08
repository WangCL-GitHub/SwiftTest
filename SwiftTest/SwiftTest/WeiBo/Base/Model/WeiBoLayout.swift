//
//  WeiBoLayout.swift
//  SwiftTest
//
//  Created by 王成龙 on 2022/8/8.
//

import UIKit

struct WeiBoLayout {

    static let ratio:CGFloat = UIScreen.main.bounds.width / 375.0
    static func Layout(_ number: CGFloat) -> CGFloat {
        return number * ratio
    }
}

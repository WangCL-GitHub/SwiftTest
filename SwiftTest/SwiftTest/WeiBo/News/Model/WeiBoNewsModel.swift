//
//  WeiBoNewsModel.swift
//  SwiftTest
//
//  Created by 王成龙 on 2022/8/8.
//

import Foundation
import UIKit

class WeiBoNewsModel: NSObject {
    var id:Int64 = 0
    
    var name:String = ""
    
    var avatar:String?
    
    var isVip:Bool = false
    
    var date:String?
    
    var content:String?
    
    var pic_urls:[WeiBoNewsPictureModel]?
    
    var news_status:WeiBoNewsStatusModel?
    
    var rowHeight:CGFloat = 0
    
    func getRowHeight() {
        let margin: CGFloat = StatusPictureOutterMargin
        var height:CGFloat = 0
        let width = UIScreen.screenW - 2 * margin
        let bottomViewHeight = WeiBoLayout.Layout(35)
        //原创微博 = 顶部分割线(12) + margin(12) + 头像图片(34) + margin(12) + 正文内容(计算) + 配图高度(计算) + margin(12) + 底部视图(35)
    
        
        //顶部视图
        height = margin * 2 + WeiBoLayout.Layout(38) + margin
        let textSize = CGSize(width:width, height: CGFloat.greatestFiniteMagnitude)


        height += self.content!.boundingRect(with: textSize, options: [.usesLineFragmentOrigin],attributes: [NSAttributedString.Key.font:UIFont.systemFont(ofSize: WeiBoLayout.Layout(15))], context: nil).height
    

        rowHeight = height
    }
    
}

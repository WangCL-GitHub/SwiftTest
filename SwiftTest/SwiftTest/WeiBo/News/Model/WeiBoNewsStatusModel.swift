//
//  WeiBoNewsStatusModel.swift
//  SwiftTest
//
//  Created by 王成龙 on 2022/8/8.
//

import UIKit

class WeiBoNewsStatusModel: NSObject {
    // 转发数
    var reposts_count = 0
    // 评论数
    var comments_count = 0
    // 点赞数
    var attitudes_count = 0
    
    var is_attitudes = false
    
    //字符串 - “转发”
    var repostTitle: String?
    
    var commentTitle: String?
    
    var likeTitle: String?
    
    func getToolCountString(){
        repostTitle = countSting(count: self.reposts_count, defaultStr: " 转发")
        commentTitle = countSting(count: self.comments_count, defaultStr: " 评论")
        likeTitle = countSting(count: self.attitudes_count, defaultStr: " 点赞")
    }
    
    private func countSting(count:Int, defaultStr: String) -> String{
        
        if count == 0{
            return defaultStr
        }
        if count < 10000{
            return count.description
        }
        
        return String(format: "%.02f万", Double(count) / 10000)
    }
    
}

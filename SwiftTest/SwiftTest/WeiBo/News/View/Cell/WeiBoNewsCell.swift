//
//  WeiBoNewsCell.swift
//  SwiftTest
//
//  Created by 王成龙 on 2022/8/8.
//

import UIKit
import SnapKit

class WeiBoNewsCell: UITableViewCell {

    
    var viewModel:WeiBoNewsModel? {
        didSet {
            self.nameLable.text = viewModel?.name
            self.dateLabel.text = "刚刚"
            self.contentLabel.text = viewModel?.content
            
        }
    }
    
    var topLineView = UIView()
    var avatarImageView = UIImageView(image: UIImage(named: "common_icon_membership"))
    var nameLable = UILabel()
    var vipImageView = UIImageView(image: UIImage(named: "avatar_enterprise_vip"))
    var dateLabel = UILabel()
    var contentLabel = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.backgroundColor = UIColor.white
        // 异步绘制
        self.layer.drawsAsynchronously = true
        //栅格化 - 绘制之后生产独立的图像, 停止滚动可以交互
        self.layer.shouldRasterize = true
        //指定分辨率
        self.layer.rasterizationScale = UIScreen.main.scale
        
        setupSubViews()
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension WeiBoNewsCell {
    func setupSubViews() {
        
        self.topLineView.backgroundColor = UIColor.init(rgb: 0xf2f2f2)
        self.contentView.addSubview(self.topLineView)
        self.contentView.addSubview(self.avatarImageView)
        self.contentView.addSubview(self.vipImageView)
        self.nameLable.textColor =  UIColor.init(rgb: 0xfc3e00)
        self.nameLable.font = UIFont.systemFont(ofSize: WeiBoLayout.Layout(13.5))
        self.contentView.addSubview(self.nameLable)
        self.dateLabel.textColor = UIColor.init(rgb: 0xfc6c00)
        self.dateLabel.font = UIFont.systemFont(ofSize: WeiBoLayout.Layout(10))
        self.contentView.addSubview(self.dateLabel)
        self.contentLabel.numberOfLines = 0
        self.contentLabel.textAlignment = .left
        self.contentLabel.font = UIFont.systemFont(ofSize: WeiBoLayout.Layout(15))
        self.contentLabel.textColor = UIColor.darkGray
        self.contentView.addSubview(self.contentLabel)
        
    }
    
    func setupUI() {
        self.topLineView.snp.makeConstraints { make in
            make.left.top.right.equalToSuperview()
            make.height.equalTo(WeiBoLayout.Layout(StatusPictureOutterMargin))
        }
        self.avatarImageView.snp.makeConstraints { make in
            make.left.equalTo(WeiBoLayout.Layout(StatusPictureOutterMargin))
            make.top.equalTo(self.topLineView.snp_bottomMargin).offset(WeiBoLayout.Layout(StatusPictureOutterMargin))
            make.size.equalTo(WeiBoLayout.Layout(38))
        }
        self.vipImageView.snp.makeConstraints { (make) in
            make.size.equalTo(WeiBoLayout.Layout(14))
            make.centerX.equalTo(self.avatarImageView.snp.right).offset(-WeiBoLayout.Layout(4))
            make.centerY.equalTo(self.avatarImageView.snp.bottom).offset(-WeiBoLayout.Layout(4))
        }
        self.nameLable.snp.makeConstraints { (make) in
            make.top.equalTo(self.avatarImageView.snp.top).offset(WeiBoLayout.Layout(3))
            make.left.equalTo(self.avatarImageView.snp.right).offset(WeiBoLayout.Layout(StatusPictureOutterMargin))
        }
        
        self.dateLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self.nameLable)
            make.bottom.equalTo(self.avatarImageView.snp.bottom)
        }
        
        self.contentLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self.avatarImageView)
            make.top.equalTo(self.avatarImageView.snp.bottom).offset(WeiBoLayout.Layout(StatusPictureOutterMargin))
            make.right.equalToSuperview().offset(-WeiBoLayout.Layout(StatusPictureOutterMargin))
        }
        
        
    }
    
}

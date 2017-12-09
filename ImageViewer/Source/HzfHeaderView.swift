//
//  HzfHeaderView.swift
//  ImageViewer
//
//  Created by 万圣 on 2017/12/6.
//  Copyright © 2017年 MailOnline. All rights reserved.
//

import UIKit

class HzfHeaderView: UIView {

//MARK: ---- lift cycle
    static func with(_ bgColor: UIColor, _ title: String, _ img: UIImage)-> HzfHeaderView {
        let view: HzfHeaderView = HzfHeaderView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 74))
        view.backgroundColor = bgColor
        view.titleLabel.text = title
        view.backBtn.setImage(img, for: .normal)
        return view
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(titleLabel)
        addSubview(backBtn)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//MARK: ---- public Method

//MARK: ---- event response

//MARK: ---- Request

//MARK: ---- private method

//MARK: ---- getter && setter
    fileprivate lazy var titleLabel: UILabel = {
        let view: UILabel = UILabel(frame: CGRect(x: 0, y: 40, width: 74, height: 25))
        view.center.x = bounds.size.width * 0.5
        view.textColor = UIColor.white
        if #available(iOS 8.2, *){
            view.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        }else {
            view.font = UIFont.systemFont(ofSize: 18)
        }
        return view
    }()
    
    lazy var backBtn: UIButton = {
        let view: UIButton = UIButton(frame: CGRect(x: 0, y: 30, width: 44, height: 44))
        return view
    }()
}

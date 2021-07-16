//
//  RecipeTVCell.swift
//  royalsRecipe
//
//  Created by DCS on 15/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class RecipeTVCell: UITableViewCell {
    
//    private let grd:CAGradientLayer = {
//        let gd = CAGradientLayer()
//        gd.colors = [UIColor.purple.cgColor,UIColor.white.cgColor]
//        gd.startPoint = CGPoint(x: 1, y: 0.5)
//        gd.endPoint = CGPoint(x: 0, y: 0)
//        gd.shouldRasterize = true
//        return gd
//    }()
    
    
    private let myImg : UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
//        img.layer.cornerRadius = 50
        img.clipsToBounds = true
        return img
    }()
    
    private let lbl : UILabel = {
        let l = UILabel()
        l.font = UIFont.boldSystemFont(ofSize: 22)
        l.textColor = .yellow
//        l.textAlignment = .center
//        l.text = "LOGIN"
        return l
    }()
    
    private let myView:UIView = {
        let v = UIView()
        v.backgroundColor = .purple
        return v
    }()
    
    public let btn:UIButton = {
        let b = UIButton()
        b.setTitle(">", for: .normal)
        b.backgroundColor = .gray
        b.setTitleColor(.white, for: .normal)
        b.layer.cornerRadius = 20
        b.layer.borderColor = UIColor.white.cgColor
        b.layer.borderWidth = 5
       
        return b
    }()
    
    
    
    private func setupCordinates(){
        
//        myView.layer.addSublayer(grd)
        contentView.addSubview(myView)
        
        contentView.addSubview(myImg)
        contentView.addSubview(lbl)
//        contentView.addSubview(btn)
        
        myView.frame = CGRect(x: 0, y: 0, width: contentView.width, height: contentView.height)
        myImg.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
        lbl.frame = CGRect(x: myImg.right + 30, y: 40, width: frame.size.width - myImg.width, height: 40)
//        btn.frame = CGRect(x: contentView.right - 20, y: (contentView.width / 2 ) - 10, width: 10, height: 10)
    }

    func getData(title name:String, img:String,index:Int){
        lbl.text = name
        myImg.image = UIImage(named: img)
        btn.tag = index
        setupCordinates()
    }
}

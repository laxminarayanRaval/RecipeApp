//
//  ViewController.swift
//  royalsRecipe
//
//  Created by DCS on 15/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let grd:CAGradientLayer = {
        let gd = CAGradientLayer()
        gd.colors = [UIColor.purple.cgColor,UIColor.green.cgColor]
        gd.startPoint = CGPoint(x: 1, y: 0.5)
        gd.endPoint = CGPoint(x: 0, y: 0)
        gd.shouldRasterize = true
        return gd
    }()
    private let myview : UIView = {
        let v = UIView()
        v.layer.backgroundColor = UIColor(red: 0.458, green: 0.096, blue: 0.506, alpha: 0.8).cgColor
//        v.layer.opacity = 0.6
        
        v.layer.cornerRadius = 25
        v.layer.borderColor = UIColor.white.cgColor
        v.layer.borderWidth = 8
        return v
    }()
    
    private let myImg : UIImageView = {
        let img = UIImageView(image: UIImage(named: "royalrecipe"))
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 100
        img.clipsToBounds = true
        return img
    }()
    
    private let login_lbl : UILabel = {
        let l = UILabel()
        l.font = UIFont.boldSystemFont(ofSize: 36)
        l.textColor = .white
        l.textAlignment = .center
        l.text = "LOGIN"
        return l
    }()
    
    private let txtFld : UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 10
        tf.layer.borderColor = UIColor.purple.cgColor
        tf.layer.borderWidth = 2
        tf.layer.opacity = 0.7
        tf.backgroundColor = .black
        tf.textAlignment = .center
        tf.textColor = .white
//        tf.placeholder = ""
        return tf
    }()
    
    private let username_lbl : UILabel = {
        let l = UILabel()
        l.font = UIFont.boldSystemFont(ofSize: 22)
        l.textColor = .white
//        l.textAlignment = .center
        l.text = "Username or Email"
        return l
    }()
    
    private let username : UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 10
        tf.layer.borderColor = UIColor.purple.cgColor
        tf.layer.borderWidth = 2
//        tf.layer.opacity = 0.8
        tf.backgroundColor = .black
//        tf.textAlignment = .center
        tf.textColor = .white
//        tf.placeholder = "Username or Email"
        return tf
    }()
    
    private let password_lbl : UILabel = {
        let l = UILabel()
        l.font = UIFont.boldSystemFont(ofSize: 22)
        l.textColor = .white
//        l.textAlignment = .center
        l.text = "Password"
        return l
    }()
    
    private let password : UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 10
        tf.layer.borderColor = UIColor.purple.cgColor
        tf.layer.borderWidth = 2
//        tf.layer.opacity = 0.8
        tf.backgroundColor = .black
//        tf.textAlignment = .center
        tf.textColor = .white
//        tf.placeholder = "Password"
        return tf
    }()
    
    private let btn:UIButton = {
        let btn = UIButton()
        btn.setTitle("Login", for: .normal)
        btn.addTarget(self, action: #selector(nextPg), for: .touchUpInside)
        btn.backgroundColor = UIColor.purple
        btn.layer.cornerRadius = 10
        return btn
    }()
    
    @objc func nextPg(){
        let vc = HomeVC()
        print("Way to Home")
        
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "Royal Recipe"
        navigationController?.isNavigationBarHidden = true
        view.addSubview(myImg)
        
        myview.layer.addSublayer(grd)
        view.addSubview(myview)
        
        
        view.addSubview(login_lbl)
        view.addSubview(username_lbl)
        view.addSubview(password_lbl)
        view.addSubview(username)
        view.addSubview(password)
        view.addSubview(btn)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myImg.frame = CGRect(x: ( view.width - 350 ) / 2, y: 100, width: 350, height: 150)
        myview.frame = CGRect(x: 0, y: myImg.bottom + 20, width: view.width, height: view.height)
        login_lbl.frame = CGRect(x: 40, y: myview.top + 40, width: view.width - 80, height: 35)
        username_lbl.frame = CGRect(x: 40, y: login_lbl.bottom + 30, width: login_lbl.width, height: 30)
        username.frame = CGRect(x: 40, y: username_lbl.bottom + 10, width: login_lbl.width, height: 40)
        password_lbl.frame = CGRect(x: 40, y: username.bottom + 20, width: login_lbl.width, height: 30)
        password.frame = CGRect(x: 40, y: password_lbl.bottom + 10, width: login_lbl.width, height: 40)
        btn.frame = CGRect(x: 40, y: password.bottom + 20, width: login_lbl.width, height: 50)
    }


}


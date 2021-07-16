//
//  CellDetailVC.swift
//  royalsRecipe
//
//  Created by DCS on 16/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class CellDetailVC: UIViewController {
    
    var recipeName:String? = nil
    
    private let myImg : UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 20
        img.clipsToBounds = true
        return img
    }()
    
    private let lbl : UILabel = {
        let l = UILabel()
        l.font = UIFont.boldSystemFont(ofSize: 46)
        l.textColor = .yellow
        l.textAlignment = .center
//        l.text = recipeName
        return l
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = recipeName
        view.backgroundColor = .black
        myImg.image = UIImage(named: recipeName!)
        lbl.text = recipeName
        
        view.addSubview(myImg)
        view.addSubview(lbl)
        
        navigationController?.isNavigationBarHidden = false
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myImg.frame = CGRect(x: 20, y: 100, width: view.width - 40, height: view.height / 2 - 20)
        lbl.frame = CGRect(x: 40, y: myImg.bottom + 40, width: view.width - 80, height: 50)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

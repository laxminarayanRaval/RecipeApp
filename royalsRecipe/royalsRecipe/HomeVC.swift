//
//  HomeVC.swift
//  royalsRecipe
//
//  Created by DCS on 15/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    private let tbl = UITableView()
    
    public var RecipeNames = ["Malai Ghevar","Kesar Jalebi","Raj Bhog","Rosogulla","Rasmalai","Gulab Jamun","Kesar-Pista Kheer","Kesar-Pista Kulfi"]
    private var RecipeImg = ["royalrecipe","royalrecipe","royalrecipe"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tbl.backgroundColor = .red
        tbl.tintColor = .red
        view.addSubview(tbl)
        setupTbl()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tbl.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.width, height: view.height - view.safeAreaInsets.top - view.safeAreaInsets.bottom)
    }


}
extension HomeVC : UITableViewDelegate,UITableViewDataSource{
    private func setupTbl(){
        tbl.delegate = self
        tbl.dataSource = self
        tbl.register(RecipeTVCell.self, forCellReuseIdentifier: "RecipeNames")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RecipeNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeNames", for: indexPath) as! RecipeTVCell
//        cell.textLabel?.text = RecipeNames[indexPath.row]
        cell.getData(title: RecipeNames[indexPath.row], img: RecipeNames[indexPath.row], index: indexPath.row )
        cell.btn.addTarget(self, action: #selector(showDetails), for: .touchUpInside)
        return cell
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("show Detaiil0",indexPath.row)
        var vc = CellDetailVC()
        vc.recipeName = RecipeNames[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func showDetails(_ sender :UIButton){
        print("Details",sender.tag)
    }
    
}

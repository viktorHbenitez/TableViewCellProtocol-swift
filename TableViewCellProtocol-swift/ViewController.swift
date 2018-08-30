//
//  ViewController.swift
//  TableViewCellProtocol-swift
//
//  Created by Victor Hugo Benitez Bosques on 29/08/18.
//  Copyright © 2018 Victor Hugo Benitez Bosques. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    fileprivate let cellId = "IdCell"
    
    var arrContainer : [String] = ["Viktor", "Hugo", "Rodolfo", "Nana", "Miriam"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupTableView()
    }
    
    
    
    
}

// MARK - TableViewDelegate
extension ViewController : UITableViewDelegate,UITableViewDataSource{
    
    
    fileprivate func setupTableView(){
        
        tableView.tableFooterView = UIView()
        
        // 1. Register a cell for our tableView
        let nibName = UINib(nibName: "CustomCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: cellId)
        
    }
    
    // Number of section in table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Number of row in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrContainer.count > 0 ? arrContainer.count : 0
    }
    
    
    // Create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CustomCell
        cell.delegate = self
        cell.iNumberIndex = indexPath.row
        let name : String = arrContainer[indexPath.row]
        cell.strName = name
        
        return cell
        
    }
    
}

extension ViewController : CustomCellDelegate{
    
    func OnClickBtn(iNumber: Int) {
        // seleccionamos el nombre por el indice pasado
        print("you selected \(arrContainer[iNumber])")
    }
    
    
}







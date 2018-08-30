//
//  CustomCell.swift
//  TableViewCellProtocol-swift
//
//  Created by Victor Hugo Benitez Bosques on 29/08/18.
//  Copyright © 2018 Victor Hugo Benitez Bosques. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {
    
  
    
    @IBOutlet weak var lblName: UILabel!
    

    var strName : String?{
        didSet{
            lblName.text = strName
        }

    }
    
    @IBAction func OnClick(_ sender: Any) {
        
        
    }
}

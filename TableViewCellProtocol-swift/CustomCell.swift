//
//  CustomCell.swift
//  TableViewCellProtocol-swift
//
//  Created by Victor Hugo Benitez Bosques on 29/08/18.
//  Copyright © 2018 Victor Hugo Benitez Bosques. All rights reserved.
//

import Foundation
import UIKit
protocol CustomCellDelegate {
    func OnClickBtn(iNumber : Int)
}

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var lblName: UILabel!
    

    var delegate : CustomCellDelegate?
    var iNumberIndex : Int?
    
    var strName : String?{
        didSet{
            lblName.text = strName
        }

    }
    
    @IBAction func OnClick(_ sender: Any) {
        if let index = iNumberIndex{
            delegate?.OnClickBtn(iNumber: index)
        }
        
    }
}

//
//  TargetTableViewCell.swift
//  target marker
//
//  Created by Yuji Ishikawa on 2018/10/08.
//  Copyright © 2018年 Yuji Ishikawa. All rights reserved.
//

import UIKit

class TargetTableViewCell: UITableViewCell {
    
    @IBOutlet var servicelabel: UILabel!
    @IBOutlet var genderlabel: UILabel!
    @IBOutlet var agelabel: UILabel!
    @IBOutlet var sonotalabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

//
//  TableViewCell.swift
//  cellToCell
//
//  Created by nguyễn hữu đạt on 5/26/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit
protocol detaiviewcontroller : class {
    func passdata(data: String)
}
class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameTex: UITextField!
    
    @IBAction func text(_ sender: UITextField) {
        delegate?.passdata(data: nameTex.text!)
    }
    var delegate : detaiviewcontroller?
        
    var data : String?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

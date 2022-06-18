//
//  TableViewCell.swift
//  TableViewCellVisualApp
//
//  Created by Kire  on 6/17/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var mainText: UILabel!
    @IBOutlet weak var detailedText: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}

//
//  MobileCell.swift
//  InnovalabsTask
//
//  Created by Kshitija Palande on 01/12/22.
//

import UIKit
import Foundation

class MobileCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   
    
    func setPhotoCellWith(mobile: MobileData) {
        
        DispatchQueue.main.async {
            self.titleLabel.text = "Title: " + mobile.title!
            if let url = mobile.thumbnail {
                self.photoImageView.loadImageUsingCacheWithURLString(url, placeHolder: UIImage(named: "placeholder"))
            }
        }
    }

}

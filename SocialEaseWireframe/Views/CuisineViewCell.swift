//
//  CuisineViewCell.swift
//  SocialEaseWireframe
//
//  Created by Amay Singhal on 10/16/15.
//  Copyright © 2015 ple. All rights reserved.
//

import UIKit

class CuisineViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cusineImage: UIImageView!
    @IBOutlet weak var cusineNameLabel: UILabel!
    @IBOutlet weak var quisineSelectedLabel: UILabel!

    var cellState = false

    var cuisine: String! {
        didSet {
            cusineImage.image = UIImage(named: cuisine)
            cusineNameLabel.text = cuisine
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        let gesture = UITapGestureRecognizer(target: self, action: "cellTapped:")
        self.addGestureRecognizer(gesture)

    }

    func cellTapped(sender: UITapGestureRecognizer) {
        cellState = !cellState
        quisineSelectedLabel.text = cellState ? "b" : "c"
    }
    
}

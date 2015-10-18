//
//  PreferenceViewCell.swift
//  SocialEaseWireframe
//
//  Created by Amay Singhal on 10/16/15.
//  Copyright © 2015 ple. All rights reserved.
//

import UIKit

class PreferenceViewCell: UITableViewCell {

    @IBOutlet weak var preferenceNameLabel: UILabel!
    @IBOutlet weak var selectedStateLabel: UILabel!

    
    var preference: PreferenceObject! {
        didSet {
            preferenceNameLabel.text = preference.name
            preferenceNameLabel.textColor = UIColor.darkGrayColor()
            selectedStateLabel.text = preference.isSelected ? "d" : "e"
            // 255, 171, 64
            selectedStateLabel.textColor = preference.isSelected ? UIColor(red: 255/255, green: 171/255, blue: 74/255, alpha: 1) : UIColor.lightGrayColor()
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

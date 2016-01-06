//
//  LessonTableViewCell.swift
//  TableCellAnimation
//
//  Created by Игорь on 25.12.15.
//  Copyright © 2015 Ihor Malovanyi. All rights reserved.
//

import UIKit

class LessonTableViewCell: UITableViewCell {

    @IBOutlet weak var lessonImageView: UIImageView!
    @IBOutlet weak var lessonTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

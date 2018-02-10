//
//  BusinessCell.swift
//  Yelp
//
//  Created by Samuel on 2/9/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var reviewStarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var reviewCountLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    
    var business: Business!{
        didSet{
            nameLabel.text = business.name
            addressLabel.text = business.address
            categoryLabel.text = business.categories
            reviewCountLabel.text = "\(business.reviewCount ?? 0)  Reviews"
            distanceLabel.text = business.distance
            categoryLabel.text = business.categories
            thumbnailImageView.setImageWith(business.imageURL!)
            reviewStarImageView.setImageWith(business.ratingImageURL!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnailImageView.layer.cornerRadius = 3
        thumbnailImageView.clipsToBounds = true
        
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.selectionStyle = .none
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

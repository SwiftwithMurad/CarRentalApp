//
//  HeaderCell.swift
//  CarRentalApp
//
//  Created by Mac on 24.12.24.
//

import UIKit

class HeaderCell: UICollectionViewCell {

    @IBOutlet private weak var categorySize: UILabel!
    @IBOutlet private weak var categoryName: UILabel!
    @IBOutlet private weak var carImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    func configCell(category: CarCategory) {
        categoryName.text = category.name
        categorySize.text = category.size
        carImage.image = UIImage(named: category.image ?? "")
    }
}

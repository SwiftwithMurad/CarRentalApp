//
//  HeaderCollectionReusableView.swift
//  CarRentalApp
//
//  Created by Mac on 24.12.24.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {

    @IBOutlet private weak var headerCollection: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configUI()
    }
    
    func configUI() {
        headerCollection.backgroundColor = .systemGray5
        headerCollection.delegate = self
        headerCollection.dataSource = self
        headerCollection.register(UINib(nibName: "\(HeaderCell.self)", bundle: nil), forCellWithReuseIdentifier: "\(HeaderCell.self)")
    }
}

extension HeaderCollectionReusableView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(HeaderCell.self)", for: indexPath) as! HeaderCell
        if let category = cars[indexPath.row].category {
            cell.configCell(category: category)
        }
        cell.layer.cornerRadius = 30
        cell.backgroundColor = .white
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        .init(width: headerCollection.frame.size.width / 3 , height: 150)
    }
}



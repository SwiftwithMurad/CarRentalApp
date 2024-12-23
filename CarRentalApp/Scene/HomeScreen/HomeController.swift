//
//  HomeController.swift
//  CarRentalApp
//
//  Created by Mac on 22.12.24.
//

import UIKit

class HomeController: UIViewController {
    let homeViewModel = HomeViewModel()
    
    
    @IBOutlet weak var categoryListCollection: UICollectionView!
    @IBOutlet weak var searchTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configUI()
    }
    
    func configUI() {
        title = "Car Rental"
        searchTextField.layer.borderWidth = 1
        searchTextField.layer.borderColor = UIColor.gray.cgColor
        searchTextField.layer.masksToBounds = true
        searchTextField.layer.cornerRadius = 30
        searchTextField.borderStyle = .roundedRect
        categoryListCollection.register(UINib(nibName: "CategoryListCell", bundle: nil), forCellWithReuseIdentifier: "CategoryListCell")
    }
    
}


extension HomeController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryListCell", for: indexPath) as! CategoryListCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        .init(width: 100, height: 100)
    }
}

//
//  SearchViewController.swift
//  ShoppingList
//
//  Created by 나리강 on 2022/08/24.
//

import UIKit

class SearchViewController: BaseViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        ImageDummy.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCollectionViewCell", for: indexPath) as! SearchCollectionViewCell
        
        cell.layer.borderWidth = selectIndexPath == indexPath ? 4 : 0
        cell.layer.borderColor = UIColor.systemGray4.cgColor
        cell.setImage(data: ImageDummy.data[indexPath.item].url)
        
        return cell
        
    }
    
    var selectIndexPath : IndexPath?
    let mainView = SearchView()
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
        
        
    }
    
    override func loadView() {
        self.view = mainView
    }

    override func configure() {
        mainView.collectionview.delegate = self
        mainView.collectionview.dataSource = self
        mainView.collectionview.register(SearchCollectionViewCell.self, forCellWithReuseIdentifier: "SearchCollectionViewCell")
        
        
    }
    
    
    
    
}


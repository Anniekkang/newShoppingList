//
//  SearchCollectionViewCell.swift
//  ShoppingList
//
//  Created by 나리강 on 2022/08/25.
//

import UIKit
import SnapKit
import Kingfisher

class SearchCollectionViewCell: BaseCollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
        constraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let searchImageView : UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleToFill
        view.clipsToBounds = true
        view.backgroundColor = .clear
        return view
    }()
    
    override func configure() {
        self.addSubview(searchImageView)
    }
    
    override func constraints(){
        searchImageView.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
    }
    
    func setImage(data: String) {
        let url = URL(string: data)
        searchImageView.kf.setImage(with: url)
    }
    
}

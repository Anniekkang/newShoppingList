//
//  BaseView.swift
//  ShoppingList
//
//  Created by 나리강 on 2022/08/24.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        configure()
        constraints()
        
    
        backgroundColor = .systemGray5
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure(){}
    func constraints(){}
    
}

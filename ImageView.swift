//
//  ImageView.swift
//  ShoppingList
//
//  Created by 나리강 on 2022/08/24.
//

import UIKit
import SnapKit

class ImageView: BaseView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    let searchTextField : UITextField = {
        let view = UITextField()
        view.backgroundColor = .systemGray4
        view.layer.cornerRadius = 5
        view.placeholder =  "사고싶은 상품을 입력하시오"
        view.textColor = .black
        return view
        
    }()
    
    let searchImageView : UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .systemGray4
        view.layer.cornerRadius = 5
        return view
        
    }()
    
    let searchButton : UIButton = {
        let view = UIButton()
        view.layer.cornerRadius = 5
        view.backgroundColor = .systemGray4
        view.setTitle("검색", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        return view
    }()
 
    override func configure() {
        [searchImageView,searchButton,searchTextField].forEach {
            self.addSubview($0)
        }
    }
    
    override func constraints(){
        searchImageView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).offset(50)
            make.leading.equalTo(safeAreaLayoutGuide).offset(30)
            make.trailing.equalTo(safeAreaLayoutGuide).offset(-30)
            make.height.equalTo(200)
        }
        
        searchTextField.snp.makeConstraints { make in
            make.top.equalTo(searchImageView.snp.bottomMargin).offset(30)
            make.leading.equalTo(safeAreaLayoutGuide).offset(30)
            make.trailing.equalTo(safeAreaLayoutGuide).offset(-100)
            make.height.equalTo(50)
        }
        searchButton.snp.makeConstraints { make in
            make.top.equalTo(searchImageView.snp.bottomMargin).offset(30)
            
            make.trailing.equalTo(safeAreaLayoutGuide).offset(-30)
            make.height.equalTo(50)
            make.width.equalTo(50)
        }
        
        
    }
}

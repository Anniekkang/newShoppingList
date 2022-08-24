//
//  ImageViewController.swift
//  ShoppingList
//
//  Created by 나리강 on 2022/08/24.
//

import UIKit

class ImageViewController: BaseViewController {

    
    
    let mainView = ImageView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        action()
       
    }

   
    func action(){
    mainView.searchButton.addTarget(self, action: #selector(searchButtonTapped), for: .touchUpInside)
    
    
    }
    
    @objc func searchButtonTapped(){
        let vc = SearchViewController()
        present(vc, animated: true)
        
        }
       
        
}





//
//  ViewController.swift
//  CleanSample
//
//  Created by Enrique Bonilla on 17/02/21.
//

import UIKit

protocol HomeView: class {
    func updateTitle(title: String) -> Void
}

class HomeViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    
    var presenter: HomePresenter!

    override func viewDidLoad() {
        super.viewDidLoad()
//        helloLabel.text = "Hello Viper"
        self.presenter.updateTitlePresenter()
    }


}

extension HomeViewController: HomeView {

    func updateTitle(title: String) {
        helloLabel.text = title
    }
    
    
}

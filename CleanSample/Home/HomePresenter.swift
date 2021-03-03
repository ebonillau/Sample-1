//
//  HomePresenter.swift
//  CleanSample
//
//  Created by Enrique Bonilla on 17/02/21.
//

import Foundation

protocol HomePresentation {
    func updateTitlePresenter() -> Void
}

class HomePresenter {
    
    weak var view: HomeView?
    var interactor: HomeUseCase
    var router: HomeRouting
    
    init(view: HomeView, interactor: HomeUseCase, router: HomeRouting) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension HomePresenter: HomePresentation {
    
    func updateTitlePresenter() {
        let homeModel = self.interactor.getTitle()
        print("homeModel title is: \(homeModel.title)")
        DispatchQueue.main.async { [weak self] in
            self?.view?.updateTitle(title: homeModel.title)
        }
        
    }
    
}

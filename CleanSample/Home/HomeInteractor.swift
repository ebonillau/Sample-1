//
//  Interactor.swift
//  CleanSample
//
//  Created by Enrique Bonilla on 17/02/21.
//

import Foundation

protocol HomeUseCase {
    func getTitle() -> HomeModel
}

class HomeInteractor {
    
}

extension HomeInteractor: HomeUseCase {
    
    func getTitle() -> HomeModel {
        return HomeModel(title: "Home VIPER")
    }
    
    
}

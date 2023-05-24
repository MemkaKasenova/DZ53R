//
//  MainViewModel.swift
//  DZ53R
//
//  Created by merim kasenova on 24/5/23.
//

import Foundation

class MainViewModel {
    var networkLayer = NetworkManager.shared
    weak var viewController: ViewController?
    
    var products: [Product] = []
    
    func sendData() async {
        do {
            self.products = try await
            networkLayer.fetchProducts().products
        } catch {
            print(error.localizedDescription)
        }
    }
}

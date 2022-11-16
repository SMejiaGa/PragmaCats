//
//  BlocCat:ViewModelCat.swift
//  Pragma
//
//  Created by Sebastian Mejia on 16/11/22.
//

import Foundation

class BlocCat: CatsService {
    func getDataCats(data: [Cat]) {
        catList = data
    }
    
    var catList: [Cat] = []
    
    
    func getCats() -> Int {
        return catList.count
    }
    
    func requestCatData() {
        let service = ApiCats()
        
        service.getCatsFromService()
    }
    
    
    
}

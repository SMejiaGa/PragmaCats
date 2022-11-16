//
//  ApiCats.swift
//  Pragma
//
//  Created by Sebastian Mejia on 16/11/22.
//

import Foundation
import UIKit

protocol CatsService {
    func getDataCats(data: [Cat])
}

class ApiCats {
    let decoder = JSONDecoder()
    
    func getCatsFromService()  {
        let catsUrl = URL(string: Constants.apiURL)
        let task = URLSession.shared.dataTask(with: catsUrl!) { data, response, error in
            
            do {
                let catsData = try decoder.decode([Cat].self, from: data)
                CatsService.getDataCats(data: catsData)
            }
        }
        task.resume()
        
    }
}

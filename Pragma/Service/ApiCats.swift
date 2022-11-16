//
//  ApiCats.swift
//  Pragma
//
//  Created by Sebastian Mejia on 16/11/22.
//

import Foundation
import UIKit

class Service {
    

    func getCatsFromService()  {
        let catsUrl = URL(string: Constants.apiURL)
        let task = URLSession.shared.dataTask(with: catsUrl!) { data, response, error in
            if let data = data {
                let catImage = UIImage(data: data)
            } else if let error = error {
                let catImage = UIImage()
            }
        }
        task.resume()
        
    }
}

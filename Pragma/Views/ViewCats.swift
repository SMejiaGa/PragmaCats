//
//  ViewController.swift
//  Pragma
//
//  Created by Sebastian Mejia on 16/11/22.
//

import UIKit

class ViewCats: UIViewController, UITableViewDelegate {
    
    
    @IBOutlet weak var CatTableView: UITableView!
    
    private let catViewModel = BlocCat()
    private let catData: [Cat] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.CatTableView.delegate = self
        self.CatTableView.dataSource = self
        
    }
    
    func getImageData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    func downloadImage(from url: URL) -> UIImage{
        getImageData(from: url) { data, response, error in
            guard let data = data, error == nil else { return UIImage()}
            print(response?.suggestedFilename ?? url.lastPathComponent)
            DispatchQueue.main.async() { [weak self] in
                return UIImage(data: data)
            }
        }
    }


}

extension ViewCats: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catViewModel.getCats()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell() as! CatlTableViewCell
        
        cell.breedNameLabel.text = catViewModel.catList[indexPath.row].breedName
        cell.catCountryLabel.text = catViewModel.catList[indexPath.row].origin
        cell.catInteligenceLabel.text = "\(catViewModel.catList[indexPath.row].intelligence)"
        cell.catImage.image = downloadImage(from: (URL(string: catViewModel.catList[indexPath.row].imageUrl) ?? URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Cat_November_2010-1a.jpg/1200px-Cat_November_2010-1a.jpg"))!)
        
        
        
        return UITableViewCell()
    }
    
    
}

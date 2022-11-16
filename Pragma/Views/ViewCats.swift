//
//  ViewController.swift
//  Pragma
//
//  Created by Sebastian Mejia on 16/11/22.
//

import UIKit

class ViewCats: UIViewController, UITableViewDelegate {
    
    
    @IBOutlet weak var CatTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.CatTableView.delegate = self
        self.CatTableView.dataSource = self

    }


}

extension ViewCats: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }
    
    
}

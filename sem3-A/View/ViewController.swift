//
//  ViewController.swift
//  sem3-A
//
//  Created by Alumno on 14/04/23.
//

import UIKit

class ViewController: UIViewController {
   
    

    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        CarViewModel.storeCar(
            car:Auto(brand:"Audi",model: "RS8" , price : 8000.92)
        )
        TableView.delegate = self
        TableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        TableView.reloadData()
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CarViewModel.cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let car = CarViewModel.cars[indexPath.row]
        
        var configurationCell = UIListContentConfiguration.cell()
        configurationCell.text = "\(car.brand)"
        configurationCell.secondaryText = "\(car.model) - \(car.price)"
        configurationCell.image = UIImage(systemName:"bolt.car")
        cell.contentConfiguration=configurationCell
        
        
        return cell
    }
        
}


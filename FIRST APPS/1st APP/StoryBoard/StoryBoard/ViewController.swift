//
//  ViewController.swift
//  StoryBoard
//
//  Created by Carlton Sempala on 05/02/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    
    // Array of local car brands
    let carBrands = ["Volkswagen", "BMW", "Mercedes-Benz", "Audi", "Porsche", "Volvo", "Fiat", "Alfa Romeo", "Peugeot", "Renault", "Citroën", "Rolls-Royce", "Bentley", "Jaguar", "Land Rover"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the delegate and data source for the table view
        tableView.dataSource = self
        tableView.delegate = self
    }
    
  //DataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carBrands.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarBrandCell", for: indexPath)
        cell.textLabel?.text = carBrands[indexPath.row]
        return cell
    }
    
    //Delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Print the selected car brand
        print("Selected car brand: \(carBrands[indexPath.row])")
    }
}



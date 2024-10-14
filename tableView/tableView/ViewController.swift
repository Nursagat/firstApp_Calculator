//
//  ViewController.swift
//  tableView
//
//  Created by Nursa Kusain on 08.10.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var surnameLabel: UILabel!
    
    @IBOutlet weak var personinfoLabel: UILabel!
    
    var person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        personinfoLabel.text = person.personinfo 
        imageView.image = UIImage(named: person.imagename)
    }


}


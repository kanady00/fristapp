//
//  ViewController.swift
//  tableViewHomework
//
//  Created by Kanat Khairushin on 14.11.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var exersicenamelabel: UILabel!
    
    @IBOutlet weak var informationEx: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var exersices = Exersices()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        exersicenamelabel.text = exersices.name
        informationEx.text = exersices.infoAboutEx
        imageView.image = UIImage(named: exersices.imagename)
    }


}


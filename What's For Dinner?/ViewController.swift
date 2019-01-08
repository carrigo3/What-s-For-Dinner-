//
//  ViewController.swift
//  What's For Dinner?
//
//  Created by Cameron Arrigo on 1/8/19.
//  Copyright © 2019 Cameron Arrigo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foodPic: UIImageView!
    @IBOutlet weak var foodLabel: UILabel!
    var index = -1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func whatsForDinner(_ sender: UIButton) {
        var options = ["Cheese Pizza", "Burrito", "Chicken Nuggets", "Soup", "Salad", "Chicken Parmesan"]
        var newIndex: Int
        repeat{
            newIndex = Int.random(in: 0..<options.count)
        } while index == newIndex
            index = newIndex
            foodLabel.text = options[index]
            foodPic.image = UIImage(named:"image\(index)")
        
    }
    
    

}


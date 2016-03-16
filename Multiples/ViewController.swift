//
//  ViewController.swift
//  Multiples
//
//  Created by Sakshyam Dahal on 3/16/16.
//  Copyright © 2016 Sakshyam Dahal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var multipleOf: UITextField!
    @IBOutlet weak var multipleLogo: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    var howManyMultiples = 10
    var addThisNumber = 0
    var totalTillNow = 0 {
        willSet {
            resultLabel.text = "\(totalTillNow) + \(addThisNumber) = \(totalTillNow + addThisNumber)"
        }
    }
    
    
    
    @IBAction func playMultiple(sender: UIButton) {
        if let multipleValue = multipleOf.text {
            if let digitalValue = Int(multipleValue) {
                toggleViews()
                addThisNumber = digitalValue
            }
        }
    }
    
    func toggleViews() {
        multipleOf.hidden = !multipleOf.hidden
        playButton.hidden = !playButton.hidden
        multipleLogo.hidden = !multipleLogo.hidden
        addButton.hidden = !addButton.hidden
        resultLabel.hidden = !resultLabel.hidden
    }
    
    @IBAction func addMultiple(sender: UIButton) {
        if totalTillNow >= addThisNumber * howManyMultiples {
            addThisNumber = 0
            totalTillNow = 0
            toggleViews()
            resultLabel.text = "Press Add to add!"
            multipleOf.text = ""
        } else {
            totalTillNow += addThisNumber
        }
    }
}


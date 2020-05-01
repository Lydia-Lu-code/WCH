//
//  ViewController.swift
//  WCH
//
//  Created by 維衣 on 2020/4/26.
//  Copyright © 2020 Lydia-L. All rights reserved.
//

import UIKit

let renderImage = ["batman","spiderman","superman","thor"]

class ViewController: UIViewController {
    var number = 0

    @IBOutlet weak var changeImage: UIImageView!
    @IBOutlet weak var helpSegment: UISegmentedControl!
    @IBOutlet weak var allButton: UIButton!
    @IBOutlet weak var anyButton: UIButton!
    
    @IBOutlet weak var gnomeButton: UIButton!
    @IBOutlet weak var indexImageView: UIImageView!
    @IBOutlet weak var blackImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeImage.image = UIImage(named: renderImage[number])
        helpSegment.selectedSegmentIndex = number
        
    }
    
    @IBAction func segmentChange(_ sender: UISegmentedControl) {
        number = Int(sender.selectedSegmentIndex)
        changeImage.image = UIImage(named: renderImage[number])
    }
    
    @IBAction func renButton(_ sender: UIButton) {
        number = Int.random(in: 0...renderImage.count-1)
        helpSegment.selectedSegmentIndex = number
        changeImage.image = UIImage(named: renderImage[number])
    }
    
    @IBAction func allButton(_ sender: UIButton) {
        changeImage.image = UIImage(named: "all.png")
    }
    
    @IBAction func gnomeButton(_ sender: UIButton) {
        indexImageView.addSubview(blackImageView)
    }
}
    

    
    
    
    






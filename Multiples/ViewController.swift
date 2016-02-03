//
//  ViewController.swift
//  Multiples
//
//  Created by Darko Spasovski on 1/30/16.
//  Copyright © 2016 Developesss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentMultiple: Int = 0
    var previousMultiple: Int = 0
    var counter = 0
    
    
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var WhatMultipleToAddByTxt: UITextField!
    @IBOutlet weak var multipleImg: UIImageView!
    @IBOutlet weak var appleImg: UIImageView!
    
    
    @IBOutlet weak var pressADDtoAddLbl: UILabel!
    
    @IBOutlet weak var addBtn: UIButton!
    
    
    @IBAction func whenBtnPlaue(sender: AnyObject) {
      if WhatMultipleToAddByTxt.text != nil && WhatMultipleToAddByTxt.text != "" {
        multipleImg.hidden = true
        playBtn.hidden = true
        appleImg.hidden = true
        WhatMultipleToAddByTxt.hidden = true
        
        addBtn.hidden = false
        pressADDtoAddLbl.hidden = false
        
        currentMultiple = Int(WhatMultipleToAddByTxt.text!)!
        }
        
    }
    
    
    @IBAction func whenBtnAddPlay(sender: AnyObject) {
        var result = currentMultiple + previousMultiple
        pressADDtoAddLbl.text = "\(previousMultiple) + \(currentMultiple) = \(result)"
        previousMultiple = result
        counter++
        if counter >= 6 {
            restart()
        }
        
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
    }
    
    func restart() {
        counter = 0
        multipleImg.hidden = false
        playBtn.hidden = false
        appleImg.hidden = false
        WhatMultipleToAddByTxt.hidden = false
        
        addBtn.hidden = true
        pressADDtoAddLbl.hidden = true
        
        WhatMultipleToAddByTxt.text = ""
        currentMultiple = 0
        previousMultiple = 0
        pressADDtoAddLbl.text = "Press ADD"

        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


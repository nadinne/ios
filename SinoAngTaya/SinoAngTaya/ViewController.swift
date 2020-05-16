//
//  ViewController.swift
//  SinoAngTaya
//
//  Created by Mikaela Nadinne Silapan on 5/15/20.
//  Copyright © 2020 Mikaela Nadinne Silapan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfParticipantNames: UITextField!
    @IBOutlet weak var tfTaskDescription: UITextField!
    @IBOutlet weak var lblRandomResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private func validate() -> Bool {
        return (tfParticipantNames.text?.count != nil) && (tfTaskDescription.text?.count != nil)
    }
    
    @IBAction func randomize(_ sender: Any) {
        if (validate()) {
            let names: Array<Substring> = tfParticipantNames.text!.split(separator: ",")
            lblRandomResult.text = "Si " + names[randomNumber(limit: names.count)] + " ang " + tfTaskDescription.text!
        }
    }
    
    func randomNumber(limit: Int) -> Int {
        return Int(arc4random_uniform(UInt32(limit)))
    }
    
}


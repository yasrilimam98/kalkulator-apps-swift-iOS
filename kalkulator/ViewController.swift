//
//  ViewController.swift
//  kalkulator
//
//  Created by Devfx on 21/07/20.
//  Copyright © 2020 Devfx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heigth: UITextField!
    @IBOutlet weak var widht: UITextField!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonresult(_ sender: UIButton) {
        if let h = Double(heigth.text ?? "0"), let w = Double(widht.text ?? "0"){
            result.text = String(h * w)
        }else{
            result.text = "Hasil Tidak Valid"
        }
    }
    
    @IBAction func resetView(_ sender: UIButton) {
        result.text = ""
        heigth.text = ""
        widht.text = ""
    }
}


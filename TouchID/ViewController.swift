//
//  ViewController.swift
//  TouchID
//
//  Created by Mobil Trakya on 3/4/18.
//  Copyright © 2018 Trakya University. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    @IBOutlet weak var durum: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchIdLogin(_ sender: Any) {
        let context:LAContext = LAContext()
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics , error: nil){
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Lütfen touch id okutunuz", reply: { (basarili, error) in
                if basarili
                {
                    self.durum.text="Login Başarılı"
                }
                else
                {
                     self.durum.text="Login Başarısız"
                }
                
        }
            )
        }
    }
}



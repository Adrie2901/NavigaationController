//
//  SecondViewController.swift
//  Practice
//
//  Created by Adriana Ruiz on 12/10/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    var stringRecived: String = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second"
        print(stringRecived)

            
    }
    
    @IBAction func pushButtonPressed(_ sender: Any) {
        let fourthStoryboard = UIStoryboard(name: "FourthStoryboard", bundle: .main)
     if  let fourthViewController = fourthStoryboard.instantiateViewController(withIdentifier: "FourthVC") as? FourthViewController {
         self.navigationController?.pushViewController(fourthViewController, animated: true)
        }
    }
    
    
    @IBAction func modalButtonPressed(_ sender: Any) {
        let firstStoryboard = UIStoryboard(name: "FirstStoryboard", bundle: .main)
     if  let firstViewController = firstStoryboard.instantiateViewController(withIdentifier: "FirstVC") as? FirstViewController {
         self.present(firstViewController, animated: true)
        }
    
    }

}

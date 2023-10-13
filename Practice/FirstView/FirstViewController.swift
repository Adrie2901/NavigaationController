//
//  FirstViewController.swift
//  Practice
//
//  Created by Adriana Ruiz on 12/10/23.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "First"
        
        let Ari = Person(name: "Ari")
        Ari.adress = "CDMX"
        print(Ari.adress)

    }
    
    @IBAction func modalButtonPressed(_ sender: Any) {
        let secondStoryBoard = UIStoryboard(name: "SecondStoryboard", bundle: .main)
        if let secondViewController = secondStoryBoard.instantiateViewController(withIdentifier: "SecondVC") as? SecondViewController {
            secondViewController.stringRecived = "String desde 1stVC"
            let navigationController = UINavigationController(rootViewController: secondViewController)
            navigationController.modalPresentationStyle = .fullScreen
            self.present(navigationController, animated: true)
        }
    }
    
    @IBAction func pushButtonPressed(_ sender: Any) {
        let thirdStoryBoard = UIStoryboard(name: "ThirdStoryboard", bundle: .main)
        if let thirdViewController = thirdStoryBoard.instantiateViewController(withIdentifier: "ThirdVC") as? ThirdViewController {
            thirdViewController.intRecived = 333
        self.navigationController?.pushViewController(thirdViewController, animated: true)
        }
    }
    
}

class Person {
    let name: String
    var adress: String = ""
    
    init(name: String){
        self.name = name
    }
}

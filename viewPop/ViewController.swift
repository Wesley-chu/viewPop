//
//  ViewController.swift
//  viewPop
//
//  Created by 朱偉綸 on 2021/9/2.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button(_ sender: UIButton) {
        
//        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true, completion: nil)
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            if let vc = segue.destination as? ViewController2 {
                vc.modalPresentationStyle = .fullScreen
            }
        }
    }

}


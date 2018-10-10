//
//  LoginViewController.swift
//  Series
//
//  Created by DAVID ANGULO CORCUERA on 3/10/18.
//  Copyright © 2018 DAVID ANGULO CORCUERA. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var textField_user: UITextField!
    @IBOutlet weak var textField_password: UITextField!
    @IBOutlet weak var btn_login: UIButton!
    let my_user = "david"
    let my_password = "12345"
    let alert = UIAlertController(title: "Alert", message: "hi", preferredStyle: UIAlertControllerStyle.alert)
    
    override func viewDidLoad() {
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        super.viewDidLoad()
        btn_login.layer.cornerRadius = 10
        btn_login.layer.borderColor = UIColor.white.cgColor
        btn_login.layer.borderWidth = 2.0
        
        // Do any additional setup after loading the view.
    }
    @IBAction func login(){
        if (textField_user.text == my_user && textField_password.text == my_password){
            showSeriesVC()
           
        }
        
    }
    private func showSeriesVC(){
        let seriesVC  = SeriesViewController()
        let navigationController = UINavigationController(rootViewController: seriesVC)
        navigationController.modalTransitionStyle = .flipHorizontal
        present(navigationController,animated: true,completion: nil)
    }
   
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

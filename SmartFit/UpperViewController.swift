//
//  UpperViewController.swift
//  SmartFit
//
//  Created by Gerard Recinto on 4/24/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class UpperViewController: UIViewController {
  @IBOutlet weak var absSwitch: UISwitch!
 
  @IBOutlet weak var armsSwitch: UISwitch!
  @IBOutlet weak var backSwitch: UISwitch!
  @IBOutlet weak var shoulderSwitch: UISwitch!
  @IBOutlet weak var chestSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  @IBAction func onSubmitButton(_ sender: Any) {
    performSegue(withIdentifier: "upperSubmitSegue", sender: nil)

  }
  /*@IBAction func onSubmitButton(_ sender: Any) {
    /*
    let storyboard = UIStoryboard(name: "Main", bundle: nil)

    let myVC = storyboard.instantiateViewController(withIdentifier: "UpperBodySubmitViewController") as! UpperBodySubmitViewController
    
    if (absSwitch.isOn == false){
      myVC.abLabel.isHidden = true;
      myVC.abTextField.isHidden = true;
    }
    if (armsSwitch.isOn == false){
      myVC.bicepLabel.isHidden = true;
      myVC.bicepTextField.isHidden = true;
    }
    if (backSwitch.isOn == false){

      myVC.rowLabel.isHidden = true;
      myVC.rowTextField.isHidden = true;
    }
    if (shoulderSwitch.isOn == false){
      myVC.ohpLabel.isHidden = true;
      myVC.ohpTextField.isHidden = true;
    }
    */
    //navigationController?.pushViewController(myVC, animated: true)
    performSegue(withIdentifier: "upperSubmitSegue", sender: nil)
  }*/

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
      if segue.identifier == "upperSubmitSegue" {
        if let myVC = segue.destination as? UpperBodySubmitViewController {
          myVC.absSwitchisOn = absSwitch.isOn
          myVC.armsSwitchisOn = armsSwitch.isOn
          myVC.backSwitchisOn = backSwitch.isOn
          myVC.shoulderSwitchisOn = shoulderSwitch.isOn
        }

        
      }
      
      
    }
 

}
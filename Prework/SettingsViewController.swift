//
//  SettingsViewController.swift
//  Prework
//
//  Created by Qusai Ghabrah on 1/23/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        
        defaultTipControl.selectedSegmentIndex = defaults.integer(forKey: "Default Tip")

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func setDefaultTip(_ sender: Any) {
        let defaults = UserDefaults.standard
        
        defaults.setValue(defaultTipControl.selectedSegmentIndex, forKey: String("Default Tip"))
        
        defaults.synchronize()
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

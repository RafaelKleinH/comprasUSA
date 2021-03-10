//
//  SettingsViewController.swift
//  comprasUSA
//
//  Created by Rafael Hartmann on 09/03/21.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var tfIOF: UITextField!
    @IBOutlet weak var tfStateTaxes: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfDolar.text = tc.getFormattedValue(of: tc.dolar, withCurrency: "")
        tfIOF.text = tc.getFormattedValue(of: tc.iof, withCurrency: "")
        tfStateTaxes.text = tc.getFormattedValue(of: tc.stateTax, withCurrency: "")
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func setValues(){
        tc.dolar = tc.convertToDouble(strg:tfDolar.text!)
        tc.iof = tc.convertToDouble(strg:tfIOF.text!)
        tc.stateTax = tc.convertToDouble(strg:tfStateTaxes.text!)
    }
    
    
    
}

extension SettingsViewController : UITextFieldDelegate{
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        setValues()
    }
    
}

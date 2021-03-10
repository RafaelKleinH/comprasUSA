//
//  ViewController.swift
//  comprasUSA
//
//  Created by Rafael Hartmann on 09/03/21.
//

import UIKit

class ShoppingViewController: UIViewController {

    @IBOutlet weak var tfDolar: UITextField!
    
    @IBOutlet weak var lbRealDescription: UILabel!
    
    @IBOutlet weak var lbReal: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setAmmount()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tfDolar.resignFirstResponder()
        setAmmount()
        
    }
    func setAmmount(){
        tc.shoppingValue = tc.convertToDouble(strg: tfDolar.text!)
        lbReal.text = tc.getFormattedValue(of: tc.shoppingValue * tc.dolar, withCurrency: "R$ ")
        let dolar = tc.getFormattedValue(of: tc.dolar, withCurrency: "R$")
        lbRealDescription.text = "Valor sem impostot (dólar\(dolar))"
    }
}


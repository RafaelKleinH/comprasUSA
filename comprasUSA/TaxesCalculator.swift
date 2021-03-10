//
//  TaxesCalculator.swift
//  comprasUSA
//
//  Created by Rafael Hartmann on 10/03/21.
//

import Foundation

class TaxesCalculator{
    
    static let shared = TaxesCalculator()
    
    
    var dolar : Double = 5.8
    var iof : Double = 6.38
    var stateTax : Double = 7.0
    var shoppingValue : Double = 0
    
    let formatter = NumberFormatter()
    
    
    var shoppingValueInReal : Double{
        return shoppingValue * dolar
    }
    var stateTaxValue: Double {
        return shoppingValue * stateTax / 100
    }
    var iofValue: Double {
        return (shoppingValue + stateTax) * iof / 100
    }
    
    func calculate(usingCreditCard:Bool) -> Double{
        var finalValue = shoppingValue + stateTaxValue
        if usingCreditCard {
            finalValue += iofValue
        }
        
        return finalValue * dolar
    }
    func convertToDouble(strg:String) -> Double{
        formatter.numberStyle = .none
        return formatter.number(from: strg)!.doubleValue
        
        
    }
    func getFormattedValue(of value: Double, withCurrency currency: String) -> String{
        formatter.numberStyle = .currency
        formatter.currencySymbol = currency
        formatter.alwaysShowsDecimalSeparator = true
        return formatter.string(for: value)!
    }
    private init() {
       
        
        formatter.usesGroupingSeparator = true
        
    }
    
}

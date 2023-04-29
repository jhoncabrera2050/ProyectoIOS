
//
//  Alerts.swift
//  sem3-A
//
//  Created by Alumno on 21/04/23.
//

import Foundation
import UIKit

class Alerts{
    
    //funciones estaticas : Funciones que se puede acceder y no hace instanciar a la clase .
    
    static func makeAlert (title:String?,message:String?, controller:UIViewController){
        let alert = UIAlertController(title:title,message: message,preferredStyle: .alert)
        let action = UIAlertAction(title:"OK",style: .cancel)
        alert .addAction(action)
        controller.present(alert, animated: true)
        
    }
}

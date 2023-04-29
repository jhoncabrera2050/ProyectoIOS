//
//  CardViewController.swift
//  Trabajo_nuevo
//
//  Created by Alumno on 29/04/23.
//

//
//  ViewController.swift
//  sem3-A
//
//  Created by Alumno on 14/04/23.
//

import UIKit

class CarViewController: UIViewController {
    

    @IBOutlet weak var txtPrice: UITextField!
    
    @IBOutlet weak var txtBrand: UITextField!
    
    @IBOutlet weak var txtModel: UITextField!
    
    //DECLARAMOS UN ARRAY
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onTabCreateCar(_ sender: UIButton) {
        
        //Vamos a obtener el texto de los inputs
        let brand = txtBrand.text!
        let model = txtModel.text!
        let price = txtPrice.text!
        
        //VAMOS A VALIDAR QUE ESTEN LLENOS
        
        if brand.isEmpty || model.isEmpty || price.isEmpty {
            Alerts.makeAlert(title: "Error", message: "Complete loss campos ", controller: self)
            return
        }
        
        CarViewModel.storeCar(car: Auto(brand: brand, model: model, price: Float(price) ?? 0.0))
        
        //para limpiar los texField
        
        txtPrice.text=""
        txtModel.text=""
        txtBrand.text=""
        
        //Mostrar una alerta que indique que se guardo
        
        Alerts.makeAlert(title: "Succes", message: "Se Guardo correctamente ", controller: self)
        
        
  }

}

//
//  SecondViewController.swift
//  3septiembre
//
//  Created by macbook on 01/10/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit
class SecondViewController: UIViewController{
    
    @IBOutlet weak var desk: UITextView!
    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var compra: UIButton!
    var fromFirstView : compra!
    var agregar : compra!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        etiqueta.text = fromFirstView.nombre
        desk.text = fromFirstView.descripcion
        image.image = UIImage(named: fromFirstView.imagen)
    }
    
    @IBAction func agre(_ sender: UIButton) {
        lista.append(fromFirstView)
        print(lista)
    }
}



 


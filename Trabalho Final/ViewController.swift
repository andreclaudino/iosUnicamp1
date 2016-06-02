//
//  ViewController.swift
//  Trabalho Final
//
//  Created by André Claudino on 01/06/16.
//  Copyright © 2016 D2x Ideias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbReais: UITextView!
    @IBOutlet weak var lbDolar: UITextView!
    @IBOutlet weak var lbEuro: UITextView!
    @IBOutlet weak var lbYene: UITextView!
    @IBOutlet weak var btnPonto: UIButton!
    
    var valor = 0.00
    var fracao : Double = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        digitar(0)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnController1(sender: AnyObject) {
        digitar(1.0)
    }

    @IBAction func btnController2(sender: AnyObject) {
        digitar(2.0)
    }
    
    @IBAction func btnController3(sender: AnyObject) {
        digitar(3.0)
    }
    
    @IBAction func btnController4(sender: AnyObject) {
        digitar(4.0)
    }
    
    @IBAction func btnController5(sender: AnyObject) {
        digitar(5.0)
    }
    
    @IBAction func btnController6(sender: AnyObject) {
        digitar(6.0)
    }
    
    @IBAction func btnController7(sender: AnyObject) {
        digitar(7.0)
    }
    
    @IBAction func btnController8(sender: AnyObject) {
        digitar(8.0)
    }
    
    @IBAction func btnController9(sender: AnyObject) {
        digitar(9.0)
    }
    
    @IBAction func btnController0(sender: AnyObject) {
        digitar(0.0)
    }
    
    @IBAction func btnControllerDot(sender: AnyObject) {
        fracao = 0.1
        btnPonto.enabled = false
    }
    
    @IBAction func btnControllerClean(sender: AnyObject) {
        valor = 0.0
        lbReais.text = NSString(format: "%.2f", valor) as String
        digitar(0.0)
        fracao = 1.0
        btnPonto.enabled = true
    }
    
    func digitar(digito : Double){
        if(fracao != 1.0){
            valor = Double(lbReais.text)! + digito*fracao
            fracao = fracao/10
        }
        else{
            valor = Double(lbReais.text)! * 10 + digito
        }
        
        lbReais.text = NSString(format: "%.2f", valor) as String
        lbDolar.text = NSString(format: "Dolar: %.2f", valor*3.608) as String
        lbEuro.text = NSString(format: "Euro: %.2f", valor*4.036) as String
        lbYene.text = NSString(format: "Iene: %.2f", valor*0.032) as String
    }
}


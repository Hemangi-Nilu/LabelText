//
//  ViewController.swift
//  labeltext
//
//  Created by Mac Mini on 04/08/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var mylabel: UILabel!
    @IBOutlet var btnfirst : UIButton!
    @IBOutlet var txtfield1: UITextField!
    @IBOutlet var txt2 : UITextField!
    @IBOutlet var lbl2 : UILabel!
    
//    var iconclick = false
//    let imageicon = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //mylabel.font = .italicSystemFont(ofSize: 30)
       // mylabel.backgroundColor = UIColor.blue
        mylabel.textAlignment = .center
        mylabel.textColor = UIColor.systemOrange
        txt2.tintColor = .black
        //mylabel.shadowColor = UIColor.black
       // mylabel.isHighlighted = true
        // Do any additional setup after loading the view.
        txtfield1.placeholder = "Enter your details"
        txtfield1.delegate = self
        txt2.delegate = self
        

      
    }
    //button action method
    @IBAction func btnRestore(_ sender: Any) {
        print("this is restore ")
        mylabel.text =  btnfirst.titleLabel?.text
        btnfirst.backgroundColor = .blue
    }
    
    
//textfield and keyped
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("should begin editing")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("did begin editing")
        
    }
    
    func textFieldShouldEndEditing(_: UITextField) -> Bool{
        print("method should endediting")
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("method did editing")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        txtfield1.resignFirstResponder()
//        txt2.tintColor = .black
//        txt2.becomeFirstResponder()
        print("method should return")
       
        return true
    }
    
   func textFieldDidChangeSelection(_ textField: UITextField) {
        print("field did chamge ")
        mylabel.text = txtfield1.text
        lbl2.text = txt2.text
    }

    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("field should clear")
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("this is textfield")
        if textField == txtfield1 {
            let maxLength = 10
            let currentString: NSString = txtfield1.text as! NSString
               let newString: NSString =
                currentString.replacingCharacters(in: range, with: string) as NSString
            if !(newString.length <= maxLength)  {
                txt2.becomeFirstResponder()
            }
        
               return newString.length <= maxLength
        }
        else{
            return true
        }
    }
    
    
    //hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        txtfield1.resignFirstResponder()
        txt2.resignFirstResponder()
        print("hide keyboard")
    }
    
    
    }


//
//  AddViewController.swift
//  target marker
//
//  Created by Yuji Ishikawa on 2018/10/08.
//  Copyright © 2018年 Yuji Ishikawa. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var servicetextfield: UITextField?
    @IBOutlet var gendertextfield: UITextField?
    @IBOutlet var agetextfield: UITextField?
    @IBOutlet var sonotatextfield: UITextField?
    
    var saveData: UserDefaults = UserDefaults.standard
    var serviceArray = [String]()
    var genderArray = [String]()
    var ageArray = [String]()
    var sonotaArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        servicetextfield?.delegate = self
        gendertextfield?.delegate = self
        agetextfield?.delegate = self
        sonotatextfield?.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    @IBAction func add(){
        if servicetextfield?.text != ""{
            if saveData.array(forKey: "service") != nil{
                serviceArray = saveData.array(forKey: "service") as! [String]
            }
            serviceArray.append((servicetextfield?.text)!)
            saveData.set(serviceArray, forKey: "service")
            print(serviceArray)
        }
        
        if gendertextfield?.text != ""{
            if saveData.array(forKey: "gender") != nil{
                genderArray.append((gendertextfield?.text)!)
                genderArray = saveData.array(forKey: "gender") as! [String]
            }
            saveData.set(genderArray, forKey: "gender")
            print(genderArray)
        }
        
        if agetextfield?.text != ""{
            if saveData.array(forKey: "age") != nil{
                ageArray.append((agetextfield?.text)!)
                ageArray = saveData.array(forKey: "age") as! [String]
            }
            saveData.set(ageArray, forKey: "age")
            print(ageArray)
        }
        if sonotatextfield?.text != ""{
            if saveData.array(forKey: "sonota") != nil{
            sonotaArray.append((sonotatextfield?.text)!)
            sonotaArray = saveData.array(forKey: "sonota") as! [String]
        }
        saveData.set(sonotaArray, forKey: "sonota")
        print(sonotaArray)
    }
    self.dismiss(animated: true, completion: nil)
}


@IBAction func back(){
    self.dismiss(animated: true, completion: nil)
}


}

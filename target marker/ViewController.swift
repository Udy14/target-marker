//
//  ViewController.swift
//  target marker
//
//  Created by Yuji Ishikawa on 2018/10/08.
//  Copyright © 2018年 Yuji Ishikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet var targetTable: UITableView!
    
    @IBOutlet var servicelabel: UILabel!
    @IBOutlet var genderlabel: UILabel!
    @IBOutlet var agelabel: UILabel!
    @IBOutlet var sonotalabel: UILabel!
    
    var saveData:UserDefaults = UserDefaults.standard
    var serviceArray = [String]()
    var genderArray = [String]()
    var ageArray = [String]()
    var sonotaArray = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        targetTable.dataSource = self
        targetTable.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        if saveData.array(forKey: "service") != nil{
            serviceArray = saveData.array(forKey: "service") as! [String]
        }
        if saveData.array(forKey: "gender") != nil{
            genderArray = saveData.array(forKey: "gender") as! [String]
        }
        if saveData.array(forKey: "age") != nil{
            ageArray = saveData.array(forKey: "age") as! [String]
        }
        if saveData.array(forKey: "sonota") != nil{
            sonotaArray = saveData.array(forKey: "sonota") as! [String]
        }
        targetTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return serviceArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "targetCell")
        servicelabel?.text = serviceArray[indexPath.row]
        genderlabel?.text = genderArray[indexPath.row]
        agelabel?.text = ageArray[indexPath.row]
        sonotalabel?.text = sonotaArray[indexPath.row]
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            serviceArray.remove(at: indexPath.row)
            saveData.set(serviceArray, forKey: "service")
            genderArray.remove(at: indexPath.row)
            saveData.set(genderArray, forKey: "gender")
            ageArray.remove(at: indexPath.row)
            saveData.set(ageArray, forKey: "age")
            sonotaArray.remove(at: indexPath.row)
            saveData.set(sonotaArray, forKey: "sonota")
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
    }
    
    


}


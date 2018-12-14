//
//  ViewController.swift
//  gitSam
//
//  Created by TechMahindra on 14/12/18.
//  Copyright © 2018 TechMahindra. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var txtFldCurrent: UITextField?
    override func viewDidLoad() {
        super.viewDidLoad()
        print("sivakumar")
    }

    @IBAction func btnAddCategoryTouchUpInside(_ sender: UIBarButtonItem) {
        
        let alertCtrl = UIAlertController(title: "Category", message: "Enter category name", preferredStyle: .alert);
        
        let alertAction1 = UIAlertAction(title: "Add", style: .default) { (action) in
            print("Add button click action");
            print(self.txtFldCurrent?.text ?? "NA")
        }
        alertCtrl.addAction(alertAction1);
        alertCtrl.addTextField { (txtFld) in
            txtFld.placeholder = "Enter category name"
            self.txtFldCurrent = txtFld;
        }
        self.present(alertCtrl, animated: true, completion: nil)
        

        
    }
    

}


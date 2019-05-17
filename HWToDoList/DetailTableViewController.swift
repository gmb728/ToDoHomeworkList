//
//  DetailTableViewController.swift
//  HWToDoList
//
//  Created by Chang Sophia on 4/24/19.
//  Copyright © 2019 Chang Sophia. All rights reserved.
//

import UIKit

protocol DetailTableViewControllerDelegate {
    func update(record: Record)
}
class DetailTableViewController: UITableViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    
    var delegate: DetailTableViewControllerDelegate?
    var record: Record?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let record = record {
            titleTextField.text = record.title
        }
        }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        
//收起鍵盤
      self.view.endEditing(true)
        
        if titleTextField.text?.isEmpty == false,
            let title = titleTextField.text{
            record = Record(title: title)
            delegate?.update(record: record!)
            navigationController?.popViewController(animated: true)
        } else {
            let alertController = UIAlertController(title: "Oops", message: "No Data", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }
}


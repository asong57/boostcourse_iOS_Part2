//
//  ViewController.swift
//  MyDatePicker
//
//  Created by asong on 2021/08/19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    let dateForamatter: DateFormatter = {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }()

    
    @IBAction func didDatePickerValueChanged(_ sender: UIDatePicker){
        print("value change")
        
        let date:Date = self.datePicker.date
        let dateString: String = self.dateForamatter.string(from: date)
        
        self.dateLabel.text = dateString
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.datePicker.addTarget(self, action: #selector(self.didDatePickerValueChanged(_:)), for: UIControl.Event.valueChanged)
        // Do any additional setup after loading the view.
    }


}


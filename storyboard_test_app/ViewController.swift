//
//  ViewController.swift
//  storyboard_test_app
//
//  Created by Macbook on 30.05.22.
//

import UIKit

class ViewController: UIViewController {


   
    
    @IBOutlet weak var labelDay: UILabel!
    
    
    @IBOutlet weak var dayText: UITextField!
    
    @IBOutlet weak var monthText: UITextField!
    
    @IBOutlet weak var yearText: UITextField!
    
    @IBAction func findDate(_ sender: UIButton) {
        
        
        guard let day = dayText.text, let month = monthText.text, let year = yearText.text else {return}
        
        
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        dateFormatter.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponents) else{return}
        let weekday = dateFormatter.string(from: date)
        let capitalizedWeekDay = weekday.capitalized
        
        labelDay.text = capitalizedWeekDay
        
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}


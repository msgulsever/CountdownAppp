//
//  ekleCV.swift
//  Countdown mobile app
//
//  Created by Muhammed Selimhan gülsever on 15.02.2022.
//

import UIKit

class ekleCV: UIViewController {

    @IBOutlet weak var bilgilbl: UILabel!
    
    @IBOutlet weak var resimekle: UIImageView!
    
    
    @IBOutlet weak var tekrarsw: UISwitch!
    
    @IBOutlet weak var bildirimsw: UISwitch!
    
    @IBOutlet weak var bilgigirtf: UITextField!
    let datePicker = UIDatePicker()
    @IBOutlet weak var tarihtf: UITextField!
    @IBOutlet weak var bilgi3: UILabel!
    @IBOutlet weak var bilgi2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        tekrarsw.setOn(false, animated: true)
        bildirimsw.setOn(false, animated: true)
        tekrarsw.tintColor = .red
        tekrarsw.onTintColor = .green
        tekrarsw.thumbTintColor = .darkGray
        tekrarsw.backgroundColor = .brown
        
        createDataPicker()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tekrarbutton(_ sender: Any) {
        if tekrarsw.isOn {
            
        }
    }
    
    @IBAction func bildirimbutton(_ sender: Any) {
    }
    
    
    func createDataPicker(){
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        // bar button
        let donebutton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: nil)
        toolbar.setItems([donebutton], animated: true)
        // assing toolbar
        tarihtf.inputAccessoryView = toolbar
        // assing date picker to the tf
        tarihtf.inputView = datePicker
    }
    
    @objc func donepressed(){
        tarihtf.text = "\(datePicker.date)"
        self.view.endEditing(true)
    }
    
    
    

    @IBAction func mavibutton(_ sender: Any) {
        
    }
    
    @IBAction func redbutton(_ sender: Any) {
    }
    

    @IBAction func greenbutton(_ sender: Any) {
    }
    
    @IBAction func yellowbutton(_ sender: Any) {
    }
    
    
}

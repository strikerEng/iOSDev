//
//  ViewController.swift
//  TextViewApp
//
//  Created by Kire  on 6/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var buttonObject: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textView.dataDetectorTypes = .link
        textView.isEditable = false
        textView.isSelectable = true
        textView.text = "The is an example of clickable text www.google.com"
        
        // When the keyboardWillShowNotification is observed run a function called keyboardWillShow -- defined later
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        // When the keyboardWillHideNotification is observed run a function called keyboardWillHide -- defined later
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        // When the tap gesture is recognized run a function called dismissKeyboard -- defined later
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    /// Toggle between making the text view editable and uneditable
    /// - Parameter sender: buttonObject 
    @IBAction func buttonTapped(_ sender: UIButton) {
        if textView.isEditable{
            textView.isEditable = false
            textView.backgroundColor = .yellow
            textView.textColor = .blue
            textView.font = UIFont(name: "Courier", size: 14)
        }else{
            textView.isEditable = true
            textView.backgroundColor = .blue
            textView.textColor = .white
            textView.font = UIFont(name: "Ariel", size: 10)
        }
    }
    
    /// When the user taps outside of the keyboard view a tap gesture is recognized and tells the keyboard it can be dismissed. Also triggering the keyboardWillHideNotification notification
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    /// Move the view up by the height of the keyboard when it will apear
    /// - Parameter notification: system notification to extract info from
    @objc func keyboardWillShow(notification: NSNotification){
        // Dynamically determine the frame of the keyboard at the end of its animation
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue{
            // If the top of the frame is at the top of the screen
            if self.view.frame.origin.y == 0{
                // Move the frame up by the size of the keyboard height
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }
    
    /// Move the view down to it's origin y position when the keyboard is expeted to disappear
    /// - Parameter notification: system notification to extract info from
    @objc func keyboardWillHide(notification: NSNotification){
        // Is the keyboard visible
        if ((notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue) != nil{
            // If the top of the frame is not at the top of the screen then move it to the top of the screen because the keyabord is about to disappear
            if self.view.frame.origin.y != 0 {
                self.view.frame.origin.y = 0
            }
        }
    }
}


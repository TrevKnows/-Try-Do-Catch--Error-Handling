//
//  ViewController.swift
//  Error Handling
//
//  Created by Trevor Beaton on 5/17/21.
//

import UIKit

class ViewController: UIViewController {
    
    /// A function indicates that it can throw an error by including the throws keyword in its declaration.
    func canThrowAnError() throws {
        // this function might or might not throw an error.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func handleExpection() {
        /// The try/catch syntax was added in Swift 2.0 to make exception handling clearer and safer.
        /// It's made up of three parts:
        if let filename = Bundle.main.path(forResource: "input", ofType: "txt") {
            
            /// "do" starts a block of code that might fail
            do {
                
                /// Any function calls that might fail needs to be called using "try".
                let str = try String(contentsOfFile: filename)
                print(str)
                
                /// catch is where execution gets transferred if any errors occur,
            } catch {
                print("The file could not be loaded")
            }
        }
    }
    

}


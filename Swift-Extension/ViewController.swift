//
//  ViewController.swift
//  Swift-Extension
//
//  Created by Robin on 3/4/16.
//  Copyright © 2016 Robin. All rights reserved.
//

import UIKit 


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
//        safeSubscriptArray()
//        safeSubscriptCollection()
        mutipleIndexArray()
        
        
    }
    
    
    //MARK: - Safe Subscript Array
    func safeSubscriptArray() {
        let testArray = [0 , 2,  3, 45, 5, 23, 43, 13, 54]
        let indexs = [1, 30, 20, 2, 4, 0, 300]
        
        for index in indexs {
            guard let value = testArray[safe: index] else {
                
                print("index: \(index) is unvalid")
                continue
            }
            
            print("index: \(index)  -> value: \(value) is valid")
        }
    }
     
    
    //MARK: - Safe Subscript Collection
    func safeSubscriptCollection() {
        let testArray = [10, 20, 30, 40, 50]
        let indexs = [1, 30, 20, 2, 4, 0, 300]
        
        for index in indexs {
            guard let value = testArray[safe: index] else {
                
                print("index: \(index) is unvalid")
                continue
            }
            
            print("index: \(index)  -> value: \(value) is valid")
        }
    }
    
    //MAKR: - Mutiple Subscript Array 
    func mutipleIndexArray() {
        var mutipleIndexArray = [10, 20, 30, 40, 50, 60]
        
        // get mutiple values once
        let mutipleValues = mutipleIndexArray[0, 1, 4, 5]
        print("Get Mutiple Values: \(mutipleValues)")
        
        //set mutiple values once
        mutipleIndexArray[0, 1, 5] = [100, 200, 300]
        print("Set Mutiple Values: \(mutipleIndexArray)")
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


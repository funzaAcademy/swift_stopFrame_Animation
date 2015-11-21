//
//  ViewController.swift
//  Animation_1
//
//  Created by Sanjay Noronha on 2015/09/11.
//  Copyright © 2015 funza Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet var myimageView: UIImageView!
    var myImages = [UIImage]()
    
    @IBOutlet var myButton: UIButton!
    
    @IBAction func doAnimation(sender: AnyObject) {
        
        if myimageView.isAnimating()
        {
            //stop button is pressed
            myimageView.stopAnimating()
            myButton.setTitle("START", forState: UIControlState.Normal)
        }
        else
        {
            //start button is pressed
            
            myimageView.animationDuration = 2
            myimageView.startAnimating()
            myButton.setTitle("STOP", forState: UIControlState.Normal)
        
        }
        
 
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...21
        {
            myImages.append(UIImage(named: "\(i)")!)
        }
        
        myimageView.animationImages = myImages
     
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


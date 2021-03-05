//
//  ViewController.swift
//  gestureRecognizerProgram
//
//  Created by Arun Muthukumar on 04/03/21.
//  Copyright © 2021 Arun Muthukumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    let display:UIView = UIView(frame: CGRect(x: 10, y: 20, width: 125, height: 125))
    let embeddedDisplay:UIView = UIView(frame: CGRect(x: 10, y: 20, width: 125, height: 125 ))
    
    
    let display1:UIView = UIView(frame: CGRect(x: 145, y: 20, width: 125, height: 125))
    let embeddedDisplay1:UIView = UIView(frame: CGRect(x: 145, y: 20, width: 125, height: 125 ))
    
    
//    let display2:UIView = UIView(frame: CGRect(x: 10, y: 155, width: 125, height: 125))
//    let embeddedDisplay2:UIView = UIView(frame: CGRect(x: 10, y: 155, width: 125, height: 125 ))
//    
//    
//    let display3:UIView = UIView(frame: CGRect(x: 145, y: 290, width: 125, height: 125))
//    let embeddedDisplay3:UIView = UIView(frame: CGRect(x: 145, y: 290, width: 125, height: 125 ))
//    
//    
//    let display4:UIView = UIView(frame: CGRect(x: 10, y: 425, width: 125, height: 125))
//    let embeddedDisplay4:UIView = UIView(frame: CGRect(x: 10, y: 425, width: 125, height: 125 ))
//    
//    
//    let display5:UIView = UIView(frame: CGRect(x: 145, y: 425, width: 125, height: 125))
//    let embeddedDisplay5:UIView = UIView(frame: CGRect(x: 145, y: 425, width: 125, height: 125 ))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    
        let tapTheScreen = UITapGestureRecognizer(target: self, action: #selector(tapped))
        tapTheScreen.numberOfTapsRequired = 1
        display.addGestureRecognizer(tapTheScreen)
        
        
        let tapTheScreen1 = UITapGestureRecognizer(target: self, action: #selector(tapped1))
        tapTheScreen1.numberOfTapsRequired = 1
        display1.addGestureRecognizer(tapTheScreen1)

        let tapTheEmbeddedScreen = UITapGestureRecognizer(target: self, action: #selector(tappedEmbedded))
        tapTheEmbeddedScreen.numberOfTapsRequired = 1
        embeddedDisplay.addGestureRecognizer(tapTheEmbeddedScreen)
        
        let tapTheEmbeddedScreen1 = UITapGestureRecognizer(target: self, action: #selector(tappedEmbedded1))
        tapTheEmbeddedScreen1.numberOfTapsRequired = 1
        embeddedDisplay1.addGestureRecognizer(tapTheEmbeddedScreen1)
        
        displaySetup()
        displaySetup1()
        
        embeddedDisplaySetup()
        embeddedDisplaySetup1()
    }
    
    @objc func tapped()
    {
        embeddedDisplay.isHidden = false
    }

    @objc func tappedEmbedded()
    {
        embeddedDisplay.isHidden = true
    }
    
    @objc func tapped1()
    {
        embeddedDisplay1.isHidden = false
    }
    
    @objc func tappedEmbedded1()
    {
        embeddedDisplay1.isHidden = true
    }
    
    func displaySetup(){
        display.backgroundColor = .cyan
        display.isUserInteractionEnabled = true
        view.addSubview(display)

    }
    
    func embeddedDisplaySetup(){
        embeddedDisplay.isUserInteractionEnabled = true
        embeddedDisplay.backgroundColor = .green
        view.addSubview(embeddedDisplay)

    }
    
    func displaySetup1(){
        display1.backgroundColor = .cyan
        display1.isUserInteractionEnabled = true
        view.addSubview(display1)
        
    }
    
    func embeddedDisplaySetup1(){
        embeddedDisplay1.isUserInteractionEnabled = true
        embeddedDisplay1.backgroundColor = .green
        view.addSubview(embeddedDisplay1)
        
    }

    
}

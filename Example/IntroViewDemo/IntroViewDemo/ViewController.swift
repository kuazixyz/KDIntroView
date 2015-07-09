//
//  ViewController.swift
//  IntroViewDemo
//
//  Created by Kedan Li on 15/7/5.
//  Copyright (c) 2015年 TakeFive Interactive. All rights reserved.
//

import UIKit
import KDIntroView

class ViewController: KDIntroViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //setup the introduction view   : number of pages : the nib name of each page
        setup(["1View","2View","3View","4View","5View"])

    }

    override func moveEverythingAccordingToIndex(index: CGFloat) {
        // setting the movement of the color of the background
        if index <= view.frame.width * 0.75{
            view.backgroundColor = UIColor.whiteColor()
        }else if index > view.frame.width * 0.75 && index <= view.frame.width * 1.25{
            view.backgroundColor = UIColor(red: 46.0/255, green: 176.0/255, blue: 138.0/255, alpha: 1)
        }else if index > view.frame.width * 1.25 && index < view.frame.width * 1.75{
            
            changeBackgroundColor(index, fromColor: UIColor(red: 46.0/255, green: 176.0/255, blue: 138.0/255, alpha: 1), toColor: UIColor(red: 143.0/255, green: 205.0/255, blue: 232.0/255, alpha: 1), fromIndex: view.frame.width * 1.25, toIndex: view.frame.width * 1.75)

        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
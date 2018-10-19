//
//  ViewController.swift
//  IOS-Midterm
//
//  Created by Matin Salehi [300906321] on 2018-10-18.
//  Copyright © 2018 Matin Salehi. All rights reserved.
//

import UIKit
import RevealingSplashView

class ViewController: UIViewController {

    @IBOutlet weak var firstItemCount: UILabel!
    @IBOutlet weak var secondItemCount: UILabel!
    @IBOutlet weak var thirdItemCount: UILabel!
    @IBOutlet weak var fourthItemCount: UILabel!
    @IBOutlet weak var fifthItemCount: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Initialize a revealing Splash Screen
        let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "appLogo")!,iconInitialSize: CGSize(width: 170, height: 170), backgroundColor: UIColor(red:255/255, green:255/255, blue:255/255, alpha:1.0))
        //Adds the revealing splash view as a sub view
        self.view.addSubview(revealingSplashView)
        revealingSplashView.animationType = SplashAnimationType.popAndZoomOut
        //Starts animation
        revealingSplashView.startAnimation(){}
    }

    /******Each Increase Button Press will function here******/
    @IBAction func increasePressed(_ sender: UIButton) {
        let formatter = NumberFormatter()
        switch sender.tag {
        case 2:
            if let number = formatter.number(from: firstItemCount.text!) {
                firstItemCount.text = String(NSInteger((number.intValue)) + 1)
            }
        case 4:
            if let number = formatter.number(from: secondItemCount.text!) {
                secondItemCount.text = String(NSInteger((number.intValue)) + 1)
            }
        case 6:
            if let number = formatter.number(from: thirdItemCount.text!) {
                thirdItemCount.text = String(NSInteger((number.intValue)) + 1)
            }
        case 8:
            if let number = formatter.number(from: fourthItemCount.text!) {
                fourthItemCount.text = String(NSInteger((number.intValue)) + 1)
            }
        case 10:
            if let number = formatter.number(from: fifthItemCount.text!) {
                fifthItemCount.text = String(NSInteger((number.intValue)) + 1)
            }
        default:
            return
        }
    }
    
    /******Each Decrease Button Press will function here******/
    @IBAction func decreasePressed(_ sender: UIButton) {
        let formatter = NumberFormatter()
        switch sender.tag {
        case 1:
            if let number = formatter.number(from: firstItemCount.text!) {
                if NSInteger((number.intValue)) > 0 {
                    firstItemCount.text = String(NSInteger((number.intValue)) - 1)
                }
            }
        case 3:
            if let number = formatter.number(from: secondItemCount.text!) {
                if NSInteger((number.intValue)) > 0 {
                    secondItemCount.text = String(NSInteger((number.intValue)) - 1)
                }
            }
        case 5:
            if let number = formatter.number(from: thirdItemCount.text!) {
                if NSInteger((number.intValue)) > 0 {
                    thirdItemCount.text = String(NSInteger((number.intValue)) - 1)
                }
            }
        case 7:
            if let number = formatter.number(from: fourthItemCount.text!) {
                if NSInteger((number.intValue)) > 0 {
                    fourthItemCount.text = String(NSInteger((number.intValue)) - 1)
                }
            }
        case 9:
            if let number = formatter.number(from: fifthItemCount.text!) {
                if NSInteger((number.intValue)) > 0 {
                    fifthItemCount.text = String(NSInteger((number.intValue)) - 1)
                }
            }
        default:
            return
        }
    }

    
    @IBAction func savePressed(_ sender: UIButton) {
        
    }
    
}

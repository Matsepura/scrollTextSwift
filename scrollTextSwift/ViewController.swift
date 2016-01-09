//
//  ViewController.swift
//  scrollTextSwift
//
//  Created by Semen Matsepura on 09.01.16.
//  Copyright © 2016 Semen Matsepura. All rights reserved.
//

import UIKit
var scrollingtimer = NSTimer!()

class ViewController: UIViewController {

    @IBOutlet weak var mopassanTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func setup () {
        
//        print("\(mopassanTextView.contentSize.width) \(mopassanTextView.contentSize.height)")
        
        if scrollingtimer == nil {
            
            scrollingtimer = NSTimer.scheduledTimerWithTimeInterval(0.03, target: self, selector: "autoscrollingTimerFired", userInfo: nil, repeats: true)
            
        }
    }
    
    func autoscrollingTimerFired () {
        
        var scrollPoint = mopassanTextView.contentOffset
        
//        print("\(scrollPoint.x) \(scrollPoint.y)")
        
        if scrollPoint.y == mopassanTextView.contentSize.height - mopassanTextView.bounds.size.height {
            scrollingtimer.invalidate()
            scrollingtimer = nil
        }
        scrollPoint = CGPointMake(scrollPoint.x, scrollPoint.y + 1)
        mopassanTextView.setContentOffset(scrollPoint, animated: false)
//        print("\(mopassanTextView.contentSize.width) \(mopassanTextView.contentSize.height)")
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

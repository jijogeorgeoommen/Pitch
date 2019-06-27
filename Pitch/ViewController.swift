//
//  ViewController.swift
//  Pitch
//
//  Created by JIJO G OOMMEN on 26/06/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageoutlet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        imageoutlet.isUserInteractionEnabled = true
        
        let pitch1 = UIPinchGestureRecognizer(target: self, action: #selector(pitch(sender:)))
        imageoutlet.addGestureRecognizer(pitch1)
        
    }


    @objc func pitch (sender : UIPinchGestureRecognizer) {
        
        guard sender.view != nil
        
            else {
                return
        }
        if (sender.state == .began || sender.state == .changed){
            
            sender.view?.transform = (sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale))!
            sender.scale = 1.5
        }
    }
    
    
}


//
//  ViewController.swift
//  Bip The Guy
//
//  Created by user150978 on 2/4/19.
//  Copyright © 2019 Tion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: PROPERTIES
    @IBOutlet weak var imageToPunch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //MARK: FUNCTIONS
    func animateImage(){
        let bounds = self.imageToPunch.bounds
        let shrinkValue: CGFloat = 60
        //shrink by 60 pixels
        self.imageToPunch.bounds = CGRect(x: self.imageToPunch.bounds.origin.x + shrinkValue, y: self.imageToPunch.bounds.origin.y+shrinkValue, width: self.imageToPunch.bounds.size.width-shrinkValue, height: self.imageToPunch.bounds.size.height-shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: {self.imageToPunch.bounds = bounds }, completion: nil)
    }
    
    //MARK: ACTIONS
    @IBAction func libraryPressed(_ sender: Any) {
    }
    
    @IBAction func cameraPressed(_ sender: UIButton) {
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        animateImage()
        
    }
}


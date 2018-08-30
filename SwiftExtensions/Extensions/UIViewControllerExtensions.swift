//
//  UIViewControllerExtensions.swift
//  SafeTravels
//
//  Created by Satish Boggarapu on 1/29/18.
//  Copyright © 2018 Satish Boggarapu. All rights reserved.
//

import Foundation

extension UIViewController {
    
    func showToast(message : String) {
        
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - (getLabelWidthForFont(text: message) + 32)/2, y: self.view.frame.size.height-100, width: getLabelWidthForFont(text: message) + 32, height: 40))
        
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.font = UIFont(name: toastLabel.font.fontName, size: 12)
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = toastLabel.frame.height/2;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 5.0, delay: 0.1, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
    
    func showToastForCrimeRank(message : String, origin: CGPoint) {
        
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - (getLabelWidthForFont(text: message) + 32)/2, y: origin.y, width: getLabelWidthForFont(text: message) + 32, height: 40))
        
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.font = UIFont(name: toastLabel.font.fontName, size: 12)
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = toastLabel.frame.height/2;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 5.0, delay: 0.1, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
    
    func getLabelWidthForFont(text: String) -> CGFloat {
        let label = UILabel()
        label.font = UIFont(name: label.font.fontName, size: 12)
        label.text = text
        return label.intrinsicContentSize.width
    }
    
}

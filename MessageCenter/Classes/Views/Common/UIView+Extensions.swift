//
//  UIView+Extensions.swift
//  Alamofire
//
//  Created by Muhamed ALGHZAWI on 28/11/2018.
//

import Foundation
import UIKit

extension UIView {
    public func applyCornerRadius(to corners: UIRectCorner) {
        
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: 8, height: 8))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
    public func selectedCornerRadius () {
        
        let path = UIBezierPath(roundedRect:self.bounds,
                                byRoundingCorners:[.topRight, .topLeft, .bottomLeft],
                                cornerRadii: CGSize(width: 8, height:  8))
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.cgPath
        self.layer.mask = maskLayer
    }
    
    
    
    func addShadow() {

        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowRadius = 8
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.1
        layer.masksToBounds = false
        self.clipsToBounds = false
//
//        layer.shadowColor = UIColor.black.cgColor
//        layer.shadowOpacity = 0.5
//        layer.shadowOffset = CGSize(width: -1, height: 1)
//        layer.shadowRadius = 1
//
//        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
//        layer.shouldRasterize = true
//        layer.rasterizationScale = UIScreen.main.scale
        
//        self.layer.rasterizationScale = UIScreen.main.scale
    }
    
    func addBottomShadow() {
        
        layer.shadowOffset = CGSize(width: 0, height: 3)
        layer.shadowRadius = 0.5
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.1
        layer.masksToBounds = false
        self.clipsToBounds = false
    }
    
}

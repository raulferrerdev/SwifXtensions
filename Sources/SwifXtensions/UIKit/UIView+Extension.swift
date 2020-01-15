//
//  UIView+Extension.swift
//  
//
//  Created by RaulF on 14/01/2020.
//

import UIKit

// MARK: - View dimensions
public extension UIView {
    /// View width
    var width: CGFloat {
        return self.frame.size.width
    }
    
    /// View height
    var height: CGFloat {
        return self.frame.size.height
    }
    
    /// View size
    var size: CGSize  {
        return self.frame.size
    }
    
    /// View origin
    var origin: CGPoint {
        return self.frame.origin
    }
    
    /// View x origin
    var x: CGFloat {
        return self.frame.origin.x
    }
    
    /// View y origin
    var y: CGFloat {
        return self.frame.origin.y
    }
    
    /// View center x
    var centerX: CGFloat {
        return self.center.x
    }
    
    /// View center y
    var centerY: CGFloat {
        return self.center.y
    }
    
    /// View left position
    var left: CGFloat {
        return self.frame.origin.x
    }
    
    /// View right position
    var right: CGFloat {
        return self.frame.origin.x + self.frame.size.width
    }
    
    /// View top position
    var top: CGFloat {
        return self.frame.origin.y
    }
    
    /// View bottom position
    var bottom: CGFloat {
        return self.frame.origin.y + self.frame.size.height
    }
    
}

// MARK: - View shape
public extension UIView {
    /// Take UIView and round one or more corners
    /// - Parameters:
    ///   - corners: Corners to round
    ///   - radius: Corner radius
    func round(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.cgPath
        self.layer.mask = maskLayer
    }
}


// MARK: - View owner (ViewController)
public extension UIView {
    /// ParentViewController for view
    var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        
        while parentResponder != nil {
            parentResponder = parentResponder!.next
            
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        
        return nil
    }
}

//
//  UIViewExtensionTests.swift
//  
//
//  Created by RaulF on 14/01/2020.
//

import UIKit
import XCTest
@testable import SwifXtensions

final class UIViewExtensionTests: XCTestCase {

    let view = UIView()
    
    override func setUp() {
        view.frame = CGRect(x: 10.0, y: 15.0, width: 200.0, height: 100.0)
    }
    
    func testUIViewWidth() {
        XCTAssertEqual(view.width, 200.0)
    }
    
    func testUIViewHeight() {
        XCTAssertEqual(view.height, 100.0)
    }
    
    func testUIViewSize() {
        XCTAssertEqual(view.size, CGSize(width: 200.0, height: 100.0))
    }
    
    func testUIViewOrigin() {
        XCTAssertEqual(view.origin, CGPoint(x: 10.0, y: 15.0))
    }

    func testUIViewXOrigin() {
        XCTAssertEqual(view.x, 10.0)
    }
    
    func testUIViewYOrigin() {
        XCTAssertEqual(view.x, 10.0)
    }
    
    
    func testUIViewCenterX() {
        XCTAssertEqual(view.centerX, 110.0)
    }
    
    func testUIViewCenterY() {
        XCTAssertEqual(view.centerY, 65.0)
    }
    
    func testUIViewLeftPosition() {
        XCTAssertEqual(view.left, 10.0)
    }
    
    func testUIViewRightPosition() {
        XCTAssertEqual(view.right, 210.0)
    }
    
    func testUIViewTopPosition() {
        XCTAssertEqual(view.top, 15.0)
    }
    
    func testUIViewBottomPosition() {
        XCTAssertEqual(view.bottom, 115.0)
    }
}

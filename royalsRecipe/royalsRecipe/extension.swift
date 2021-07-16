//
//  extension.swift
//  royalsRecipe
//
//  Created by DCS on 15/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    public var height : CGFloat { return frame.size.height }
    public var width : CGFloat { return frame.size.width }
    public var left : CGFloat { return frame.origin.x }
    public var right : CGFloat { return frame.origin.x + width }
    public var top : CGFloat { return frame.origin.y }
    public var bottom : CGFloat { return frame.origin.y + height }
}

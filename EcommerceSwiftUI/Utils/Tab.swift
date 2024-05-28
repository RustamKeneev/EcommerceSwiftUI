//
//  Tab.swift
//  EcommerceSwiftUI
//
//  Created by Rustam Keneev on 28/5/24.
//

import Foundation
import SwiftUI

enum Tab: String, CaseIterable {
    case Home = "house"
    case Search = "magnifyingglass.circle"
    case Notification = "bell"
    case Cart = "bag"
    case Profile = "person"
    
    var Tabname: String {
        switch self{
        case .Home:
            return "Home"
        case .Search:
            return "Search"
        case .Notification:
            return "Notification"
        case .Cart:
            return "Cart"
        case .Profile:
            return "Profile"
        }
    }
}

//
//  ViewExtension.swift
//  EcommerceSwiftUI
//
//  Created by Rustam Keneev on 28/5/24.
//

import Foundation
import SwiftUI

extension View{
    func getSafeArea() -> UIEdgeInsets{
        guard let screen = UIApplication.shared.connectedScenes.first as? 
                UIWindowScene else {
            return .zero
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        return safeArea
    }
    
}

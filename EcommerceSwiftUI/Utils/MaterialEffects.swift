//
//  MaterialEffects.swift
//  EcommerceSwiftUI
//
//  Created by Rustam Keneev on 28/5/24.
//

import Foundation
import SwiftUI

struct MaterialEffects: UIViewRepresentable{
    var style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView{
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        print("updateUIView data")
    }
}

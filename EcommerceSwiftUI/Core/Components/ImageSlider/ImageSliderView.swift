//
//  ImageSliderView.swift
//  EcommerceSwiftUI
//
//  Created by Rustam Keneev on 28/5/24.
//

import SwiftUI

struct ImageSliderView: View {
    //MARK: - PROPERTIES
    @State private var currentIndex = 0
    var sliders: [String] = ["im1","im2","im3","im4","im5","im6"]
    
    //MARK: - BODY
    var body: some View {
        ZStack(alignment: .bottomLeading){
            ZStack(alignment: .trailing){
                Image(sliders[currentIndex])
                    .resizable()
                    .frame(width: 360, height: 180)
                    .scaledToFit()
                    .cornerRadius(16)
            }//: ZSTACK
            HStack{
                ForEach(0..<sliders.count){ index in
                    Circle()
                        .fill(self.currentIndex == index ? Color("kPrimary") : Color("kSecondary"))
                        .frame(width: 10, height: 10)
                }//: LOOP
            }//: HSTACK
            .padding()
            .onAppear{
                Timer.scheduledTimer(withTimeInterval: 5, repeats: true, block: { timer in
                    if self.currentIndex + 1 == self.sliders.count {
                        self.currentIndex = 0
                    }else {
                        self.currentIndex += 1
                    }
                })//: TIMER
            }//: ON APPEAR
        }//: ZSTACK
        .padding()
    }//: END BODY
}//: END IMAGE SLIDER VIEW

//MARK: - PREVIEW
#Preview {
    ImageSliderView()
}

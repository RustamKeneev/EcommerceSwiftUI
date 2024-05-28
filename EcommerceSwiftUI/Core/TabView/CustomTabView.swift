//
//  CustomTabView.swift
//  EcommerceSwiftUI
//
//  Created by Rustam Keneev on 28/5/24.
//

import SwiftUI

struct CustomTabView: View {
    //MARK: - PROPERTIES
    @State var currentTab: Tab = .Home
    @Namespace var animation
    
    init(){
        UITabBar.appearance().isHidden = true
    }

    //MARK: - BODY
    var body: some View {
        TabView(selection: $currentTab){
            HomeView()
                .background()
                .tag(Tab.Home)
            SearchView()
                .background()
                .tag(Tab.Search)
            NotificationView()
                .background()
                .tag(Tab.Notification)
            CartView()
                .background()
                .tag(Tab.Cart)
            ProfileView()
                .background()
                .tag(Tab.Profile)
        }//: END TAB VIEW
        .overlay(
            HStack(spacing: 0){
                ForEach(Tab.allCases, id: \.rawValue){ tab in
                    TabButton(tab: tab)
                }//: LOOP
                .padding(.vertical)
                .padding(.bottom, getSafeArea().bottom == 0 ? 5: getSafeArea().bottom - 15)
                .background(Color("kSecondary"))
            }//: HSTACK
            ,alignment: .bottom
        )//: OVERLAY
        .ignoresSafeArea(.all, edges: .bottom)
    }//: END BODY
    
    func TabButton(tab: Tab) -> some View{
            Button(action: {
                withAnimation(.spring){
                    currentTab = tab
                }
            }, label: {
                VStack{
                    Image(systemName: currentTab == tab ? tab.rawValue + ".fill": tab.rawValue)
                        .resizable()
                        .foregroundColor(Color("kPrimary"))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 26, height: 26)
                        .frame(maxWidth: .infinity)
                        .background(
                            ZStack{
                                if currentTab == tab {
                                    MaterialEffects(style: .light)
                                        .clipShape(Circle())
                                        .matchedGeometryEffect(id: "Tab", in: animation)
                                    Text(tab.Tabname)
                                        .foregroundColor(.primary)
                                        .font(.footnote)
                                        .padding(.top, 50)
                                }//: END IF
                            }//: ZSTACK
                        )//: BACKGROUND
                        .contentShape(Rectangle())
                        .offset(y: currentTab == tab ? -15 : 0)
                }//: VSTACK
            })//: BUTTON
            .frame(height: 26)
    }//: FUNCTION TAB BUTTON
}//: END TAB VIEW

//MARK: - PREVIEW
#Preview {
    CustomTabView()
}

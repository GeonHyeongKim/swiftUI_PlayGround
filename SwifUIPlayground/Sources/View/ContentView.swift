//
//  ContentView.swift
//  SwifUIPlayground
//
//  Created by geonhyeong on 2022/05/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .home
    
    enum Tab {
        case home
        case calendar
        case album
        case setting
    }
    
    var body: some View {
        TabView(selection: $selection) {
            AssetView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }
                .tag(Tab.home)
            Color.green
//                .edgesIgnoringSafeArea(.all)
                .tabItem {
                    Image(systemName: "calendar")
                    Text("일정")
                }
                .tag(Tab.calendar)
            Color.red
//                .edgesIgnoringSafeArea(.all)
                .tabItem {
                    Image(systemName: "photo.on.rectangle.angled")
                    Text("엘범")
                }
                .tag(Tab.album)
            Color.yellow
//                .edgesIgnoringSafeArea(.all)
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("설정")
                }
                .tag(Tab.setting)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  AssetView.swift
//  SwifUIPlayground
//
//  Created by geonhyeong on 2022/05/22.
//

import SwiftUI

struct AssetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 30) {
                    Spacer()
                    ScheduleView()
                        .aspectRatio(7/1, contentMode: .fit)
                }
            }
            .background(Color.init("sofaBackGround"))
            .navigaionBarWithButtonStyle("사랑하는 우리 가족")
        }
    }
}

struct AssetView_Previews: PreviewProvider {
    static var previews: some View {
        AssetView()
    }
}

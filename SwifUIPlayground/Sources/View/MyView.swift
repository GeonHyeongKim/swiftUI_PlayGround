//
//  MyView.swift
//  SwifUIPlayground
//
//  Created by geonhyeong on 2022/05/22.
//

import SwiftUI

struct MyView: View {
    let customFont: Font
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.title)
            Text("만나서 반가워요")
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(customFont: .title)
    }
}

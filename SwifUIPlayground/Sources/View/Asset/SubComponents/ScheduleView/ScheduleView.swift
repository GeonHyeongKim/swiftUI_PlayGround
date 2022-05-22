//
//  ScheduleView.swift
//  SwifUIPlayground
//
//  Created by geonhyeong on 2022/05/22.
//

import SwiftUI

struct ScheduleView: View {
    let bannerList: [Schedule] = [
        Schedule(title: "공지사항", description: "추가된 공지사항을 확인하세요"),
        Schedule(title: "아빠생신", description: "2일 앞으로 다가왔습니다"),
        Schedule(title: "결혼 기념일", description: "엄청난 이벤트에 놀라지 마세요"),
    ]
    
    @State private var currentPage = 0
    
    var body: some View {
        let pages = bannerList.map { ScheduleCard(schedule: $0) }
        
        ZStack(alignment: .bottomLeading) {
            PageViewController(pages: pages, currentPage: $currentPage)
//            PageControl(numberOfPages: 3, currentPage: $currentPage)
//                .frame(width: CGFloat(pages.count * 18))
//                .padding(EdgeInsets(top: 0, leading: 46, bottom: 0, trailing: 0))
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
            .aspectRatio(7/1, contentMode: .fit)
    }
}

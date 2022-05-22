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
        Schedule(title: "가을 프로모션", description: "가을...🍂")
    ]
    
    @State private var currentPage = 0
    
    var body: some View {
        let pages = bannerList.map { ScheduleCard(schedule: $0) }

        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: bannerList.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
            .aspectRatio(7/1, contentMode: .fit)
    }
}

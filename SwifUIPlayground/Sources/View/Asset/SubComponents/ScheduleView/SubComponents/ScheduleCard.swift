//
//  ScheduleCard.swift
//  SwifUIPlayground
//
//  Created by geonhyeong on 2022/05/22.
//

import SwiftUI

struct ScheduleCard: View {
    var schedule: Schedule
    
    var body: some View {
        
        Color.yellow
            .overlay(
                HStack {
                    Image(systemName: "calendar")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    VStack(alignment: .leading, spacing: 3, content: {
                        Text(schedule.title)
                            .font(.title3)
                        Text(schedule.description)
                            .font(.subheadline)
                    })
                    Spacer()
                    Button(
                        action: {
//                            print("X버튼 tapped")
                        },
                        label: {
                            Image(systemName: "multiply")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                        })
                    .accentColor(.black)
                    .padding()
                }
            )
            .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
            .background(Color.init("sofaBackGround"))
    }
}

struct ScheduleCard_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleCard(schedule: Schedule(
            title: "아빠생신",
            description: "2일 앞으로 다가왔습니다."
        ))
        .aspectRatio(7/1, contentMode: .fit)
    }
}

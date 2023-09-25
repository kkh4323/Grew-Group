//
//  ContentView.swift
//  CircleRecruitment
//
//  Created by KangHo Kim on 2023/09/21.
//

import SwiftUI

struct ContentView: View {
    @State private var currentViewIndex: Int = 1
    @State private var progressBarValue: Double = 0
    @State private var progressBarTotal: Double = 100
    
    var body: some View {
        VStack {
            VStack(spacing: 0) {
                ProgressView(value: progressBarValue, total: progressBarTotal)
                    .progressViewStyle(GrewProgressViewStyle(
                        value: $progressBarValue,
                        total: $progressBarTotal))
                    .frame(height: 50)
                HStack {
                    Button {
                        if currentViewIndex != 1 {
                            currentViewIndex -= 1
                        }
                    } label: {
                        Image(systemName: "chevron.backward")
                            .font(.system(size: 32))
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }//: HStack
                .padding(.horizontal)
            }//: VStack
            ZStack {
                if currentViewIndex == 1 {
                    GroupCategoryView(currentViewIndex: $currentViewIndex)
                        .onAppear(perform: {
                            progressBarValue = (100 / 7) * 1
                        })
                } else if currentViewIndex == 2 {
                    GroupNameView(currentViewIndex: $currentViewIndex)
                        .onAppear(perform: {
                            progressBarValue = (100 / 7) * 2
                        })
                } else if currentViewIndex == 3 {
                    GroupIsOnlineView(currentViewIndex: $currentViewIndex)
                        .onAppear(perform: {
                            progressBarValue = (100 / 7) * 3
                        })
                } else if currentViewIndex == 4 {
                    GroupRecruitView(currentViewIndex: $currentViewIndex)
                        .onAppear(perform: {
                            progressBarValue = (100 / 7) * 4
                        })
                } else if currentViewIndex == 5 {
                    GroupMemberFilterView(currentViewIndex: $currentViewIndex)
                        .onAppear(perform: {
                            progressBarValue = (100 / 7) * 5
                        })
                } else if currentViewIndex == 6 {
                    GroupMaximumMembersView(currentViewIndex: $currentViewIndex)
                        .onAppear(perform: {
                            progressBarValue = (100 / 7) * 6
                        })
                } else if currentViewIndex == 7 {
                    GroupCheckFeeView(currentViewIndex: $currentViewIndex)
                        .onAppear(perform: {
                            progressBarValue = (100 / 7) * 7
                        })
                }
            }//: ZStack
        }//: VStack
    }//: body
}

#Preview {
    ContentView()
}

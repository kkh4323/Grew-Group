//
//  GroupMemberFilterView.swift
//  CircleRecruitment
//
//  Created by KangHo Kim on 2023/09/22.
//

import SwiftUI

struct GroupMemberFilterView: View {
    @Binding var currentViewIndex: Int
    @State private var gender: Gender = .any
    @State private var minimumAge = 20
    @State private var maximumAge = 20
    
    var body: some View {
        VStack {
            ScrollView {
                Text("온라인 여부")
            }//: ScrollView
            Button {
                currentViewIndex += 1
            } label: {
                Text("다음")
            }//: Button
        }//: VStack
    }//: body
}

#Preview {
    GroupMemberFilterView(currentViewIndex: .constant(5))
}

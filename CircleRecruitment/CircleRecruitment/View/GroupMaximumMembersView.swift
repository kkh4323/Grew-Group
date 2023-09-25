//
//  GroupMaximumMembersView.swift
//  CircleRecruitment
//
//  Created by KangHo Kim on 2023/09/22.
//

import SwiftUI

struct GroupMaximumMembersView: View {
    @Binding var currentViewIndex: Int
    
    var body: some View {
        ScrollView {
            Text("최대 멤버 수")
        }
        Button {
            currentViewIndex += 1
        } label: {
            Text("다음")
        }
    }//: body
}

#Preview {
    GroupMaximumMembersView(currentViewIndex: .constant(6))
}

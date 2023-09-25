//
//  GroupMemberFilterView.swift
//  CircleRecruitment
//
//  Created by KangHo Kim on 2023/09/22.
//

import SwiftUI

struct GroupMemberFilterView: View {
    @Binding var currentViewIndex: Int
    
    var body: some View {
        ScrollView {
            Text("므엥")
        }
        Button {
            currentViewIndex += 1
        } label: {
            Text("다음")
        }
    }//: body
}

#Preview {
    GroupMemberFilterView(currentViewIndex: .constant(5))
}

//
//  GroupRecruitView.swift
//  CircleRecruitment
//
//  Created by KangHo Kim on 2023/09/22.
//

import SwiftUI

struct GroupRecruitView: View {
    @Binding var currentViewIndex: Int
    
    var body: some View {
        ScrollView {
            Text("모임원 누구")
        }
        Button {
            currentViewIndex += 1
        } label: {
            Text("다음")
        }
    }//: body
}

#Preview {
    GroupRecruitView(currentViewIndex: .constant(4))
}

//
//  GroupCheckFeeView.swift
//  CircleRecruitment
//
//  Created by KangHo Kim on 2023/09/22.
//

import SwiftUI

struct GroupCheckFeeView: View {
    @Binding var currentViewIndex: Int
    
    var body: some View {
        ScrollView {
            Text("참가비 있음?")
        }
        Button {
            currentViewIndex += 1
        } label: {
            Text("다음")
        }
    }//: body
}

#Preview {
    GroupCheckFeeView(currentViewIndex: .constant(7))
}

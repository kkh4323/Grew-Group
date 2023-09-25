//
//  GroupNameView.swift
//  CircleRecruitment
//
//  Created by KangHo Kim on 2023/09/22.
//

import SwiftUI

struct GroupNameView: View {
    @Binding var currentViewIndex: Int
    
    var body: some View {
        ScrollView {
            Text("이름")
        }
        Button {
            currentViewIndex += 1
        } label: {
            Text("다음")
        }
    }//: body
}

#Preview {
    GroupNameView(currentViewIndex: .constant(2))
}

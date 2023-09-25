//
//  GroupCategoryView.swift
//  CircleRecruitment
//
//  Created by KangHo Kim on 2023/09/22.
//

import SwiftUI

struct GroupCategoryView: View {
    @Binding var currentViewIndex: Int
    
    var body: some View {
        ScrollView {
            Text("카테고리")
        }
        Button {
            currentViewIndex += 1
        } label: {
            Text("다음")
        }
    }//: body
}

#Preview {
    GroupCategoryView(currentViewIndex: .constant(1))
}

//
//  GroupIsOnlineView.swift
//  CircleRecruitment
//
//  Created by KangHo Kim on 2023/09/22.
//

import SwiftUI

struct GroupIsOnlineView: View {
    @Binding var currentViewIndex: Int
    
    var body: some View {
        ScrollView {
            Text("온라인 여부")
        }
        Button {
            currentViewIndex += 1
        } label: {
            Text("다음")
        }
    }//: body
}

#Preview {
    GroupIsOnlineView(currentViewIndex: .constant(3))
}

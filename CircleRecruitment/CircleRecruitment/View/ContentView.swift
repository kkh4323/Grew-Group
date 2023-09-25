//
//  ContentView.swift
//  CircleRecruitment
//
//  Created by KangHo Kim on 2023/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    GroupCategoryView()
                } label: {
                    Text("모임 생성")
                }

            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

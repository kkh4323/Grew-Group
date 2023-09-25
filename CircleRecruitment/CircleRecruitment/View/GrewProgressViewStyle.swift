//
//  GroupProgressViewStyle.swift
//  CircleRecruitment
//
//  Created by KangHo Kim on 2023/09/25.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double((rgb >> 0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}

extension Color {
    static let grewMainColor = Color(hex: "#25C578")
}
                      
struct GrewProgressViewStyle: ProgressViewStyle {
    @Binding var value: Double
    @Binding var total: Double
    
    func makeBody(configuration: Configuration) -> some View {
        let offset = CGFloat(value) / 100
        return GeometryReader { geometry in
            VStack(spacing: -1) {
                HStack {
                    if value == 100 {
                        Text("")
                    } else {
                        Text("🌱")
                            .frame(width: CGFloat(geometry.size.width * offset + 15), alignment: .bottomTrailing)
                            .animation(.easeIn(duration: 0.15), value: value)
                    }
                    Spacer()
                    Text("🌳")
                        .frame(alignment: .bottomTrailing)
                }
                .padding(.horizontal, 1)
                ProgressView(configuration)
                    .accentColor(.grewMainColor)
                    .animation(.easeIn(duration: 1), value: value)
            }

        }
    }
}

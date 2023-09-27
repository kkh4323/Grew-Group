//
//  GroupNameView.swift
//  CircleRecruitment
//
//  Created by KangHo Kim on 2023/09/22.
//

import SwiftUI

struct GroupNameView: View {
    @State private var meetingTitle = ""
    @State private var isOnline = true
    @State private var isNextView = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 4) {
                Text("모임이름을 적어볼까요?")
                    .font(.title2).fontWeight(.semibold)
                    .padding(.bottom,30)
                HStack(spacing: 15) {
                    TextField("모임이름을 입력해주세요", text: $meetingTitle)
                        .keyboardType(.namePhonePad)
                }
                .padding(.leading,10)
                .padding(.bottom,10)
                .padding(.top,12)
                .overlay{
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.gray, lineWidth: 2)
                }
                .cornerRadius(5)
                
            }//: VStack
            .padding()
            VStack(alignment: .leading, spacing: 4) {
                Text("주로 어디에서 활동하세요?")
                    .font(.title2).fontWeight(.semibold)
                    .padding(.bottom,30)
                
                HStack(spacing: 15) {
                    Spacer()
                    
                    Button(action: { isOnline = true}, label: {
                        Text("온라인")
                            .font(.title2.bold())
                            .frame(width: 100,height: 50)
                            .foregroundColor(.white)
                            .background(isOnline ? Color.green : Color.gray)
                            .cornerRadius(10)
                    })
                    Spacer()
                    Button(action: {
                        isOnline = false
                        isNextView = true
                    }, label: {
                        Text("오프라인")
                            .font(.title2.bold())
                            .frame(width: 100,height: 50)
                            .foregroundColor(.white)
                            .background(isOnline ? Color.gray : Color.green)
                            .cornerRadius(10)
                    })
                    Spacer()
                }//: HStack
            }//: VStack
            .padding()
        }//: ScrollView
        .fullScreenCover(isPresented: $isNextView){
            LocationView()
        }
    }//: body
}

#Preview {
    GroupNameView()
}

//
//  GroupCheckFeeView.swift
//  CircleRecruitment
//
//  Created by KangHo Kim on 2023/09/22.
//

import SwiftUI

struct GroupCheckFeeView: View {
    @State private var isNeedFee = false
    @State private var showsAlert = false
    @State private var fee = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 4) {
                Text("활동비가 있나요?")
                    .font(.title2).fontWeight(.semibold)
                    .padding(.bottom,30)
                
                HStack(spacing: 15) {
                    Spacer()
                    // 있으면 금액 입력
                    Button(action: {
                        isNeedFee = true
                        
                    }, label: {
                        Text("있음")
                            .font(.title2.bold())
                            .frame(width: 100,height: 50)
                            .foregroundColor(.white)
                            .background(isNeedFee ? Color.green : Color.gray)
                            .cornerRadius(10)
                    })
                    Spacer()
                    Button(action: { isNeedFee = false }, label: {
                        Text("없음")
                            .font(.title2.bold())
                            .frame(width: 100,height: 50)
                            .foregroundColor(.white)
                            .background(isNeedFee ? Color.gray : Color.green)
                            .cornerRadius(10)
                    })
                    Spacer()
                }
            }.padding()
            if isNeedFee {
                VStack(alignment: .leading, spacing: 4) {
                    Divider()
                        .padding(.bottom,20)
                    HStack {
                        Image(systemName: "dollarsign.circle.fill")
                        Text("활동비")
                    }
                    TextField("활동비를 입력하세요", text: $fee)
                        .onChange(of: fee) { oldValue, newValue in
                            if Int(newValue) != nil {
                           
                        } else {
                            fee = ""
                        }
                    }
                    .keyboardType(.numberPad)
                        .padding(.leading,10)
                        .padding(.bottom,10)
                        .padding(.top,12)
                        .overlay{
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 2)
                        }
                        .cornerRadius(5)
                        .keyboardType(.numberPad)
                }
                .padding()
            }
        }//: ScrollView
    }//: body
}

#Preview {
    GroupCheckFeeView()
}

//
//  GroupInfoViewModel.swift
//  CircleRecruitment
//
//  Created by KangHo Kim on 2023/09/27.
//

import Foundation
import Firebase
import FirebaseFirestore

final class GroupInfoViewModel: ObservableObject {
    @Published var groupInfoViewModel: [GroupInfo] = []
    
    func addGroup(category: String, title: String, description: String, isOnline: Bool, gender: Gender, minimumAge: Int, maximumAge: Int, maximumMembers: Int, currentMembers: [String], isNeedFee: Bool) {
        
        let groupInfo: GroupInfo = GroupInfo(category: category, title: title, description: description, isOnline: isOnline, gender: gender, minimumAge: minimumAge, maximumAge: maximumAge, maximumMembers: maximumMembers, currentMembers: currentMembers, isNeedFee: isNeedFee)
        
        Task {
            do {
                // fireStore 모듈을 불러와서, Memo 컬렉션에 UUID를
                // String으로 바꿔준 값을 ID로 사용
                // .setData에 데이터를 Dictionary 형태로 입력
                try await Firestore.firestore().collection("Group")
                    .document(groupInfo.id)
                    .setData([
                        "category": groupInfo.category,
                        "title": groupInfo.title,
                        "description": groupInfo.description,
                        "isOnline": groupInfo.isOnline,
                        "gender": groupInfo.gender.rawValue,
                        "minimumAge": groupInfo.minimumAge,
                        "maximumAge": groupInfo.maximumAge,
                        "maximumMembers": groupInfo.maximumMembers,
                        "currentMembers": groupInfo.currentMembers,
                        "isNeedFee": groupInfo.isNeedFee,
                    ])
                
                groupInfoViewModel.append(groupInfo)
            } catch {
                print("firestore error")
            }
        }
    }
}

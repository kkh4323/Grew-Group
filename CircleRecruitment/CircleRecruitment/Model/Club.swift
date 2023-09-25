//
//  NewCircle.swift
//  CircleRecruitment
//
//  Created by KangHo Kim on 2023/09/21.
//

import Foundation

struct GroupInfo: Identifiable {
    let id: String = UUID().uuidString
    /// 카테고리
    let category: GroupCategory
    /// 모임 이름
    let meetingTitle: String
    /// 모임 설명
    var description: String
    /// 모임 썸네일 이미지
    var imageURL: String = "https://image.newsis.com/2023/05/25/NISI20230525_0001274814_web.jpg"
    /// 온라인, 오프라인 여부
    var isOnline: Bool
    /// 오프라인 주소
    var location: String = ""
    /// 활동 지역 (ex: 구로구, 수원시)
    var district: String {
        let locationArray = location.split(separator: " ")
        if locationArray.count > 1 {
            return String(locationArray[1])
        } else if isOnline == true {
            return "온라인"
        } else {
            return "장소 미정"
        }
    }
    /// 멤버 성별
    var gender: Gender
    /// 멤버 최소 나이
    var minimumAge: Int // pickerStyle(.wheel)
    /// 멤버 최대 나이
    var maximumAge: Int // pickerStyle(.wheel)
    /// 최대 인원 수
    var maximumMembers: Int // 키보드타입 number ,textField -> 정규식 검사 Int인지 확인
    /// 멤버
    var currentMembers: Array<String>
    /// 활동비 여부
    var isNeedFee: Bool
    /// 활동비
    var fee: Int = 0
}

/// 성별
enum Gender: String, CaseIterable {
    case any = "누구나"
    case female = "여자"
    case male = "남자"
}

/// 모임 1차 카테고리
enum GroupCategory: String, CaseIterable {
    case cultureAndArts = ""
    case hobby = " "
    case foodAndDrink = "음식"
}

/// 모임 2차 카테고리 - 문화, 예술
enum CultureAndArts: String, CaseIterable {
    case movie = "영화"
    case book = "독서"
    case musical = "뮤지컬"
}

/// 모임 2차 카테고리 - 음식
enum FoodAndDrink: String,CaseIterable {
    case restaurant = "맛집"
    case cafe = "카페"
    case wine = "와인"
    case beer = "맥주"
    case traditionalDrink = "전통주"
    case whiskey = "위스키"
    case coffee = "커피"
    case dessert = "디저트"
    case vegan = "비건"
    case fineDining = "파인다이닝"
}

/// 모임 2차 카테고리 - 취미
enum Hobby: String,CaseIterable {
    case photography = "사진"
    case boardGames = "보드게임"
    case dance = "댄스"
    case volunteering = "봉사활동"
    case singing = "노래"
    case musicListening = "음악감상"
    case gaming = "게임"
    case comics = "만화"
    case pets = "반려동물"
}

enum PartyAndDating: String,CaseIterable {
    case party = "파티"
    case dating = "소개팅"
}

enum Travel: String,CaseIterable {
    case domestic = "국내여행"
    case international = "해외여행"
    case camping = "캠핑"
    case picnic = "피크닉"
    case drive = "드라이브"
}

enum SelfDevelopment: String,CaseIterable {
    case reading = "독서"
    case study = "스터디"
    case sideProjects = "사이드프로젝트"
}

enum Neighborhood: String,CaseIterable {
    case peers = "또래"
    case localCommunity = "동네"
}

enum FinanceAndInvesting: String,CaseIterable {
    case investing = "재테크"
    case realEstate = "부동산"
    case entrepreneurship = "창업"
    case stocks = "주식"
}

enum Language: String,CaseIterable {
    case english = "영어"
    case chinese = "중국어"
    case japanese = "일본어"
}

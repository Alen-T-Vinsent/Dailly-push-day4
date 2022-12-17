//
//  OnBoardingItem.swift
//  on boarding app - Day 3
//
//  Created by Apple  on 17/12/22.
//

import SwiftUI
import Lottie

//MARK: OnBoarding Item Model
struct OnboardingItem:Identifiable,Equatable{
    var id:UUID = .init()
    var title:String
    var subTitle:String
    var lottieView: LottieAnimationView = .init()
}



//
//  OnboardingScreen.swift
//  on boarding app - Day 3
//
//  Created by Apple  on 17/12/22.
//

import SwiftUI
import Lottie

struct OnboardingScreen: View {
    
    //MARK: onboarding slides model data
    @State var onboardingItem:[OnboardingItem] = [
        .init(title: "Request Pickup", subTitle: "Tell us who you are  sending it to , what you're sending and when it's best  to pickup the package and we will pick it up at the most convenient time",lottieView: .init(name:"Pickup",bundle: .main)),
        
            .init(title: "Track Delivery", subTitle: "The best part starts when our courier is on the way to your locaion as you will get real time notifications as to the exact location of the courier ",lottieView: .init(name:"Transfer",bundle: .main)),
        
            .init(title: "Recieve Package", subTitle: "The jouney ends when your packaege get to it's location. Get notified immediately your package is recieved  at its intended location ",lottieView: .init(name:"Delivey",bundle: .main)),
        
    ]
    var body: some View {
        GeometryReader{
            let size = $0.size
            HStack(spacing:0){
                ForEach(onboardingItem){ item in
                    VStack {
                        HStack {
                            Button {
                                print("back clicked")
                            } label: {
                                Text("back")
                            }
                            
                            Spacer(minLength: 0)
                             
                            Button {
                                print("skip clicked")
                            } label: {
                                Text("skip")
                            }


                        }
                        .tint(Color.green)
                        .fontWeight(.bold)
                        //Movable slides
                        VStack{
                            Text(item.title)
                                .font(.title.bold())
                            Text(item.subTitle)
                                .font(.system(size:14))
                            .multilineTextAlignment(.center)
                            
                            
                        }
                    }
                    .padding(15)
                    .frame(width: size.width , height: size.height)
                }
            }
            .frame(width: size.width * CGFloat(onboardingItem.count),alignment: .leading)
        }
       
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

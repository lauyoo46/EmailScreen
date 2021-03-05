//
//  ContentView.swift
//  EmailConfirmScreen
//
//  Created by Laurentiu Ile on 04.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
        
            LinearGradient(gradient: Gradient(colors: [Color.init(0x141414), Color.init(0x1C1C1C)]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                Text("QuantoPay")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .padding(.top, 20)
                Spacer()
                
                EmailConfirmView()
                Spacer()
                Spacer()
            }
            
        }
    }
}

struct EmailConfirmView: View {
    var body: some View {
        
        
        VStack {
           
            VStack{
                Spacer()
                Text("Please confirm your e-mail address")
                    .foregroundColor(.white)
                    .font(.custom("AvenirNext", size: 20))
                    .frame(width: 182, height: 60, alignment: .center)
                    .multilineTextAlignment(.center)
                Spacer()
                
                Text("We've sent a confirmation link to belatrix_lestrange@hotmail.com")
                    .foregroundColor(Color.init(0xEEEEEE))
                    .padding(.bottom, 20)
                
                Text("Wrong email?")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .underline()
                Spacer()
                
            }
            
            VStack {
                Button(action: {
                    print("Open email app pressed")
                }, label: {
                    Text("Open email app")
                        .foregroundColor(.white)
                })
                .frame(width: 248, height: 56, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [Color.init(0x4136F1), Color.init(0x8743FF)]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(20.0)
                Spacer()
                
                Text("Resend email")
                    .foregroundColor(.white)
                    .underline()
                    .padding(.bottom, 10)
                Spacer()
                
            }
            .frame(width: 318, height: 120, alignment: .center)
            
        }
        .frame(width: 318, height: 375, alignment: .center)
        .background(Color.init(0x252525))
        .cornerRadius(30.0)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    init(_ hex: UInt32, opacity:Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}

let hexColor:(UInt32) -> (Color) = {
    return Color($0)
}

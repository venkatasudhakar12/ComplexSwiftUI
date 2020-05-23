//
//  ContentView.swift
//  ComplexSwiftUI
//
//  Created by venkata sudhakar on 23/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct ProfileView : View {
    
    var body: some View {
        ScrollView(showsIndicators:false) {
            VStack(spacing: 30) {
                Image(systemName: "ant")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .clipShape(Circle())
                    .scaleEffect(1.3)
            }
            ZStack{
                Image("photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .overlay(Circle().strokeBorder(Color.purple, lineWidth: 5))
                    .shadow(color: .red, radius: 5, x: 2, y: 2)
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .offset(x: -60, y: 40)
                    .blendMode(.multiply)
                    .colorMultiply(.green)
                    .saturation(0.2)
                    .contrast(0.2)
            }
            Text("Venkata Sudhakar").modifier(CustomModifier())
                .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.blue, lineWidth: 5))
            Text("iOS Developer")
                .font(.largeTitle)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
                .background(Color.red)
                .cornerRadius(10)
                .padding()
                .background(Color.orange)
                .cornerRadius(10)
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)
            HStack{
                Text("let's do project")
                    .font(.headline)
                    .rotationEffect(.degrees(-90))
                VStack(alignment: .leading) {
                    Text("Freelance")
                        .font(.headline)
                    .offset(y: 20)
                        .padding(.bottom, 20)
                        .opacity(0.7)
                    Text("Team Lead")
                        .font(.largeTitle)
                        .padding(7)
                        .border(Color.red, width: 4)
                }
                
            }.padding()
            Rectangle()
            .frame(width: 100, height: 60)
                .foregroundColor(.red)
            .mask(Image(systemName: "ant")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .blur(radius: 1)
                )
            
        }
    .padding()
        
    }

    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct CustomModifier:ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.red)
            .padding()
    }
}

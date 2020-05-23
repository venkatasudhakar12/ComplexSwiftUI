//
//  StartView.swift
//  ComplexSwiftUI
//
//  Created by venkata sudhakar on 23/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct MasterView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color.red
            NavigationLink(destination: DetailView()) {
                VStack{
                Image(systemName: "hourglass.bottomhalf.fill")
                    .font(.largeTitle)
                    Text("Start")
                    
                }
            }
            .foregroundColor(.white)
        .navigationBarTitle("Master")
            
        }
        .edgesIgnoringSafeArea(.all)
             }
    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}

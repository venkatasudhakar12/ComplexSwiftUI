//
//  DetailView.swift
//  ComplexSwiftUI
//
//  Created by venkata sudhakar on 23/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    @State var isProfilePresented:Bool = false
    var body: some View {
        ZStack{
            Color.gray
            VStack {
                Text("Sudhakar")
            }
        }
        .navigationBarTitle("Detail",displayMode: .inline)
        .navigationBarItems(trailing:
//            Button(action: {
//                //
//                self.isProfilePresented.toggle()
//            }, label: {
//                Image(systemName: "person")
//            })
            Button(action: {
                self.isProfilePresented.toggle()
            }, label: {
               Image(systemName: "person")
            }).sheet(isPresented: $isProfilePresented, content: {
                ProfileView()
            })
            
        )
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

//
//  Splash.swift
//  TEST
//
//  Created by MacBook Pro on 4/25/21.
//

import SwiftUI

struct Splash: View {
    @Binding var splashShow: Bool
    @Binding var loginShow: Bool
    var body: some View {
        ZStack {
            //BG
            Color(.yellow)
                .ignoresSafeArea()
            VStack {

                VStack {
                    Image("Logo")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    
                    Button(action: {
                        dismiss()
                    }, label: {
                        Text("Register")
                    })
                    .padding()
                    .foregroundColor(.white)
                    .background(Color(.black))
                    .cornerRadius(10.0)
                    .transition(.move(edge: .bottom))
                }.padding()
                Spacer()
                    
            VStack{
                RoundedRectangle(cornerRadius: 15.0)
                    .fill(Color(.gray))
                    .frame(width: 250, height: 50)
                RoundedRectangle(cornerRadius: 15.0)
                        .fill(Color(.gray))
                        .frame(width: 250, height: 50)
                Button(action: {
                    loginAc()
                }, label: {
                    Text("Login")
                })
                .padding()
                .foregroundColor(.white)
                .background(Color(.black))
                .cornerRadius(10.0)
                
            }.padding()

            }
        }
    }
    func dismiss() {
        withAnimation{
            splashShow.toggle()
        }
    }
    
    func loginAc() {
        withAnimation{
            loginShow.toggle()
        }
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash(splashShow: Binding.constant(true), loginShow: Binding.constant(false))
    }
}

//
//  ContentView.swift
//  TEST
//
//  Created by MacBook Pro on 4/25/21.
//

import SwiftUI

struct ContentView: View {
    @State private var splashShow = true
    @State private var loginShow = false
    var body: some View {
        Group{
            
            if loginShow && splashShow{
                Home()
            }else
            if splashShow {
                Splash(splashShow: $splashShow, loginShow: $loginShow)

                
            } else{
                RegView()
                
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

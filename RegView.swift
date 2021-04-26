//
//  RegView.swift
//  TEST
//
//  Created by MacBook Pro on 4/25/21.
//

import SwiftUI

struct RegView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBlue)
                .ignoresSafeArea()
            VStack {
                Button(action: {
                }, label: {
                    Text("Button")
                })
                .foregroundColor(.pink)
                Text("Reg")
            }
        }
    }
}

struct RegView_Previews: PreviewProvider {
    static var previews: some View {
        RegView()
    }
}

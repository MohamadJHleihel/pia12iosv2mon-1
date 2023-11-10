//
//  TabAView.swift
//  pia12iosv2mon-1
//
//  Created by Mohamad Hleihel on 2023-11-09.
//

import SwiftUI

struct TabAView: View {
    
    @State private var mynumber = 0
    
    @State var fruit : String
    
    
    var body: some View {
        VStack{
            Text("Hej A")
            
            Spacer()
            
            Text(fruit)
                .font(.largeTitle)
            Spacer()
            
            Button(action: {
                mynumber = mynumber + 1
            }, label: {
                Text(String(mynumber))
            })
            
            Text("jaaaa")
        }
    }
}

#Preview {
    TabAView(fruit: "kiwi")
}

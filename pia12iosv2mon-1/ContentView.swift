//
//  ContentView.swift
//  pia12iosv2mon-1
//
//  Created by Mohamad Hleihel on 2023-11-09.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab = 0
    
    
    
    var body: some View {
        VStack {
            HStack{
                
                Button(action: {
                    selectedTab = 0
                }, label: {
                    Text("A")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity,maxHeight: .infinity)
                        .background(selectedTab == 0 ? Color.red : Color.gray)
                })
                
                Button(action: {
                    selectedTab = 1
                }, label: {
                Text("B")
                    .foregroundColor(.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
                    .background(selectedTab == 1 ? Color.blue : Color.gray)
                })
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                Text("C")
                    .foregroundColor(.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
                    .background(dosomecolor(tabnumber: 2))
                })
            }
            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
      
           
            
            Spacer()
            if selectedTab == 0 {
                TabAView(fruit: "loz")
            }
            if selectedTab == 1 {
                Text("B är vald")
                    .font(.largeTitle)
            }
            if selectedTab == 2 {
                Text("C är vald")
                    .font(.largeTitle)
            }
           
            
            
            Spacer()
        }
       
    }
    
    func dosomecolor (tabnumber : Int) -> Color {
        if tabnumber == selectedTab {
            return Color.red
        }
        return Color.gray
    }
    
    func dofunstuff(){
        print("fun")
        print("we are done")
    }
}
#Preview {
    ContentView()
}

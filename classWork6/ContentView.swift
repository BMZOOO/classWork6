//
//  ContentView.swift
//  classWork6
//
//  Created by Batool  Jawaheri  on 1/5/21.
//

import SwiftUI


struct ContentView: View {
    @State var name: String = ""
    
    var body: some View {
        
           
            NavigationView {
                VStack{
        Text("my name is : Batool Jawaheri")
            .padding()
                    
       
            
            NavigationLink(
                destination: BMICal(),
                label: {
                     Text("Press")
                         .bold()
                         .foregroundColor(.white)
                         .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                         .background(Color.blue)
                         .cornerRadius(15)
                         .clipShape(Capsule())
                    })
            }.padding()
            }
            }
        }
        
    
    




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

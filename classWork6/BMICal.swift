//
//  BMICal.swift
//  classWork6
//
//  Created by Batool  Jawaheri  on 1/5/21.
//

import SwiftUI

struct BMICal: View {
    
    @State var height: String = ""
    @State var weight: String = ""
    @State var BMI: String = ""

    var body: some View {
       
        VStack {
        Text("مرحبا بك في حاسبه ال BMI ")
            .bold()
            .font(.title)
            TextField("الطول بالمتر",text: $height)
                .modifier(BMIModifier())
            
            TextField("الوزن بالكيلو قرام",text: $weight)
                .modifier(BMIModifier())
            
            let h = Double(height) ?? 1
            let w = Double(weight) ?? 1
            
            Button(action:{
                    BMI = String ( w / ( h * h ))
            }
                , label: {
                Text("احسب")
                    .foregroundColor(.white)
                    .padding(.horizontal,40)
                    .padding(.vertical,10)
                    .background(Color.blue)
                    .clipShape(Capsule())
                   
            })
            
            Text("BMI")
                .foregroundColor(.black)
                .padding(.horizontal,40)
                .padding(.vertical,10)
                .font(.largeTitle)
            Text("\(BMI)")
                .foregroundColor(.black)
                .padding(.horizontal,40)
                .padding(.vertical,10)
                .font(.largeTitle)
                
            
        }
        
            
    }
}

struct BMIModifier: ViewModifier { // a modifier to make the code simpler
    
    func body(content: Content)-> some View {
        content
            .multilineTextAlignment(.trailing)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
    }
}



struct BMICal_Previews: PreviewProvider {
    static var previews: some View {
        BMICal()
    }
}

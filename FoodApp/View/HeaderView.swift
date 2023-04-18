//
//  HeaderView.swift
//  FoodApp
//
//  Created by Sampel on 12/04/2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            HStack{
                VStack {
                    Text("The fastest in")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    .font(.title2)
                    
                    Text("food")
                        .foregroundColor(.red)
                        .fontWeight(.semibold)
                    .font(.title)
                   
                    
                    Text("Get started")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .frame(width: 100, height: 30, alignment: .center)
                        .background(.red)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        
                    
                }
                Spacer()
                
                Image("backgroudImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(10)
              
            }
        }
        .frame(width: 350, height: 150, alignment: .center)
        .background(
            Color.black
        
        )
        .cornerRadius(10)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}

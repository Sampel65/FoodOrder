//
//  RestaurantsView.swift
//  FoodApp
//
//  Created by Sampel on 13/04/2023.
//

import SwiftUI

struct DishFactView: View {
    var body: some View {
        ZStack {
            Text("Spaghetti is a great source of carbohydrates, providing energy to the body. It also contains some fiber, vitamins, and minerals such as folate, iron, and magnesium. Additionally, spaghetti made from whole wheat is a healthier option as it contains more fiber and nutrients than regular spaghetti made from refined flour.")
                .padding(.leading, 55)
                .padding(.trailing, 10)
                .padding(.vertical, 3)
                
                .frame(width: 300, height: 145, alignment: .center)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color.black, Color.black, Color.black]), startPoint: .leading, endPoint: .trailing
                )
        )
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
            .foregroundColor(Color.white)
            
            Image("image2")
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                
                    Circle()
                        .fill(Color.white)
                        .frame(width:  74, height: 74, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.black, Color.black]), startPoint: .trailing, endPoint: .leading))
                        .frame(width: 82, height: 82, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(Color.white)
                        .frame(width: 90, height: 90, alignment: .center)
                )
                .offset(x: -150)
                
                
        }
        
        
       
        
    }
}

struct RestaurantsView_Previews: PreviewProvider {
    static var previews: some View {
        DishFactView()
            .previewLayout(.fixed(width: 400, height: 220))
    }
}

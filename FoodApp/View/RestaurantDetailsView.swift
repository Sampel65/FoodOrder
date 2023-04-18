//
//  RestaurantDetailsView.swift
//  FoodApp
//
//  Created by Sampel on 13/04/2023.
//

import SwiftUI

struct RestaurantDetailsView: View {
    // MARK : PROPERTIES
    let restaurant : Restaurant
    var body: some View {
        ZStack{
            VStack{
                ZStack {
                    Image(restaurant.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 640, height: 300, alignment: .center)
                    .edgesIgnoringSafeArea(.all)
                    
                    Text(restaurant.name)
                        .font(.system(size: 30, design: .serif))
                        .foregroundColor(.white)
                        .padding(.vertical,0)
                        .padding(.horizontal, 20)
                        .frame(width: 281, height: 105)
                        .background(
                            Color.black.opacity(0.5)
                        )
                }
                VStack {
                    Text(restaurant.name)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                    .foregroundColor(Color.black)
               
                HStack {
                    Image(systemName: "location")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 20, alignment: .leading)
                    Text(restaurant.location)
                    }
                    HStack {
                        Image(systemName: "fork.knife")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 20, alignment: .leading)
                        Text("frencch")
                            .font(.system(size: 25, design: .rounded))
                            
                        
                        }
                    HStack {
                        Image(systemName: "heart.rectangle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 20, alignment: .leading)
                        Text(restaurant.price)
                        }
                    
                    HStack(alignment: .center, spacing: 12){
                        HStack(alignment: .center, spacing: 2){
                            Image(systemName: "person.2")
                                .foregroundColor(.red)
                            Text("Serves 4")
                        }
                        HStack(alignment: .center, spacing: 2){
                            Image(systemName: "clock")
                                .foregroundColor(.red)
                            Text("Prep :  4")
                        }
                        HStack(alignment: .center, spacing: 2){
                            Image(systemName: "flame")
                                .foregroundColor(.red)
                            Text("Cooking : 5")
                        }
                    }
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding()
                    
                    HStack {
                        Text("BOOK A TABLE")
                            .foregroundColor(.white)
                            .font(.system(size: 20, design: .serif))
                            .frame(width: 150, height: 50, alignment: .center)
                            .background(Color.black)
                        .cornerRadius(16)
                        
                        Text("GET A FOOD")
                            .foregroundColor(.white)
                            .font(.system(size: 20, design: .serif))
                            .frame(width: 150, height: 50, alignment: .center)
                            .background(Color.black)
                        .cornerRadius(16)
                    }
                }
                .padding(.vertical, 0)
                    Spacer()
            }
        }
        .navigationBarBackButtonHidden(false)
    }
}

struct RestaurantDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailsView(restaurant: restaurant[0])
    }
}

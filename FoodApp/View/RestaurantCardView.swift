//
//  RestaurantDetailsView.swift
//  FoodApp
//
//  Created by Sampel on 13/04/2023.
//

import SwiftUI

struct RestaurantCardView: View {
    @ObservedObject var viewModel = ResturantViewModel()
    let restaurant : Restaurant
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 0) {
            // RESTARANT DETAILS
            Image(restaurant.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                            .shadow(color: Color.white, radius: 2, x: 0, y: 0)
                            .padding(.trailing, 20)
                            .padding(.top, 22)
                            
                            Spacer()
                        }
                       
                          
                    }
                )
            
            VStack(alignment: .leading, spacing: 12) {
                // TITLE
                Text(restaurant.name)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    
                // HEALINE
                
                Text("Best Lebanese sea food restaurant in Dubai")
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                 
                //PRICE
                //RATE
                HStack(alignment: .center, spacing: 5) {
                    Image(systemName: "star.fill")
                        .font(.body)
                    .foregroundColor(Color.yellow)
                    Image(systemName: "star.fill")
                        .font(.body)
                    .foregroundColor(Color.yellow)
                    Image(systemName: "star.fill")
                        .font(.body)
                    .foregroundColor(Color.yellow)
                    Image(systemName: "star.fill")
                        .font(.body)
                    .foregroundColor(Color.yellow)
                    Image(systemName: "star.fill")
                        .font(.body)
                    .foregroundColor(Color.yellow)
                    
                    Spacer()
                    
                    Text(restaurant.price)
                        .padding()
                }
                
                // COOKINNG
                HStack(alignment: .center, spacing: 12){
                    HStack(alignment: .center, spacing: 2){
                        Image(systemName: "person.2")
                        Text("Serves 4")
                    }
                    HStack(alignment: .center, spacing: 2){
                        Image(systemName: "clock")
                        Text("Prep :  4")
                    }
                    HStack(alignment: .center, spacing: 2){
                        Image(systemName: "flame")
                        Text("Cooking : 5")
                    }
                }
                .font(.footnote)
                .foregroundColor(.gray)
                
            }
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black, radius: 8, x: 0, y: 0)
        .onAppear {
            viewModel.loadData()
        }
    }
}

struct RestaurantCardView_Previews: PreviewProvider {
    static let restaurants : [Restaurant] = Bundle.main.decode("restaurant.json")
    static var previews: some View {
        RestaurantCardView(restaurant: restaurants[0])
            .previewLayout(.sizeThatFits)
           
    }
}

//
//  ContentView.swift
//  FoodApp
//
//  Created by Sampel on 12/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    @State private var IsTapped = false
    
    var filteredRestaurants: [Restaurant] {
            if searchText.isEmpty {
                return restaurants
            } else {
                return restaurants.filter { restaurant in
                    restaurant.name.localizedCaseInsensitiveContains(searchText)
                }
            }
        }
    
    
    
    let restaurants : [Restaurant] =
        Bundle.main.decode("restaurant.json")
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 4){
                    
                        SearchBar(text: $searchText)
                        // Navigation View
                        CustomNavigationView()
                        
                        // SEARCH BAR
                        // header
                        DeatailsHeaderView()
                        // Favoite dishes
                        Text("Avaailable Dishes")
                            .fontWeight(.bold)
                            .modifier(TitleModifer())
                        DishesView()
                            .frame(width: 350, height: 200, alignment: .center)
                            .padding()
                        
                       
                        DishFactView()
                        Text("Available Restaurants")
                            .fontWeight(.bold)
                            .modifier(TitleModifer())
                    
                    
                        ForEach(filteredRestaurants) { restaurant in
                            NavigationLink(destination: RestaurantDetailsView(restaurant: restaurant), isActive: $IsTapped) {
                                RestaurantCardView(restaurant: restaurant)
                                    .frame(maxWidth : 350)
                                    .padding()
                            }
                            
                            
                        }
                        
                        
                    
                        VStack(alignment: .center, spacing: 20) {
                            Spacer()
                            
                            Text("All About Food")
                                .fontWeight(.bold)
                            Text("Get your favorite,and delicious dishes here at your doorstep")
                                .font(.system(.body, design: .serif))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.gray)
                        }
                        .frame(maxWidth : 640 )
                        .padding()
                        .padding(.bottom, 85)
                        
                        
                }
            }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct TitleModifer : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color.black)
            .padding(8)
    }
}

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            TextField("Search for a restaurant", text: $text)
                .foregroundColor(.gray)
                .frame(width: 250, height: 20, alignment: .center)
        }
        .padding()
        .background(Color(.systemGray5))
        .cornerRadius(10)
        .padding(.horizontal)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

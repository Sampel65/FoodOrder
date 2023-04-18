//
//  HomeView.swift
//  FoodApp
//
//  Created by Sampel on 12/04/2023.
//

import SwiftUI

struct HomeView: View {
    // MARK- PROPERTIES
    @State var postateAnimation : Bool = false

    
    var body: some View {
        ZStack{
            VStack{
                Image("backgroudImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 400, alignment: .center)
                    .shadow(color: .red, radius: 12, x: 0, y:  8)
                
                
                    Text("Spicy Foods")
                        .font(.system(size: 60, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.accentColor)
                    Spacer()
                // MARK - VSTACK
                VStack{
                    Text("The Fastest in")
                        .font(.title2)
                        .foregroundColor(.black)
                        .fontWeight(.black)
                    
                    HStack {
                        Text("Food")
                            .font(.title2)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                        
                        Text("Delivery")
                            .font(.title2)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .foregroundColor(.red)
                        

                    }
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Get started")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .frame(width: 200, height: 50, alignment: .center)
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                    
                } // : VSTACK
                
                Spacer()
            }
            
        }
        .background(
            Color.white)
        }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

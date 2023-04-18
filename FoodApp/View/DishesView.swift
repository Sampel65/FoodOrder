//
//  DishesView.swift
//  FoodApp
//
//  Created by Sampel on 13/04/2023.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4, content: {
            VStack(alignment: .leading, spacing: 4) {
                // IST COLUMN
                HStack {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toast")
                }
                Divider()
                HStack {
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tacos")
                }
                Divider()
                HStack {
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salad")
                }
                Divider()
                HStack {
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Halfavo")
                }
                
            }
            
            // 2nd Column
            VStack(alignment: .center, spacing: 4) {
                HStack {
                    Divider()
                }
                Image (systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }
            
            // 3rc Column
            
            VStack(alignment: .trailing , spacing: 4) {
                HStack() {
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("Sanwiches")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("Smoothies ")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                }
            }
        })
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
        .padding()
        .frame(maxHeight : 220)
    }
}

struct IconModifier : ViewModifier {
    func body(content: Content) -> some View {
         content
            .frame(width: 42 , height: 42, alignment: .center)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.sizeThatFits)
    }
}

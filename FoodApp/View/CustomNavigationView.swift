//
//  NavigationView.swift
//  FoodApp
//
//  Created by Sampel on 12/04/2023.
//

import SwiftUI

struct CustomNavigationView: View {
    @State var expand = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 30, content: {
            if !self.expand {
            Button(action: {}, label: {
                
                Image (systemName: "person")
                    .font(.title)
                    .foregroundColor( .black)
            })
            
            Text("Spicy delicous foods")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.black)
                
            }
            Button(action: {}, label: {
                ZStack {
                    HStack {
                        Image (systemName:  "cart")
                            .font(.title)
                        .foregroundColor(.black )
    
                        Image(systemName: "location")
                            .font(.title)
                        .foregroundColor(.black )
                    
                    }
                }
            })
            
        })
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView()
            .previewLayout(.sizeThatFits)
    }
}

//
//  CategoriesView.swift
//  FoodApp
//
//  Created by Sampel on 12/04/2023.
//

import SwiftUI

struct CategoriesView: View {
   
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true, content: {
            
            HStack{
                Image("")
                Text("")
            }
        })
        
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

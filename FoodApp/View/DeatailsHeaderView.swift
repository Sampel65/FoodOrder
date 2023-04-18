//
//  DeatailsHeaderView.swift
//  FoodApp
//
//  Created by Sampel on 12/04/2023.
//

import SwiftUI

struct DeatailsHeaderView: View {
    
    //MARK - PROPERTIES
    
    @State private var showHeadline : Bool = false
    
    var slidedAnimation : Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    var body: some View {
        ZStack {
            Image("image2")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .top, spacing: 0) {
                
                Rectangle()
                    .fill(Color.white)
                    .frame(width : 4)
                VStack(alignment: .leading, spacing: 6) {
                    Text("Spicy Foods")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    Text("Spagetti is a delicious food with  a lot of nutritinal values that aid healthy growth and developement of man")
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.white)
                        .shadow( radius: 3)
                }
                .padding(.vertical,0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(
                    Color.black.opacity(0.5)
                )
            }
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x : -66, y: showHeadline ?  75  : 220)
            .animation(slidedAnimation)
            .onAppear(perform: {
                self.showHeadline.toggle()
            }
        )}
        .frame(width: 480, height: 320, alignment: .center)
    }
}

struct DeatailsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DeatailsHeaderView()
            .previewLayout(.sizeThatFits)
    }
}

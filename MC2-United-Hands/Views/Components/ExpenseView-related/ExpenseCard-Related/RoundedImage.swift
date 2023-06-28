//
//  RoundedImage.swift
//  MC2-United-Hands
//
//  Created by Leonard Theodorus on 22/06/23.
//

import SwiftUI
struct RoundedImage: View {
    @State var expenseImage : UIImage = UIImage(named: "CatExpenses")!
    var body: some View {
        Image(uiImage: expenseImage)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .frame(width: 80, height: 80)
            .rotationEffect(.degrees(90))
            .accessibilityLabel("image")
        
        
    }
}

struct RoundedImage_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImage(expenseImage: UIImage(named: "CatExpenses")!)
    }
}

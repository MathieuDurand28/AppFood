//
//  MeatChangeImage.swift
//  FoodApp
//
//  Created by Mathieu Durand on 07/12/2023.
//

import SwiftUI

struct MeatChangeImage: View {
    @Binding var MeatImage: String
    
    var body: some View {
        HStack {
            Spacer()
            Image(MeatImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .padding()
            Spacer()
        }
    }
}

#Preview {
    MeatChangeImage(MeatImage: .constant("Boeuf"))
}

//
//  MeatPicker.swift
//  FoodApp
//
//  Created by Mathieu Durand on 07/12/2023.
//

import SwiftUI

struct MeatPicker: View {
    @Binding var meat: [String]
    @Binding var index: Int
    @Binding var meatImage: String
    
    var body: some View {
        let binding = Binding<Int>(
            get: { self.index },
            set: {
                self.index = $0
                self.meatImage = meat[index]
            })
        
        Picker("Choississez un genre", selection: binding) {
            ForEach(0..<meat.count, id: \.self) { i in
                Text(self.meat[i]).tag(i)
            }
        }.pickerStyle(.segmented)
    }
}

#Preview {
    MeatPicker(meat: .constant(["a","b","c"]), index: .constant(0), meatImage: .constant("Poisson"))
}

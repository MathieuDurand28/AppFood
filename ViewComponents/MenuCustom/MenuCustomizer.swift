//
//  MenuCustomizer.swift
//  FoodApp
//
//  Created by Mathieu Durand on 07/12/2023.
//

import SwiftUI

struct MenuCustomizer: View {
    @Binding var drink: [String]
    @Binding var fries: Bool
    @Binding var index: Int
    @Binding var drinkName: String
    
    var body: some View {

        let binding = Binding<Int>(
            get: { self.index },
            set: {
                self.index = $0
                self.drinkName = drink[index]
            })
        
        Picker("\(drinkName)", selection: binding) {
            ForEach(0..<drink.count, id: \.self) { i in
                Text(self.drink[i]).tag(i)
            }
        }
        .tint(.gray)
        
        HStack {
            Image("fries")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
            Text((fries ? "Grande" :"Petite"))
            Toggle("",isOn: $fries)
                .tint(.orange)
        }
            
        
    }
}

#Preview {
    MenuCustomizer(drink: .constant(["Coca","Fanta"]), fries: .constant(true), index: .constant(0), drinkName: .constant("Coca"))
}

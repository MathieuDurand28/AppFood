//
//  ToggleMEnu.swift
//  FoodApp
//
//  Created by Mathieu Durand on 07/12/2023.
//

import SwiftUI

struct ToggleMenu: View {
    @Binding var toggleMenu: Bool
    
    var body: some View {
        HStack{
            Toggle((toggleMenu ? "Menu" : "Burger Simple"), isOn: $toggleMenu)
        }
        
    }
}

#Preview {
    ToggleMenu(toggleMenu: .constant(true))
}

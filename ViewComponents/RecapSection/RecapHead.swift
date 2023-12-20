//
//  RecapView.swift
//  FoodApp
//
//  Created by Mathieu Durand on 07/12/2023.
//

import SwiftUI

struct RecapHead: View {
    @Binding var ordered: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button("Je commande") {
                ordered = true
            }.buttonStyle(.borderedProminent)
                .tint(.green)
            Spacer()
        }
    }
}

#Preview {
    RecapHead(ordered: .constant(false))
}

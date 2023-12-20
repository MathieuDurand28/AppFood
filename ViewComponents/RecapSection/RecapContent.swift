//
//  RecapContent.swift
//  FoodApp
//
//  Created by Mathieu Durand on 07/12/2023.
//

import SwiftUI

struct RecapContent: View {
    @Binding var recap: String
    
    var body: some View {
        TextEditor(text: $recap)
            .frame(minHeight: 250)
    }
}

#Preview {
    RecapContent(recap: .constant("OK"))
}

//
//  Information.swift
//  FoodApp
//
//  Created by Mathieu Durand on 07/12/2023.
//

import SwiftUI

struct Information: View {
    @Binding var name: String
    @Binding var phone: String
    @Binding var hour: Date
    @FocusState var focusePhone: Bool
    
    
    var body: some View {
        TextField("Entrez votre nom", text: $name)
        HStack {
            TextField("Numéro de téléphone", text: $phone)
                .keyboardType(.phonePad)
                .focused($focusePhone)
            Button(action: {
                focusePhone = false
            }, label: {
                Text("OK")
            })
        }
        DatePicker("Heure", selection: $hour,
                   displayedComponents: .hourAndMinute)
            .datePickerStyle(.automatic)
            
    }
}

#Preview {
    Information(name: .constant("Mathieu"), phone: .constant("0025"), hour: .constant(Date()))
}

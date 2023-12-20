//
//  BurgerCustom.swift
//  FoodApp
//
//  Created by Mathieu Durand on 07/12/2023.
//

import SwiftUI

struct BurgerCustom: View {
    @Binding var baconSlice: Int
    @Binding var pickleSlice: Int
    @Binding var ketchup: Bool
    @Binding var mustard: Bool
    @Binding var slider: Double
    
    var body: some View {
        HStack {
            Image("bacon")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
            Stepper("Nombre de tranches: \(baconSlice)", value: $baconSlice, in: 0...10)
                .font(.headline)
        }
        
        
        HStack {
            Image("gherkin")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
            Stepper("Nombre de tranches: \(pickleSlice)", value: $pickleSlice, in: 0...10)
                .font(.headline)
        }
        
        
        HStack {
            Image("ketchup")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
            Toggle("ketchup", isOn: $ketchup)
                .tint(.red)
        }
        
        
        HStack {
            Image("mustard")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
            Toggle("mustard", isOn: $mustard)
                .tint(.yellow)
        }
        
        HStack {
            Spacer()
            Image("cheese")
                .resizable()
                .scaledToFit()
                .frame(width: 30)
            Text("\(Int(slider))% de bonheur en plus")
            Spacer()
        }
        
        Slider(value: $slider, in: 0...100) {
            Text("Je suis content à \(slider)%")
        } minimumValueLabel: {
            Text("0%")
        } maximumValueLabel: {
            Text("100%")
        }
        
        
    }
}

#Preview {
    BurgerCustom(baconSlice: .constant(1), pickleSlice: .constant(1), ketchup: .constant(true), mustard: .constant(true), slider: .constant(45))
}

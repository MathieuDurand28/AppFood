//
//  ContentView.swift
//  FoodApp
//
//  Created by Mathieu Durand on 07/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State var toggleMenu: Bool = false
    @State var meatImage: String = "Boeuf"
    @State var meat: [String] = ["Boeuf", "Poulet", "Poisson", "Veggie"]
    @State var drink: [String] = ["Coca-Cola", "Fanta", "Ice-Tea", "Evian"]
    @State var drinkName: String = "Coca-Cola"
    @State var index: Int = 0
    
    @State var indexMenuDrink: Int = 0
    
    @State var baconSlice: Int = 0
    @State var pickleSlice: Int = 0
    
    @State var ketchup: Bool = false
    @State var mustard: Bool = false
    
    @State var slider:Double = 0
    
    @State var fries: Bool = false
    
    @State var name: String = ""
    @State var phone: String = ""
    @State var hour: Date = Date()
    
    @State var ordered: Bool = false
    @State var recap: String = "mm"
    
    var body: some View {
        Form {
            Section("Composez votre commande") {
                ToggleMenu(toggleMenu: $toggleMenu)
                MeatChangeImage(MeatImage: $meatImage)
                MeatPicker(meat: $meat, index: $index, meatImage: $meatImage)
                BurgerCustom(baconSlice: $baconSlice, pickleSlice: $pickleSlice, ketchup: $ketchup, mustard: $mustard, slider: $slider)
            }
            if (toggleMenu){
                Section("pour le menu") {
                    MenuCustomizer(drink: $drink, fries: $fries, index: $indexMenuDrink, drinkName: $drinkName)
                }
            }
            
            Section("Informations") {
                Information(name: $name, phone: $phone, hour: $hour)
            }
            
            Section("Récapitulatif") {
               RecapHead(ordered: $ordered)
               RecapContent(recap: $recap)
            }

        }.onSubmit {
            if (ordered) {
                recapBuilder()
            }
        }
    }
    func recapBuilder(){
        recap = "Je viens de faire le récap de votre commande. "
    }
}



#Preview {
    ContentView()
}

//
//  ContentView.swift
//  Fructus
//
//  Created by ELİF BEYZA SAĞLAM on 26.08.2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData 
    // MARK: - BODY
 
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { item in
                 NavigationLink(destination: FruitDetailView(fruit: item)) {
                    FruitRowView(fruit: item)
                        .padding(.vertical,4)
                    
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
            trailing:
                Button(action:{
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                }//: Button
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            
            )
        }//: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle()) //for ipod 
        
        
        //MARK: - PREVIEW
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

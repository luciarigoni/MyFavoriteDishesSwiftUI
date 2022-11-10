//
//  ContentView.swift
//  MyFavoriteDishesSwiftUI
//
//  Created by Lucia Rigoni Freire on 10/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSweet = false
    @State private var isSalty = false

    
    var model = Dish.all()
    
    var body: some View {
        List {
            
            VStack {
                Toggle(isOn: $isSalty) {
                    Text("Salty").font(.title)
                }
                Toggle(isOn: $isSweet) {
                    Text("Sweet").font(.title)
                }
            }.toggleStyle(.switch)
            
            ForEach(model.filter{ $0.isSweet == self.isSweet
            }) { dish in
                
                HStack{
                    Image(dish.imageURL).resizable().frame(width: 100, height: 100)
                    Text(dish.name).font(.title).lineLimit(nil)
                }
            }
            
            ForEach(model.filter{ $0.isSalty == self.isSalty
            }) { dish in
                
                HStack{
                    Image(dish.imageURL).resizable().frame(width: 100, height: 100)
                    Text(dish.name).font(.title).lineLimit(4)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

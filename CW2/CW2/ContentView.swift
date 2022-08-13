//
//  ContentView.swift
//  CW2
//
//  Created by Hussain Alwazzan on 10/08/2022.
//

import SwiftUI

struct ContentView: View {
  @State  var grocerryitems = ["Kinder","Sprite", "Hectors","Banana","ChocolateMilk"]
    @State var newitems = ""
    var body: some View {
        VStack{
        
        List(grocerryitems , id:\.self){ i in
            HStack{
                Image(i)
                    .resizable()
                    .frame(width: 75, height: 75)
                Text(i)
            }
        }
        
                HStack{
                   Spacer()
                    Button{grocerryitems.append(newitems); }label:{ Image(systemName: "plus")}
                    
                    Spacer()
                    Text("add items")
  
                    Spacer()
                    
                    Button{grocerryitems.append(newitems); }label:{ Image(systemName: "minus")}

                    Spacer()
                }
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
            .previewInterfaceOrientation(.portrait)
    }
}

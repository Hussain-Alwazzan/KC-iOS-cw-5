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
                        .frame(width: 60, height: 60)
                        .foregroundColor(.white)
                        .background(.green)
                        .cornerRadius(15)
                    Spacer()
                    TextField("New Items", text: $newitems )
  
                    Spacer()
                    
                    Button{grocerryitems.remove(at: 0); }label:{ Image(systemName: "minus")}
                        .frame(width: 60, height: 60)
                        .foregroundColor(.white)
                        .background(.red.opacity(0.89))
                        .cornerRadius(15)
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

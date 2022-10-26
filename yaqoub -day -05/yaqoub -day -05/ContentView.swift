//
//  ContentView.swift
//  yaqoub -day -05
//
//  Created by yaqoub ayed salman on 10/22/22.
//

import SwiftUI

struct ContentView: View {
    
    
   @State var items =  ["Tomato","apple","doritos", "kitkat", "kinder"]
  @State var newitems = ""
    
    var body: some View {
        
        VStack{
            List{
            ForEach(items,id:\.self) {item in
            
            HStack{
            
             Image(item)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(item)
                .font(.largeTitle)
                .fontWeight(.semibold)
            }
            
          
        }
        .onDelete(perform: removeRows)
            }
          //  TextField("",  text: $newitems)
            HStack{
                
            Button {
                items.append(newitems)
            }
                label: {
                    Image(systemName: "plus")
            
                        .font(.system(size: 35))
                        .frame(width: 50, height: 50)
                        .background(Color.green)
                        .cornerRadius(15)
                        .foregroundColor(.white)
            }
                TextField("enter your  New item", text: $newitems)
                
                Button {
                    items.remove(at: 0)
                }
                    label: {
                        Image(systemName: "minus")
                
                            .font(.system(size: 35))
                            .frame(width: 50, height: 50)
                            .background(Color.red)
                            .cornerRadius(15)
                            .foregroundColor(.white)

                }
                Button {
                    items.append( items.randomElement() ?? "fake")
                }
                    label: {
                        Image(systemName: "questionmark")
                
                            .font(.system(size: 35))
                            .frame(width: 50, height: 50)
                            .background(Color.orange)
                            .cornerRadius(15)
                            .foregroundColor(.white)

                }

                    
        }
            .padding()
        }
        
    }
    
    func removeRows(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Emoji
//
//  Created by rishi charan on 01/08/24.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 😀, 😂, 😇, 😍, 😉, 😘, 😋, 😎, 🤨, 🤓, 🤔, 😜
}

struct ContentView: View {
    @State var selection: Emoji = .😀
    
    
    var body: some View {
        NavigationView{
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("select Emoji", selection: $selection){
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji")
            .padding()
        }
    }
}

struct ContentView_Preview: PreviewProvider{
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}

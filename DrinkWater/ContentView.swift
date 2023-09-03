//
//  ContentView.swift
//  DrinkWater
//
//  Created by V™️ on 2023/8/27.
//

import SwiftUI

struct ContentView: View {
    
    @State var isWatered = false
    
    var body: some View {
        
        VStack {
            ZStack {
                Circle()
                Image(systemName: isWatered ? "crown.fill"
                      : "eyes.inverse")
                .font(.system(size: 150))
                .foregroundColor(isWatered ? .yellow : .red)
            }
            Divider()
            Toggle(isOn: $isWatered ){
                Label("你喝水了吗？", systemImage: "drop.fill")
            }
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}

/**
 内容显示
 */
#Preview {
    ContentView()
}

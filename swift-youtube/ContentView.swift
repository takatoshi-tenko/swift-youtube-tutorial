//
//  ContentView.swift
//  swift-youtube
//
//  Created by 天孝高俊 on 2024/01/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(.red)
                .frame(width: 300, height: 50)
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 300, height: 50)
            
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 70, height: 70)
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 40, height: 40)
            }
            ZStack {
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 300, height: 200)
                VStack {
                    HStack {
                        Rectangle()
                            .foregroundColor(.red)
                            .frame(width: 100, height:50)
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 100, height:50)
                    }
                    HStack {
                        Rectangle()
                            .foregroundColor(.black)
                            .frame(width: 100, height: 50)
                        Rectangle()
                            .foregroundColor(.yellow)
                            .frame(width: 100, height:50)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

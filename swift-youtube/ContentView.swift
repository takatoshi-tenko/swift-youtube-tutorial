//
//  ContentView.swift
//  swift-youtube
//
//  Created by 天孝高俊 on 2024/01/20.
//

import SwiftUI

struct ContentView: View {
    @State var inputText = ""
    @State var isOn = true
    var body: some View {
        VStack {
            TextField("ここに文字を入力してください", text: $inputText)
            Toggle("スイッチ", isOn: $isOn)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  swift-youtube
//
//  Created by 天孝高俊 on 2024/01/20.
//

import SwiftUI

struct ContentView: View {
    @State private var  randomNumber = 1
    @State private var timer: Timer?
    @State private var isRolling = false
    @State var isSHowSecondView = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Spacer()
                Image(systemName: "die.face.\(randomNumber)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width/2)
                    .padding()
                Spacer()
                Button {
                    playDice()
                } label: {
                    Text("サイコロを振る")
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
                .disabled(isRolling)
                Spacer()
                NavigationLink {
                    SecondView()
                } label: {
                    Text("SecondViewへナビ遷移")
                }
                Button("SecondViewへモーダル遷移") {
                    isSHowSecondView = true
                }
                .padding()
                .sheet(isPresented: $isSHowSecondView) {
                    SecondView()
                }

            }
            .padding()
            .navigationTitle("画面1")
        }
    }
    
    func playDice() {
        print("ボタンが押されたよ")
        isRolling = true
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) {
            _ in randomNumber = Int.random(in: 1...6)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            timer?.invalidate()
            timer = nil
            isRolling = false
        }
    }
}

#Preview {
    ContentView()
}

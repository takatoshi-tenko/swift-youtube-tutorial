//
//  ContentView.swift
//  swift-youtube
//
//  Created by 天孝高俊 on 2024/01/20.
//

import SwiftUI

struct ContentView: View {
    @State var taskData = [(title: "ジョギングする", completed: false),
                           (title: "お花に水をやる", completed: false),
                           (title: "部屋の掃除をする", completed: false),
                           (title: "本を読む", completed: false),
                           (title: "aaa", completed: false)]
    var body: some View {
        NavigationStack {
            List(0..<taskData.count, id: \.self) { index in
                Button {
                    taskData[index].completed.toggle()
                } label: {
                    HStack {
                        Image(systemName: taskData[index].completed == true ? "checkmark.circle.fill" : "circle")
                        Text(taskData[index].title)
                    }
                }
                .foregroundColor(.primary)
            }
            .navigationTitle("ToDoリスト")
        }
    }
}

#Preview {
    ContentView()
}

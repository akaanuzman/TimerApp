//
//  ContentView.swift
//  TimerApp
//
//  Created by Ahmet Kaan UZMAN on 14.01.2022.
//

import SwiftUI
import CoreData

struct ContentView: View {

    @State var timeCount: Double = 0.0

    private var timer: Timer {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            self.timeCount += 0.1
        }
    }


    var body: some View {
        ZStack {
            ZStack {
                Color.yellow.ignoresSafeArea()
            }
            VStack {
                Spacer()
                HStack {
                    Text(timeString(time: timeCount))
                        .font(.system(size: 100)).foregroundColor(Color.white).italic().shadow(color: Color.black.opacity(0.7), radius: 4, x: 0, y: 5).padding(.vertical)
                    Text("s")
                        .font(.system(size: 50)).foregroundColor(Color.white).italic().shadow(color: Color.black.opacity(0.7), radius: 4, x: 0, y: 5).padding(.top)
                }.onAppear(perform: {
                    _ = self.timer
                })
                Spacer()
                Spacer()
                Button(action: {
                    self.timeCount += 1.0
                    print("Total plus:")
                }) {
                    Text("+1sn").foregroundColor(Color.white).font(.title).bold()
                }.frame(width: 150, height: 75, alignment: .center).background(Color.green).cornerRadius(16).padding().shadow(color: Color.black.opacity(0.25), radius: 10, x: 0, y: 5).padding()
                Text("a little work with 🕰").foregroundColor(Color.black.opacity(0.5)).italic()
            }
        }
    }

    private func timeString(time: Double) -> String {
        return String(format: "%.1f", time)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

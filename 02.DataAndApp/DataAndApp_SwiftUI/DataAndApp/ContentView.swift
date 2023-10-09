//
//  ContentView.swift
//  DataAndApp
//
//  Created by Jaehoon Lee on 10/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Hello, world")
                        .frame(width: 120, height: 30)
                        .foregroundColor(Color.white)
                    Spacer()
                }
                .padding(.top, 30)
                
                Text("SwiftUI로 만든 앱")
                    .foregroundStyle(Color.red)
                    .font(.title)
                
                Spacer()
                
            }
            .background(Color.gray)
            .frame(width: 400, height: 200)
            .padding(.leading, 10)
            .padding(.top, 100)

            Image("model_s")
                .resizable()
                .frame(width: 400, height: 200)
                .padding(.top, 10)
                .padding(.leading, 10)
            
            HStack {
                Image(systemName: "car.side")
                    .resizable()
                    .frame(width: 200, height: 100)
                    .foregroundColor(.accentColor)
                
                Spacer()
            }
            .padding(.top, 10)

            Spacer()
            
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}

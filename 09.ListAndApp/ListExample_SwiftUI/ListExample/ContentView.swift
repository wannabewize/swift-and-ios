//
//  ContentView.swift
//  ListExample
//
//  Created by Jaehoon Lee on 10/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            List {
                ForEach(movies) { movie in
                    HStack {
                        Image(movie.image, bundle: nil)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .aspectRatio(contentMode: .fit)
                        VStack(alignment: .leading) {
                            Text(movie.title)
                                .font(.headline)
                            Text(movie.actor)
                                .font(.callout)
                        }
                        
                    }
                }
            }
            .listStyle(.plain) // grouped
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

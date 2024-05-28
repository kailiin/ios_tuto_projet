//
//  ContentView.swift
//  Landmarks
//
//  Created by klin on 28/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}

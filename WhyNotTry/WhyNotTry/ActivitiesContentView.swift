//
//  ActivitiesContentView.swift
//  WhyNotTry
//
//  Created by klin on 28/05/2024.
//

import SwiftUI

struct ActivitiesContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    
    @State private var selected = "Archery"
    
    @State private var id = 1
    
    var body: some View {
        VStack {
            Text("Why Not Try")
                .font(.largeTitle.bold())
            
            Spacer()
            
            VStack {
                Circle()
                    .fill(colors.randomElement() ?? .yellow)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 144))
                            .foregroundColor(.white)
                    )
                
                Text("\(selected)!")
                    .font(.title)
            }
            .transition(.slide)
            .id(id)
            
            Spacer()
            
            Button("Try again") {
                withAnimation(.easeInOut(duration: 0.5)) {
                    selected = activities.randomElement() ?? "Archery"
                    id += 1
                }
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ActivitiesContentView()
}

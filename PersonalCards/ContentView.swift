//
//  ContentView.swift
//  PersonalCards
//
//  Created by Muhammet Emin Ayhan on 30.10.2024.
//
//  Devamı vizeden sonra

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("bgColor").edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack(spacing: 16) {
                    ProfileHeaderView()
                        .shadow(radius: 10)
                    CategoryChipsView()
                    
                    HStack {
                        Text("Workflow")
                            .font(.headline)
                            .bold()
                            .padding(.horizontal)
                        Spacer()
                    }
                    ImageGridView()
                    ProfileListView()
                }
                .padding(.top,20)
            }
        }
    }
}

#Preview {
    ContentView()
}





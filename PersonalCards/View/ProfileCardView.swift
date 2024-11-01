//
//  ProfileCardView.swift
//  PersonalCards
//
//  Created by Muhammet Emin Ayhan on 30.10.2024.
//


import SwiftUI


struct ProfileCardView: View {
    let profile: Profile
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(profile.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text(profile.title)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                HStack(spacing: 8) {
                    StatisticIconView(label: "\(Int.random(in: 1000...50000))", iconName: "person.2.fill", color: .blue)
                    StatisticIconView(label: "\(Int.random(in: 100...1000))", iconName: "heart.fill", color: .red)
                    StatisticIconView(label: "\(Int.random(in: 50...200))", iconName: "flame.fill", color: .orange)
                }
                
            }
            Spacer()
            
            Text("\(profile.rank) Rank")
                .font(.headline)
                .foregroundColor(.white)
                .padding(8)
                .background(Color.blue)
                .cornerRadius(10)
            
        }
        .padding()
        .background(Color.bgColor2)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

//
//  ProfileHeaderView.swift
//  PersonalCards
//
//  Created by Muhammet Emin Ayhan on 30.10.2024.
//
import SwiftUI
struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Button {
                    print("click1")
                } label: {
                    Image(systemName: "arrow.left")
                        .font(.title2)
                        .foregroundColor(.white)
                }
                Spacer()
                Text("Personal Card")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                Spacer()
                Button {
                    print("click2")
                } label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.title2)
                        .foregroundColor(.white)
                }
            }
            .padding(.horizontal)
            
            HStack {
                Image("character")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                VStack(alignment: .leading) {
                    Text("John Doe")
                        .font(.system(size: 24))
                        .bold()
                        .foregroundColor(.white)
                    HStack(spacing: 3) {
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(.white.opacity(0.8))
                        Text("New York")
                            .font(.subheadline)
                            .foregroundColor(.white.opacity(0.8))
                    }
                }
                Spacer()
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .bold()
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(Color.white)
                        .foregroundColor(Color.purple)
                        .cornerRadius(20)
                }

            }
            .padding(.horizontal, 10)
            HStack(spacing: 40) {
                StatisticView(label: "648", title: "Following")
                StatisticView(label: "6", title: "Buckets")
                StatisticView(label: "1052", title: "Followers")
            }
            .foregroundColor(.white)
            .padding(.bottom, 16)
        }
        .padding()
        .background(
            LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
        )
        .padding(.horizontal)
    }
}

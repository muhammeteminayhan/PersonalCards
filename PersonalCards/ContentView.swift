//
//  ContentView.swift
//  PersonalCards
//
//  Created by Muhammet Emin Ayhan on 30.10.2024.
//

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

struct ProfileListView:View {
    var profiles = [
        Profile(name: "xiohuiGod", title: "Flying Wings", rank: 1),
        Profile(name: "Luck", title: "Grooming Up Trouble", rank: 2),
        Profile(name: "Jerry Cool West", title: "Title Sculptor's Diary", rank: 3),
        Profile(name: "Bold", title: "Title Illustrator", rank: 4),
        Profile(name: "David Borg", title: "Grooming Up Trouble", rank: 5)
    ]
    var body: some View {
        VStack(spacing: 16) {
            ForEach(profiles) { profile in
                ProfileCardView(profile: profile)
            }
        }
        .padding(.horizontal)
    }
}

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

struct StatisticIconView: View {
    let label: String
    let iconName: String
    let color: Color
    var body: some View {
        HStack(spacing: 4) {
            Image(systemName: iconName)
                .foregroundColor(color)
            Text(label)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}

struct Profile: Identifiable {
    let id = UUID()
    let name: String
    let title: String
    let rank: Int
}

struct ImageGridView: View {
    let images = ["image1", "image2", "image3","image4","image5","image6"]
    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]
    var body: some View {
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(images, id: \.self) { image in
                Button(action: {}) {
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(radius: 10)
                }
            }
        }
        .padding()
    }
}

struct CategoryChipsView: View {
    let categories = ["Principle", "Trade", "Blog", "Web Site"]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(categories, id: \.self) { category in
                    Text(category)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(Color.blue.opacity(0.1))
                        .foregroundColor(.blue)
                        .cornerRadius(20)
                        .overlay(RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.blue, lineWidth: 1))
                }
            }
            .padding(.horizontal)
        }
    }
}

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

struct StatisticView: View {
    let label: String
    let title: String
    var body: some View {
        VStack {
            Text(label)
                .font(.headline)
                .bold()
            Text(title)
                .font(.caption)
        }
    }
}

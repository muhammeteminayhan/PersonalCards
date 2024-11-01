//
//  ProfileListView.swift
//  PersonalCards
//
//  Created by Muhammet Emin Ayhan on 30.10.2024.
//
import SwiftUI

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

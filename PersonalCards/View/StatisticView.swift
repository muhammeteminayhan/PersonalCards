//
//  StatisticView.swift
//  PersonalCards
//
//  Created by Muhammet Emin Ayhan on 30.10.2024.
//

import SwiftUI

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

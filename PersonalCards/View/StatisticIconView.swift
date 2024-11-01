//
//  StatisticIconView.swift
//  PersonalCards
//
//  Created by Muhammet Emin Ayhan on 30.10.2024.
//

import SwiftUI

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

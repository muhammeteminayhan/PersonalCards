//
//  ImageGridView.swift
//  PersonalCards
//
//  Created by Muhammet Emin Ayhan on 30.10.2024.
//
import SwiftUI

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

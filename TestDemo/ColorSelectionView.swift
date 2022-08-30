//
//  ColorSelectionView.swift
//  TestDemo
//
//  Created by Andy on 2022/8/23.
//

import SwiftUI

struct ColorSelectionView: View {
    let colors: [Color] = [.green, .red, .blue, .pink, .purple, .yellow, .brown, .black, .white]
    @Binding var selectedColor: Color
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                Image(systemName: selectedColor == color ? "record.circle.fill" : "circle.fill")
                    .font(.title)
                    .foregroundColor(color)
                    .clipShape(Circle())
                    .onTapGesture {
                        selectedColor = color
                    }

            }
        }
    }
}

struct ColorSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSelectionView(selectedColor: .constant(.blue))
    }
}

//
//  InfoDisplayView.swift
//  GeometricFigures
//
//  Created by Seyhan Kaya Mangtay on 2026-02-25.
//

import SwiftUI

struct InfoDisplayView: View {
    
    // MARK: Stored Properties
    let label: String
    let value: Double
    
    //MARK: Computed Properties
    
    var body: some View {
        
        VStack {
            HStack {
                Text(label)
                    .font(.headline)
                Spacer()
            }
            .padding(.top)
            .padding(.bottom, 5)
            
            HStack {
                Text("\(value.formatted(.number.precision(.fractionLength(2)))) units")
                Spacer()
            }
            .padding(.bottom)
        }
    }
    
}

#Preview {
    VStack {
        InfoDisplayView(label: "Height", value: 20.0)
        InfoDisplayView(label: "Height", value: 20.0)
        InfoDisplayView(label: "Height", value: 20.0)
    }
    .padding()
}

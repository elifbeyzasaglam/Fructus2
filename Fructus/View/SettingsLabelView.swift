//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by ELİF BEYZA SAĞLAM on 31.08.2022.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    //MARK: - BODY
    
    var body: some View {
        
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
                 Spacer()
            Image(systemName: labelImage)
        }
    }
}

// MARK: PREVIEW

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

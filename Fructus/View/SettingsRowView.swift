//
//  SettingsRowView.swift
//  Fructus
//
//  Created by ELİF BEYZA SAĞLAM on 31.08.2022.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    
    var name :String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String?
    //MARK: - BODY
    
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if  (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel! , destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}
//MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "John / Jane")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingsRowView(name: "Website" , linkLabel: "SwiftUI Masterclass" , linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}

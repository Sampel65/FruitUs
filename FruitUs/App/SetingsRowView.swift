//
//  SetingsRowView.swift
//  FruitUs
//
//  Created by Sampel on 30/01/2023.
//

import SwiftUI

struct SetingsRowView: View {
    var name : String
    var Content : String? = nil
    var linkLabel : String? = nil
    var linkDestination : String? = nil
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
            Text(name).foregroundColor(Color.gray)
            Spacer()
                if (Content != nil) {
                    Text(Content!)
                } else if ( linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination : URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square") .foregroundColor(.pink)
                   
                }
            }
        }
    }
}

struct SetingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SetingsRowView(name: "Developer", Content: "John / jane")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SetingsRowView(name: "Website", linkLabel: "SwiftUi master class", linkDestination: "Swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}

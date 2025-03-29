//
//  CaptionedPhoto.swift
//  MyApp
//
//  Created by dong eun shin on 3/29/25.
//

import SwiftUI

struct CaptionedPhoto: View {
    let assetName: String
    let captionText: String
    var body: some View {
        Image(assetName)
            .resizable()
            .scaledToFit()
            .overlay(alignment: .bottom) {
                Caption(text: captionText)
            }
            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            .padding()
    }
}


struct Caption: View {
    let text: String
    var body: some View {
        Text(text)
            .padding()
            .background(Color("TextContrast").opacity(0.75),
                        in: RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            .padding()
    }
}


struct CaptionedPhoto_Previews: PreviewProvider {
    static let landscapeName = "umbagog.jpeg"
    static let landscapeCaption = "This photo is wider than it is tall."
    static let portraitName = "umbagog.jpeg"
    static let portraitCaption = "This photo is taller than it is wide."
    static var previews: some View {
        CaptionedPhoto(assetName: portraitName,
                       captionText: portraitCaption)
        CaptionedPhoto(assetName: landscapeName,
                       captionText: landscapeCaption)
        .preferredColorScheme(.dark)
        CaptionedPhoto(assetName: landscapeName,
                       captionText: landscapeCaption)
        .preferredColorScheme(.light)
    }
}

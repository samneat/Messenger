//
//  CircularProfileImageView.swift
//  Messenger
//
//  Created by Sam Neat on 31/07/2024.
//

import SwiftUI

enum ProfileImageSize {
    case xxSmall
    case xSmall
    case small
    case medium
    case large
    case xLarge
    
    var deminsion: CGFloat {
        switch self {
        case .xxSmall:
            return 28
        case .xSmall:
            return 32
        case .small:
            return 40
        case .medium:
            return 56
        case .large:
            return 64
        case .xLarge:
            return 80
        }
    }
}

struct CircularProfileImageView: View {
    
    let user: User
    let size: ProfileImageSize
    
    var body: some View {
        if let imageURL = user.profileImageURL {
            Image(imageURL)
                .resizable()
                .scaledToFill()
                .frame(width: size.deminsion, height: size.deminsion)
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.deminsion, height: size.deminsion)
                .foregroundStyle(Color(.systemGray4))
        }
    }
}

#Preview {
    CircularProfileImageView(user: User.MOCK_USER, size: .medium)
}

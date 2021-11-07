//
//  CommentCellView.swift
//  Instragram-Clone
//
//  Created by Siriluk Rachaniyom on 6/11/21.
//

import SwiftUI
import Kingfisher

struct CommentCellView: View {
    let comment: Comment
    
    var body: some View {
        HStack{
            KFImage(URL(string: comment.profileImageURL))
                .resizeTo(width: 36, height: 36)
                .clipShape(Circle())
            
            HStack{
                Text(comment.username)
                    .font(.system(size: 14,weight: .semibold))
                +
                Text(" \(comment.comment)")
                    .font(.system(size: 14))
                
                Spacer()
                
                Text("\(comment.timestampText())")
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
                    .padding(.trailing)
            }
        }
        .padding(.horizontal)
    }
}



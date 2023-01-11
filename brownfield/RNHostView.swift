//
//  RNHostView.swift
//  brownfield
//
//  Created by Frank Calise on 1/11/23.
//

import SwiftUI

struct RNHostView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            VStack {
                            Button {
                              presentationMode.wrappedValue.dismiss()

                            } label: {
                                Image(systemName: "x.circle")
                                    .foregroundColor(.black)
                                    .font(.largeTitle)
                            }
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            Spacer()
                        }
        }
    }
}

struct RNHostView_Previews: PreviewProvider {
    static var previews: some View {
        RNHostView()
        
        
    }
}

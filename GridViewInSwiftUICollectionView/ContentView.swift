//
//  ContentView.swift
//  GridViewInSwiftUICollectionView
//
//  Created by ramil on 30.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        grid()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct grid: View {
    var body: some View {
        GeometryReader { geo in
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(1..<6) { i in
                        HStack {
                            Image("img\(i)")
                                .resizable()
                                .frame(width: geo.size.width / 2 - 20)
                                .cornerRadius(15)
                            Image("img\(i)")
                                .resizable()
                                .frame(width: geo.size.width / 2 - 20)
                                .cornerRadius(15)
                        }.frame(height: UIDevice.current.orientation.isLandscape ? 300 : 150)
                    }
                }
            }
        }
    }
}

// when screen is rotated images are streching to avoid this...

//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Daniel Aditya Istyana on 12/11/19.
//  Copyright © 2019 Daniel Aditya Istyana. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State var show = false
  
  var body: some View {
    ZStack {
      TitleView()
        .blur(radius: show ? 20 : 0)
      CardBottomView()
        .blur(radius: show ? 20 : 0)
        .animation(.default)
      CardView()
        .background(show ? Color.red : Color("background9"))
        .cornerRadius(10)
        .shadow(radius: 20)
        .offset(x: 0, y: show ? -400 : -40)
        .scaleEffect(0.85)
        .rotationEffect(Angle(degrees: show ? 15 : 0))
        .blendMode(.darken)
        .animation(.easeInOut(duration: 0.7))
      CardView()
        .background(show ? Color.red : Color("background8"))
        .cornerRadius(10)
        .shadow(radius: 20)
        .offset(x: 0, y: show ? -200 : -20)
        .scaleEffect(0.9)
        .rotationEffect(Angle(degrees: show ? 10 : 0))
        .blendMode(.darken)
        .animation(.easeInOut(duration: 0.5))
      CertificateView()
        .scaleEffect(0.95)
        .rotationEffect(Angle(degrees: show ? 5 : 0))
        .animation(.spring())
        .onTapGesture {
          self.show.toggle()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct CardView: View {
  var body: some View {
    VStack {
      Text("Card Back")
    }
    .frame(width: 340, height: 220)
  }
}

struct CertificateView: View {
  var body: some View {
    VStack {
      HStack {
        VStack {
          Text("UI Design")
            .font(.headline)
            .fontWeight(.bold)
            .foregroundColor(Color("accent"))
            .padding(.top)
          Text("Certificate")
            .foregroundColor(.white)
        }
        Spacer()
        Image("Logo")
          .resizable()
          .frame(width: 30, height: 30)
      }
      .padding(.horizontal)
      Spacer()
      Image("Background")
    }
    .frame(width: 340, height: 220)
    .background(Color(.black))
    .cornerRadius(10)
    .shadow(radius: 20)
  }
}

struct TitleView: View {
  var body: some View {
    VStack {
      HStack {
        Text("Certificates")
          .font(.largeTitle)
          .fontWeight(.heavy)
        Spacer()
      }
      Image("Illustration5")
      Spacer()
    }.padding()
  }
}

struct CardBottomView: View {
  var body: some View {
    VStack(spacing: 20.0) {
      Rectangle()
        .frame(width: 60, height: 6)
        .cornerRadius(3)
        .opacity(0.1)
      
      Text("This certificate is proof that you has achieved the UI design Course from Design+Code")
        .lineLimit(10)
      Spacer()
    }
    .frame(minWidth: 0, maxWidth: .infinity)
    .padding()
    .padding(.horizontal)
    .background(Color.white)
    .cornerRadius(30)
    .shadow(radius: 20).offset(y: 600)
  }
}

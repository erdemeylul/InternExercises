//
//  FullScreenView.swift
//  InternExercises
//
//  Created by Erdem Senol on 2.10.2021.
//

import SwiftUI

struct FullScreenView: View {
    @State var offsetPurple: CGSize = .zero
    @State var offsetBlue: CGSize = .zero
    @State var offsetGreen: CGSize = .zero
    
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
            ZStack{
                Circle()
                    .trim(from: 0, to: 0.4)
                    .stroke(RadialGradient(colors: [Color("purpleD"), Color("purpleL")], center: .center, startRadius: 50, endRadius: 100), lineWidth: 80)
                    .frame(width: 120, height: 120)
                    .shadow(color: Color.black.opacity(0.4), radius: 20, x: 0, y: 10)
                    .offset(offsetPurple)
                    .gesture(
                        DragGesture()
                            .onChanged({ value in
                                withAnimation(.spring()) {
                                    offsetPurple = value.translation
                                }
                            })
                            .onEnded({ value in
                                if offsetPurple.width <= 20 && offsetPurple.width >= -20  && offsetPurple.height <= 20 && offsetPurple.height >= -20{
                                    withAnimation(.spring()) {
                                        offsetPurple = .zero
                                    }
                                }else{
                                    withAnimation(.spring()) {
                                        offsetPurple = value.translation
                                    }
                                }
                                
                            })
                    )
                    
                Circle()
                    .trim(from: 0.4, to: 0.6)
                    .stroke(RadialGradient(colors: [Color("orangeD"), Color("orangeL")], center: .center, startRadius: 50, endRadius: 100), lineWidth: 80)
                    .frame(width: 120, height: 120)
                    .shadow(color: Color.black.opacity(0.4), radius: 20, x: 0, y: 10)
                    .offset(offsetBlue)
                    .gesture(
                        DragGesture()
                            .onChanged({ value in
                                withAnimation(.spring()) {
                                    offsetBlue = value.translation
                                }
                            })
                            .onEnded({ value in
                                if offsetBlue.width <= 20 && offsetBlue.width >= -20  && offsetBlue.height <= 20 && offsetBlue.height >= -20{
                                    withAnimation(.spring()) {
                                        offsetBlue = .zero
                                    }
                                }else{
                                    withAnimation(.spring()) {
                                        offsetBlue = value.translation
                                    }
                                }
                                
                            })
                    )
                Circle()
                    .trim(from: 0.6, to: 1)
                    .stroke(RadialGradient(colors: [Color("greenD"), Color("greenL")], center: .center, startRadius: 50, endRadius: 100), lineWidth: 80)
                    .frame(width: 120, height: 120)
                    .shadow(color: Color.black.opacity(0.4), radius: 20, x: 0, y: 10)
                    .offset(offsetGreen)
                    .gesture(
                        DragGesture()
                            .onChanged({ value in
                                withAnimation(.spring()) {
                                    offsetGreen = value.translation
                                }
                            })
                            .onEnded({ value in
                                if offsetGreen.width <= 20 && offsetGreen.width >= -20  && offsetGreen.height <= 20 && offsetGreen.height >= -20{
                                    withAnimation(.spring()) {
                                        offsetGreen = .zero
                                    }
                                }else{
                                    withAnimation(.spring()) {
                                        offsetGreen = value.translation
                                    }
                                }
                                
                            })
                    )
            }
        }
    }
}

struct FullScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenView()
    }
}

//
//  CategoryRow.swift
//  NHLMyScore
//
//  Created by comp on 22.03.23.
//

import SwiftUI


struct CategoryRow: View {
        
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (alignment: .top, spacing: 0){
                
            RosterRow()
            InfoRow()
                
            }
        }
    }
}



struct InfoRow: View {
    var body: some View {
        ZStack{
        VStack(alignment: .leading) {

            Image("icefon")
            
                .resizable()
                .cornerRadius(15)
                .padding()
                .frame(maxHeight: .infinity)
                .opacity(0.2)
                .lineSpacing(2)
            
        }
            
            StrokeText(text: "INFO", width: 0.5, color: Color.black)
                .font(.custom("Baskerville", size: 50) .bold())
            
    }
  }
}


struct RosterRow: View {
    var body: some View {
        
//        NavigationView {
            
        ZStack {
            
        VStack(alignment: .leading) {
            
//            NavigationLink(destination: RosterView()) {
            Image("icefon")
            
                .resizable()
                .cornerRadius(15)
                .padding()
                .frame(maxHeight: .infinity)
                .opacity(0.2)
                .lineSpacing(2)
        }
            StrokeText(text: "СОСТАВ", width: 0.2, color: Color.black)
                .font(.custom("Baskerville", size: 50) .bold())
//        }
//    }
    }
  }
}

    
struct StrokeText: View {
    let text: String
    let width: CGFloat
    let color: Color

    var body: some View {
        ZStack{
            ZStack{
                Text(text).offset(x:  width, y:  width)
                Text(text).offset(x: -width, y: -width)
                Text(text).offset(x: -width, y:  width)
                Text(text).offset(x:  width, y: -width)
            }
            .foregroundColor(color)
            Text(text)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow()
    }
}

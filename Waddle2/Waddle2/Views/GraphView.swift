//
//  GraphView.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/27.
//

import SwiftUI

struct GraphView: View {
    
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM"
        return formatter
    }()
    
    let steps: [Step]
    var totalSteps: Int{
        steps.map{$0.count}.reduce(0,+)
    }
    
    var body: some View {
        
        
        
        VStack{
            
            HStack{
                VStack{
                    Text("Waddles of the week")
                        .font(.system(size: 15, weight: .regular, design: .rounded))
                        .foregroundColor(Color.white)
                        .frame(width: 260, alignment: .center).padding(.bottom, 10)
                        .multilineTextAlignment(.center)
                    
                    HStack(alignment: .lastTextBaseline, spacing: 20){
                        
                        ForEach(steps, id: \.id) { step in
                            
                            let yValue = Swift.min(step.count/20, 300)
                            
                            VStack{
                                Text("\(step.count)").font(.caption).foregroundColor(.white).fontWeight(.bold)
                                
                                Rectangle()
                                .fill(Color.white)
                                .frame(width: 20, height: CGFloat(yValue)).cornerRadius(20)
                                
                            
                              
                                Text("\(step.date,formatter:Self.dateFormatter)").font(.caption) .foregroundColor(.white)
                                
                            }
                         
                        }
                       
                    }
                    
                    Text("Total waddles: \(totalSteps)").font(.body).padding(.top, 20) .foregroundColor(.white)
       
      
                }
                        
                }.padding(20).background(

                    Rectangle()
                    .fill(Color("Dark2"))
                    .cornerRadius(20)
                    .shadow(
                        color: Color.gray.opacity(0.2),
                        radius: 20,
                        x: 0,
                        y: 2
                    )
                    
                    
                ).padding(.bottom, 7)
            
      
           
            
        }
      
    }
}

struct GraphView_Previews: PreviewProvider {
    static var previews: some View {
        let steps = [
        Step(count: 2000, date: Date()),
        Step(count: 2503, date: Date()),
        Step(count: 1752, date: Date()),
        Step(count: 2003, date: Date()),
        Step(count: 937, date: Date()),
        ]
        
        GraphView(steps: steps)
    }
}

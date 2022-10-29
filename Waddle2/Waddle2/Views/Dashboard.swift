//
//  Dashboard.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/06.
//

import SwiftUI
import HealthKit
import SDWebImageSwiftUI


struct Dashboard: View {
    
    private var healthStore: HealthStore?
    @State private var steps: [Step] = [Step]()

    @StateObject private var firestoreData = FirestoreManager()
    
    let columns = [GridItem(.flexible(maximum: 190)),
                   GridItem(.fixed(140))]
    
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/YY"
        return formatter
    }()

    
    
    
    init(){
        healthStore = HealthStore()
    }
    
    
    private func updateUIFromStatistics(_ statisticsCollection: HKStatisticsCollection){
        let startDate = Calendar.current.date(byAdding: .day, value: -5, to: Date())!
        let endDate = Date()
        
        statisticsCollection.enumerateStatistics(from: startDate, to: endDate) {(statistics, stop) in
            
            let count = statistics.sumQuantity()?.doubleValue(for: .count())
            
            let step = Step(count: Int(count ?? 0), date: statistics.startDate)
            steps.append(step)

        }
    }
    
    var body: some View {
        
            
            
     
        NavigationView(){
            ZStack(){

                ZStack{
                    Image("scribbleHeader")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 390).ignoresSafeArea().padding(.top,-400)
                }

                ScrollView(.vertical){
                    Text("Welcome Jones family")
                        .font(.system(size: 28, weight: .medium, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: 300, alignment: .leading).padding(.bottom, 0)
                        .multilineTextAlignment(.leading).padding(.top, 80)

                    Text("Let’s document life!")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: 300, alignment: .leading).padding(.bottom, 20)
                        .multilineTextAlignment(.leading)

    

                    
                             GraphView(steps: steps)

                    List(firestoreData.memories){memory in
                        
                        VStack{
                            Text("\(memory.date)")
                            Text(memory.description)  .font(.system(size: 20, weight: .regular, design: .rounded))
                                .foregroundColor(Color("Dark"))
                                .frame(width: 300, alignment: .leading).padding(.bottom, 20)
                                .multilineTextAlignment(.leading)
                        }
                           
                    }
              

                    Text("Recent memories")
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: 300, alignment: .leading).padding(.bottom, 1)
                        .multilineTextAlignment(.leading)


                    LazyVGrid(columns: columns) {
                                   
                     ForEach(firestoreData.memories){memory in
           //                                                                                NavigationLink(destination: Memory(memory: memory)) {
           //
                           
                         NavigationLink(destination: Memory(memory: memory)){
                             VStack{
                                 
                                 
                               ZStack{
                                   
                             
                                   VStack{
                          
                                        }.padding(20).background(
                                                
                                                                                        Rectangle()
                                                                                           .fill(.black.opacity(0.3))
                                                                                            .cornerRadius(20)
                                                                                            .shadow(
                                                                                                color: Color.gray.opacity(0.2),
                                                                                                radius: 20,
                                                                                                x: 0,
                                                                                                y: 2
                                                                                            ).frame(width: 140)
                                                                                    ).padding(.bottom, 5)
                                   
                                   WebImage(url: URL(string: memory.img))
                                       .resizable()
                                       .cornerRadius(20)
                                       .frame(width: 140, height: 150)
                                       .aspectRatio(contentMode: .fill)
                                   
                                   Text("\(memory.date,formatter:Self.dateFormatter)")
                                      .font(.system(size: 15, weight: .medium))
                                      .multilineTextAlignment(.leading).foregroundColor(Color.white)
                                    .padding(.top, 90)
                                    .padding(.horizontal, 15)
                                                
                                   }
                               
                                 Text(memory.description)
                                                                                   .font(.system(size: 18, weight: .medium))
                                                                                   .multilineTextAlignment(.center).foregroundColor(Color("Dark"))
                                                                                   .lineLimit(2)
                                                                                   .padding(.leading, -8).frame(width: 160).padding(.bottom, 20)
                                           
                                           
                                           
                                                                       }//vstack
                         }
                  
                                   
                                                           }//foreach
                                   //
                                                           }.padding(.leading, -30).padding(.top, 20)//lazygrid
                               

                    NavigationLink(destination: BioAuthView()){

                        ZStack{
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(Color("Dark"))
                                .frame(width: .infinity, height: 60)
                                .padding(.horizontal, 50).padding(.top, 20)

                            Text("Log out")
                                .font(.system(size: 18, weight: .semibold))
                                .multilineTextAlignment(.center).foregroundColor(.white)
                                .padding(.horizontal, 50).padding(.top, 20)
                        }.padding(.bottom, 120)

                    }


                }

                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color("Dark"))
                        .frame(width: .infinity, height: 90)


                    HStack{

                        VStack{
                            Text("home")
                                .underline(color: Color("Dark2"))
                                .font(.system(size: 20, weight: .semibold))
                                .multilineTextAlignment(.center).foregroundColor(.white)
                        }.padding(.top, -20).padding()

                        NavigationLink(destination: Memories()){
                        VStack{
                            Text("memories")
                                .font(.system(size: 20, weight: .regular))
                                .multilineTextAlignment(.center).foregroundColor(.white)
                        }.padding(.top, -20).padding()
                        }

                        NavigationLink(destination: Add()){
                            VStack{
                                Text("add")
                                    .font(.system(size: 20, weight: .regular))
                                    .multilineTextAlignment(.center).foregroundColor(.white)
                            }.padding(.top, -20).padding()
                        }.navigationBarBackButtonHidden(true).navigationBarHidden(true)


                    }.padding(.horizontal, 30)
                }.padding(.bottom, 0).padding(.top, 730)

            }.background(Color("Light"))

        }.background(Color("Light")).navigationBarBackButtonHidden(true).navigationBarHidden(true)
            .onAppear{
            if let healthStore = healthStore{
                healthStore.requestAuthorization{success in
                    if success{
                        healthStore.calculateSteps{statisticsCollection in
                            if let statisticsCollection = statisticsCollection{
                                //update db or frontend
                                updateUIFromStatistics(statisticsCollection)
                            }
                        }
                    }
                    
                }
            }
        }//onappear

    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}

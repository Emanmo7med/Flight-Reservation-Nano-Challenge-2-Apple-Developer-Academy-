//
//  main.swift
//
//
//  Created by EMAN MOHAMMED on 28/12/2021.

import Foundation

print("--------------------------------------------------------------------------------------------")
print ("-------------------- ✈️ Hello, Welcome to the Flight Reservation app ✈️ --------------------")
print("---------------------------------------------------------------------------------------------")



var bookingType = ""
repeat{
    
    print("choose booking type:  \n 1.Round Trip   \n 2. One-Way ")
    
    let userbookingType = readLine() ?? "0"
    bookingType = userbookingType
    
    if ( bookingType ==  "1" ||  bookingType ==  "Round Trip" )
    {
        print("------------------------ ✈️ Your booking type is : Round Trip ✈️ ----------------------------")
        print ("▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️⬜️| Cities and dates |⬜️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️")
        
        ///---------------------------------------------Start Departure Date& Return Date----------------------------------------------------------------------------------------------------------------------------------------------------------
        print("Enter Departure Date:" )
        let leavingFrom = readLine()!
        
        print("Enter Return Date:" )
        
        let GoingTo = readLine()!
        
        print("\nDeparture Date: \(leavingFrom) ---------------- ✈️ ✈️ ✈️ ----------------- Return Date: \(GoingTo)\n ")
        ///---------------------------------------------Start Departure Date& Return Date----------------------------------------------------------------------------------------------------------------------------------------------------------
        
        
        
        ///---------------------------------------------Start  Departure City&Destination City----------------------------------------------------------------------------------------------------------------------------------------------------------
        // Departure City
        
        var CityForm = ""
        let City = ["Riyadh" ,"jeddah" ,"Khobar","Tabuk"]
        
        repeat{
            print("Enter the Departure City 'Choose only one': \n\(City)")
            
            let UesrCityForm  = readLine() ?? ""
            CityForm  = UesrCityForm
            switch CityForm {
            case "Riyadh" :
                print("your choose Departure City Riyadh ")
            case "jeddah":
                print("your choose Departure City jeddah ")
            case "Khobar":
                print("your choose Departure City Khobar ")
            case "Tabuk":
                print("your choose Departure City Tabuk ")
                
            default:
                print("\n-----------------⛔️⛔️⛔️ Please enter the correct city name ⛔️⛔️⛔️-----------------\n")
            }
        }while CityForm != "Riyadh" && CityForm != "jeddah"  && CityForm != "Khobar"  && CityForm !=  "Tabuk"
        
        //END  Departure City
        
        
        //Destination City
        
        var CityTo = ""
        
        repeat{
            print("\nEnter the Destination City 'Choose only one city:\n\(City)\n")
            
            let UesrCityTo    = readLine() ?? ""
            CityTo = UesrCityTo
            
            if (CityTo != "Riyadh" && CityTo != "jeddah"  && CityTo != "Khobar"  && CityTo !=  "Tabuk" ){
                print("\n-----------------⛔️⛔️⛔️ Please enter the correct city name ⛔️⛔️⛔️-----------------\n")
            }
            else if (CityTo != CityForm)
            {
                print(" \nDeparture City: \(CityForm) ---------------- ✈️ ✈️ ✈️ ----------------- Destination City: \(CityTo)  \n " )
            }
            else if (CityTo == CityForm )
            {
                print("\n----------------⛔️⛔️⛔️ Origin and destination is the same ⛔️⛔️⛔️-----------------\n")
            }
            
        }while CityTo == CityForm || CityTo != "Riyadh" && CityTo != "jeddah"  && CityTo != "Khobar"  && CityTo !=  "Tabuk"
        
        
        ///---------------------------------------------end   Departure City&Destination City----------------------------------------------------------------------------------------------------------------------------------------------------------
        
        
        
        print("---------------------------------------------------------------------------------------------")
        print ("▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️⬜️| Passengers |⬜️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️")
        ///---------------------------------------------Start  Passengers----------------------------------------------------------------------------------------------------------------------------------------------------------
        /// Adult
        print("Enter the number of an Adult:" )
        let Adult = readLine()!
        
        ///child
        print("\nEnter the number of a childrn (2-11 years):" )
        let child = readLine()!
        
        print("--------------------- ✈️  number of an Adult : (\(Adult))  And child(ren): (\(child)) ✈️ ---------------------\n")
        ///---------------------------------------------end  Passengers----------------------------------------------------------------------------------------------------------------------------------------------------------
        
        ///---------------------------------------------start  Travel Clas----------------------------------------------------------------------------------------------------------------------------------------------------------
        
        ///Class
        print ("▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️⬜️| Travel Class |⬜️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️")
        print("Please choose your ticket type:  \n 1.Economy \n 2.Business" )
        
        let Class1 = readLine()!
        if (Class1 == "1" ||  Class1 == "Economy"  || Class1 == "1.Economy")
        {
            print("----------------------------- ✈️  Class is: Economy  ✈️ -----------------------------------")
        }
        else{
            print("----------------------------- ✈️  Class is: Business  ✈️ -----------------------------------")
        }
        ///---------------------------------------------end  Travel Clas----------------------------------------------------------------------------------------------------------------------------------------------------------
        
        
        
        ///---------------------------------------------end  Class----------------------------------------------------
        
        
        
        
        
        print ("\n-------------------------- ✈️  all flight deals ✈️ ----------------------------------------\n")
        
        
        
        struct Item {
            var FightNumber:String
            var airline : String
            var city : String
            var FromTime:String
            var To : String
            var ToTime : String
            var price : Int
        }
        
        var array = [
            
            Item(FightNumber: "FN71",airline: "flynas", city:" \(CityForm)",FromTime: " 09:30 AM " , To: " \(CityTo)",ToTime: "11:20 AM", price: 349),
            Item(FightNumber: "AD89",airline: "Flyadea", city: "\(CityForm)",FromTime: " 1:30 AM ", To: "\(CityTo)",ToTime: "01:20 PM", price: 289),
            Item(FightNumber: "ASU2I",airline: "SAUDIA", city: "\(CityForm)",FromTime: "12:30 AM ", To: "\(CityTo)",ToTime: "03:20 PM", price: 600)
        ]
        print ("-----------------------------------------------------------------")
        
        for city12 in array{
            print (city12)
        }
        
        
        
        print ("-----------------------------------------------------------------")
        print ("Do you want to filter the prices? \n 1- ascending \n 2- descending")
        
        var fly = ""
        let filter = readLine()
        if (filter == "1" || filter == "ascending" ){
            array.sort { $0.price < $1.price }
            print ("-----------------------------------------------------------------")
            for city12 in array{
                print (city12)
            }
            
            print("\n-----------------✈️✈️✈️✈️ choose your Fight Number:  ✈️✈️✈️✈️-----------------\n")
            
            
            //            var fly = ""
            fly    = readLine() ?? ""
            switch fly {
            case "AD89":
                print(array[0])
            case "FN71" :
                print(array[1])
            case "ASU2I":
                print(array[2])
            default:
                print("\n-----------------⛔️⛔️⛔️ Please Enter the correct Fight Number  ⛔️⛔️⛔️-----------------\n")
            }
            
            print("Do you want to print all your booking information? \n 1.Yes \n 2.No")
            //            all_information1()
            all_information1()
            
            
            
            
           
        }
        else{
            array.sort { $1.price < $0.price }
            print ("-----------------------------------------------------------------")
            for city12 in array{
                print (city12)
                
            }
            
            print("\n-----------------✈️✈️✈️✈️ choose your Fight Number:  ✈️✈️✈️✈️-----------------\n")
            
            
            //            var fly = ""
            fly    = readLine() ?? ""
            switch fly {
            case "AD89":
                print(array[2])
            case "FN71" :
                print(array[1])
            case "ASU2I":
                print(array[0])
                
                
                
            default:
                print("\n-----------------⛔️⛔️⛔️ Please enter the correct Fight Number ⛔️⛔️⛔️-----------------\n")
            }
            
            print("Do you want to print all your booking information? \n 1.Yes \n 2.No")
            //            all_information1()
            all_information1()
            
        
        }
        
        
        
        
        
        
        ///---------------------------------------------func  City----------------------------------------------------
        
        func info_(){
            print( "\n -------------------- ✈️ guest information:✈️ -------------------- \n Your booking type is :\(bookingType)  \n  ----------  \n  Departure Date: \(leavingFrom)  \n  ----------  \n  Return Date: \(GoingTo) \n  ----------  \n  from City: \(CityForm) \n  ----------  \n  To City: \(CityTo)  \n  ----------  \n  number Adult: (\(Adult))\n  ----------  \n  number child(ren): (\(child)) \n  ----------  \n  Class is: \(Class1) \n  ----------  \n  " )
        }
        
       
        func all_information1(){
            let all_information = readLine()
            
            
            if( all_information == "1" || all_information == "Yes" ){
                
                
                let arrayIndexi = array.first(where: { $0.FightNumber == "\(fly)"  })
                
                
                info_()
                print("Figh Number: \(arrayIndexi!.FightNumber ) airline: \(arrayIndexi!.airline ) city: \(arrayIndexi!.city )  From Time: \(arrayIndexi!.FromTime )  To Time \(arrayIndexi!.ToTime )price: \(arrayIndexi!.price )")
                
                
            }
            
            
            if( all_information == "2" || all_information == "No" ){
                
                print("Thank you 💗 Have a nice trip")
            }
            
            
            print ("-----------------------------------------------------------------")
            
            
            
        }
        
        
        
        
        
        ///---------------------------------------------func  City----------------------------------------------------
        //end if
    }
    
    else if ( bookingType ==  "2"  || bookingType ==  "One-way"){
        print("------------------------ ✈️ Your booking type is : One-Way ✈️ ----------------------------")
        
        ///---------------------------------------------Start  Return Date----------------------------------------------------------------------------------------------------------------------------------------------------------
        
        print ("▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️⬜️| Cities and dates: |⬜️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️\nEnter the Departure Date:" )
        let leavingFrom = readLine()!
        print("\n-------------------------- ✈️ Departure Date: \(leavingFrom) ✈️ ------------------------------\n")
        
        ///---------------------------------------------end  Departure Date& Return Date----------------------------------------------------------------------------------------------------------------------------------------------------------
        
        
        ///---------------------------------------------Start Destination City---------------------------------------------------------------------------------------------------------------------------------------------------------
        
        var CityForm = ""
        let City = ["Riyadh" ,"jeddah" ,"Khobar","Tabuk"]
        repeat{
            print("Enter the Departure City'Choose only one city': \n\(City )")
            let UesrCityForm    = readLine()!
            CityForm  = UesrCityForm
            switch CityForm {
            case "Riyadh" :
                print("your choose Departure City Riyadh ")
            case "jeddah":
                print("your choose Departure City jeddah ")
            case "Khobar":
                print("your choose Departure City Khobar ")
            case "Tabuk":
                print("your choose Departure City Tabuk ")
                
            default:
                print("\n-----------------⛔️⛔️⛔️ Please enter the correct city name ⛔️⛔️⛔️-----------------\n")
            }
        }while CityForm != "Riyadh" && CityForm != "jeddah"  && CityForm != "Khobar"  && CityForm !=  "Tabuk"
        
        
        
        ///---------------------------------------------end   Destination City----------------------------------------------------------------------------------------------------------------------------------------------------------
        
        
        
        
        print("---------------------------------------------------------------------------------------------")
        print ("▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️⬜️| Passengers |⬜️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️")
        ///---------------------------------------------Start  Passengers----------------------------------------------------------------------------------------------------------------------------------------------------------
        /// Adult
        print("Enter the number of an Adult:" )
        let Adult = readLine()!
        
        ///child
        print("\nEnter the number of a childrn (2-11 years):" )
        let child = readLine()!
        
        print("--------------------- ✈️  number of an Adult : (\(Adult))  And child(ren): (\(child)) ✈️ ---------------------\n")
        ///---------------------------------------------end  Passengers----------------------------------------------------------------------------------------------------------------------------------------------------------
        
        
        ///---------------------------------------------start  Travel Clas----------------------------------------------------------------------------------------------------------------------------------------------------------
        
        ///Class
        print ("▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️⬜️| Travel Class |⬜️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️▫️")
        print("Please choose your ticket type:  \n 1.Economy \n 2.Business" )
        
        let Class1 = readLine()!
        if (Class1 == "1" ||  Class1 == "Economy"  || Class1 == "1.Economy")
        {
            print("----------------------------- ✈️  Class is: Economy  ✈️ -----------------------------------")
        }
        else{
            print("----------------------------- ✈️  Class is: Business  ✈️ -----------------------------------")
        }
        ///---------------------------------------------end  Travel Clas----------------------------------------------------------------------------------------------------------------------------------------------------------
        
        
        
        print ("\n-------------------------- ✈️  all flight deals ✈️ ----------------------------------------\n")
        
        
        struct Item {
            var FightNumber:String
            var airline : String
            var city : String
            var time : String
            var price : Int
            
            
        }
        
        var array = [
            
            Item(FightNumber: "FN71",airline: "flynas", city: " \(CityForm))", time: "09:30AM" , price: 349),
            Item(FightNumber: "AD89",airline: "Flyadea", city: " \(CityForm)" ,time: "11:30AM", price: 289),
            Item(FightNumber: "ASU2I",airline: "SAUDIA", city: " \(CityForm) " ,time: "12:30AM", price: 600)
        ]
        print ("-----------------------------------------------------------------")
        
        for city12 in array{
            print (city12)
        }
        print ("-----------------------------------------------------------------")
        print ("choose Filter by price: \n 1- ascending \n 2- descending")
        
        
        
        let filter = readLine()
        
        var fly = ""
        if (filter == "1" || filter == "ascending" ){
            array.sort { $0.price < $1.price }
            print ("-----------------------------------------------------------------")
            for city12 in array{
                print (city12)
            }
            
            print("\n-----------------✈️✈️✈️✈️ choose Fight Number:  ✈️✈️✈️✈️-----------------\n")
            
            
            //            var fly = ""
            fly    = readLine() ?? ""
            
            switch fly {
            case "AD89":
                print(array[0])
            case "FN71" :
                print(array[1])
            case "ASU2I":
                print(array[2])
            default:
                print("\n-----------------⛔️⛔️⛔️ Please Enter the correct Fight Number  ⛔️⛔️⛔️-----------------\n")
            }
            
            print("Do you want to print all your booking information? \n 1.Yes \n 2.No")
            
            
            all_information1()
            
            
            
        }
        
        
        
        
        else{
            array.sort { $1.price < $0.price }
            print ("-----------------------------------------------------------------")
            for city12 in array{
                print (city12)
                
            }
            
            print("\n-----------------✈️✈️✈️✈️ choose your Fight Number:  ✈️✈️✈️✈️-----------------\n")
            
            
            //            var fly = ""
            fly    = readLine() ?? ""
            switch fly {
            case "AD89":
                print(array[2])
                
            case "FN71" :
                print(array[1])
                
            case "ASU2I":
                print(array[0])
                
                
                
                
            default:
                print("\n-----------------⛔️⛔️⛔️ Please Enter the correct Fight Number  ⛔️⛔️⛔️-----------------\n")
                
            }
            
            
            
            print("Do you want to print all your booking information? \n 1.Yes \n 2.No")
            //            all_information1()
            all_information1()
            
        }
        
        
        
        
        
        
        
        
        func info_(){
            print( "\n -------------------- ✈️ guest information:✈️ -------------------- \n Your booking type is :\(bookingType)  \n  ----------  \n  Departure Date: \(leavingFrom)  \n  ----------    \n  from City: \(CityForm) \n  ----------  \n  To City:   \n  number Adult:(\(Adult))\n  ----------  \n  number child(ren): (\(child)) \n  ----------  \n  Class is: \(Class1) \n  ----------  \n  " )
        }
        
        func all_information1(){
            let all_information = readLine()
            
            
            if( all_information == "1" || all_information == "Yes" ){
                
                
                let arrayIndexi = array.first(where: { $0.FightNumber == "\(fly)"  })
                
                
                info_()
                print("Figh Number: \(arrayIndexi!.FightNumber ) airline: \(arrayIndexi!.airline ) city: \(arrayIndexi!.city )  Time: \(arrayIndexi!.time )  price: \(arrayIndexi!.price )")
                
                
            }
            
            
            if( all_information == "2" || all_information == "No" ){
                
                print("Thank you 💗 Have a nice trip")
            }
            
            
            print ("-----------------------------------------------------------------")
            
            
            
        }
        
        
        
        
        
        
        
        //
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    else{
        print ("--------------------- ✈️ Hello, Welcome to the Flight Reservation app ✈️ ---------------------")
    }
}while bookingType != "1" && bookingType != "2" && bookingType !=  "Round Trip "  &&  bookingType !=  "One-Way"










//
//  ViewController.swift
//  CounterWithUserDefault
//
//  Created by Ogulcan Kara on 10.09.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let d = UserDefaults.standard
        var counter = d.integer(forKey: "counter")
        counter += 1
        
        d.set(counter, forKey: "counter")
        counterLabel.text = "Counter : \(counter)"
        
        
       /* let d = UserDefaults.standard
        d.set("Ahmet", forKey: "Ad")
        d.set(18, forKey: "Yas")
        d.set(1.80, forKey: "Boy")
        d.set(true, forKey: "Medeni Hal")
        
        let arkadasListesi = ["Ali","Merve","Ece"]
        d.set(arkadasListesi, forKey: "Liste")
        let sehirlerListesi:[String:String] = ["16":"Bursa","34":"İstanbul"]
        d.set(sehirlerListesi, forKey: "Dict")
        
        //Veri okuma
        
        let ad = d.string(forKey: "Ad") ?? "İsim yok"
        let yas = d.integer(forKey: "Yas")
        let boy = d.double(forKey: "Boy")
        let medeniHal = d.bool(forKey: "Medeni Hal")
        
        let liste = d.array(forKey: "Liste") as? [String] ?? [String]()
        print(liste[0])
        
        let dict = d.dictionary(forKey: "Dict") as? [String:String] ?? [String:String]()
        print(dict)
        print(dict["16"]!)
        
        print("\(ad) \(yas) \(boy)")
        print(medeniHal)
        
       /* d.removeObject(forKey: "Ad")
        let adx = d.string(forKey: "Ad") ?? "İsim yok"
        print(adx) */
        
        d.set("Yeni Ad", forKey: "Ad")
        let adx = d.string(forKey: "Ad") ?? "İsim Yok"
        print(adx)
        */
        
    }


}


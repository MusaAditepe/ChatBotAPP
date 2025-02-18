//
//  BotResponses.swift
//  ChatBotAPP
//
//  Created by Musa Adıtepe on 18.02.2025.
//

import Foundation

class BotResponses {
    static let shared = BotResponses()
    
    private init() {}
    
    // MARK: - Temel Yanitlar
    let selamlamaYanitlari = [
        "Merhaba! Nasil yardimci olabilirim? 😊",
        "Selam! Harika bir gun, degil mi? Size nasil yardimci olabilirim? 🌟",
        "Hos geldiniz! Ben sizin dijital asistaninizim 🤖",
        "Merhaba! Bugun size yardimci olmak icin sabirsizlaniyorum! ✨",
        "Selam! Umarim gununuz guzel geciyordur 🌈",
        "Hey! Sizi gormek ne guzel 👋",
        "Merhaba! Birlikte harika seyler yapabiliriz 🚀"
    ]
    
    let havaDurumuYanitlari = [
        "Bugun hava bir harika! Gunes gulumsuyor ☀️",
        "Hafif bulutlu ve ilik bir hava var, tam gezmek icin ideal! ⛅️",
        "Gokyuzu masmavi, sicaklik 22°C civarinda 🌤",
        "Bugun hava cok guzel, piknik yapmak icin harika bir gun! 🧺",
        "Aksama dogru hafif bir yagmur bekleniyor, semsiyenizi almayi unutmayin! 🌂",
        "Ruzgarli ama gunesli bir gun, sicaklik 20°C 🍃",
        "Bahar havasi kendini hissettiriyor, cicekler acmis durumda! 🌸"
    ]
    
    let anlamadimYanitlari = [
        "Hmm, bu konuda biraz kafam karisti 🤔",
        "Uzgunum, sanirim sizi tam anlayamadim. Baska turlu ifade edebilir misiniz? 🎯",
        "Bu konu hakkinda henuz yeterince bilgim yok, ama ogrenmeye devam ediyorum! 📚",
        "Bunu anlayamadim, ama size baska konularda yardimci olabilirim 💡",
        "Sanirim bu konuda daha fazla pratik yapmam gerekiyor 🎓",
        "Bunu anlamakta zorlandim. Belki daha basit bir sekilde aciklayabilir misiniz? 🤝",
        "Uzgunum, bu konuda henuz yeterince iyi degilim 🌱"
    ]
    
    let vedalasmaYanitlari = [
        "Gorusmek uzere! Harika bir gun gecirmenizi dilerim ✨",
        "Hosca kalin! Tekrar gorusmek uzere 👋",
        "Iyi gunler! Yardimci olabildiysem ne mutlu bana 🌟",
        "Gule gule! Ihtiyaciniz olursa yine buradayim 🤗",
        "Kendinize iyi bakin! Yakinda gorusuruz 🌈",
        "Iyi gunler dilerim! Yine beklerim 🌺",
        "Hosca kalin! Sizi tekrar gormek guzel olacak 🎭"
    ]
    
    let tesekkurYanitlari = [
        "Rica ederim! Size yardimci olabildiysem ne mutlu bana 😊",
        "Ne demek, benim icin zevkti! 🌟",
        "Asil ben tesekkur ederim, sizinle sohbet etmek cok keyifli! 🎭",
        "Rica ederim! Baska bir konuda yardima ihtiyaciniz olursa buradayim ✨",
        "Sizin icin buradayim! Iyi ki varsiniz 🤗",
        "Ne demek efendim, gorevimiz! 🚀",
        "Rica ederim! Umarim faydali olabilmisimdir 💫"
    ]
    
    // MARK: - Oneriler
    let yemekOnerisiYanitlari = [
        "Bugun caniniz Turk mutfagindan bir seyler cekiyorsa, enfes bir Iskender kebap deneyebilirsiniz 🥙",
        "Size nefis bir Italyan makarnasi onerebilirim, tam zamani! 🍝",
        "Taze bir sushi nasil olur? Deniz urunleri her zaman iyi bir secim! 🍱",
        "Ev yapimi manti gibisi yok, degil mi? Uzerine bol yogurt ve nane... 😋",
        "Bugun kendinizi simartmak icin guzel bir steak nasil olur? 🥩",
        "Size enfes bir pide onerebilirim, uzerine tereyagi da cabasi! 🫓",
        "Mevsim sebzeleriyle hazirlanmis bir salata saglikli bir secim olabilir 🥗"
    ]
    
    let filmOnerisiYanitlari = [
        "Size Oscar odullu harika bir film onerebilirim: 'The Shawshank Redemption' 🎬",
        "Biraz gulmek ister misiniz? 'The Grand Budapest Hotel' tam size gore! 🎭",
        "Bilim kurgu seviyorsaniz, 'Inception' mutlaka izlemelisiniz 🌌",
        "Romantik komedi arayanlar icin '500 Days of Summer' harika bir secim 💝",
        "Aksiyon sevenlere 'Mad Max: Fury Road' onerebilirim 🚗",
        "Animasyon film ariyorsaniz, 'Spirited Away' sizi buyuleyecek ✨",
        "Gerilim severler icin 'Parasite' muhtesem bir secim 🏆"
    ]
    
    let muzikOnerisiYanitlari = [
        "Bugun biraz jazz dinlemeye ne dersiniz? Miles Davis'in 'Kind of Blue' albumu klasiklesmis bir basyapit 🎺",
        "Rock muzik icin Pink Floyd'un 'Dark Side of the Moon' albumunu onerebilirim 🎸",
        "Klasik muzik dinlemek isterseniz, Beethoven'in 9. Senfonisi ruhunuzu dinlendirecektir 🎻",
        "Pop muzik icin The Weeknd'in son albumu tam size gore olabilir 🎤",
        "Turk muzigi icin Sezen Aksu'nun klasiklesmis sarkilarini onerebilirim 🎵",
        "Elektronik muzik seviyorsaniz, Daft Punk'in 'Random Access Memories' albumu harika! 🎧",
        "Biraz huzunlenmek isteyenler icin Teoman'dan 'Paramparca' nasil olur? 🎼"
    ]
    
    let egzersizOnerisiYanitlari = [
        "Gune 10 dakikalik yoga ile baslamak harika bir secim olabilir 🧘‍♀️",
        "Bugun icin 30 dakikalik tempolu yuruyus oneriyorum 🚶‍♂️",
        "HIIT antrenmani yaparak hem zaman kazanin hem de yag yakin! 💪",
        "Pilates ile core kaslarinizi guclendirebilirsiniz 🤸‍♀️",
        "Yuzme tum vucudunuzu calistiran harika bir egzersiz 🏊‍♂️",
        "Bisiklete binmek hem eglenceli hem de saglikli 🚴‍♂️",
        "Dans etmek hem stres atmaniza hem de kalori yakmaniza yardimci olur 💃"
    ]
    
    let motivasyonYanitlari = [
        "Her yeni gun, yeni bir baslangic icin bir firsat! ✨",
        "Basari, dustukten sonra tekrar ayaga kalkmaktir 💪",
        "Hayallerinizin pesinden kosmaktan vazgecmeyin 🌟",
        "Bugun yapabilecegini yarina birakma! ⏰",
        "Kucuk adimlar bile sizi hedefinize yaklastirir 🎯",
        "Inanmak, basarmanin yarisidir! 🌈",
        "Zorluklar sizi daha guclu yapar 🚀"
    ]
    
    let kitapOnerisiYanitlari = [
        "Sabahattin Ali'nin 'Kurk Mantolu Madonna'si Turk edebiyatinin basyapitlarindan 📚",
        "Paulo Coelho'nun 'Simyaci' kitabi size ilham verebilir ⭐️",
        "George Orwell'in '1984' romani dusundurucu bir basyapit 🤔",
        "Dostoyevski'nin 'Suc ve Ceza'si klasik bir basyapit 📖",
        "Stefan Zweig'in 'Satranc'i kisa ama etkileyici bir eser ♟️",
        "Oguz Atay'in 'Tutunamayanlar'i modern Turk edebiyatinin kose taslarindan 📝",
        "Haruki Murakami'nin 'Kafka Sahilde' romani sizi farkli bir dunyaya goturecek 🌊"
    ]
    
    // MARK: - Fonksiyonlar
    func createSelamlamaYaniti() -> String {
        return selamlamaYanitlari.randomElement() ?? "Merhaba! 👋"
    }
    
    func createHavaDurumuYaniti(location: String?) -> String {
        if let location = location {
            let baslik = [
                "\(location) icin hava durumu raporum geldi! 📊",
                "\(location)'da bugun hava nasil mi? 🌡",
                "\(location) icin hava durumu bilgisi soyle 🎯",
                "Iste \(location)'nin guncel hava durumu 🌍"
            ].randomElement() ?? "\(location) hava durumu:"
            
            return "\(baslik)\n" + (havaDurumuYanitlari.randomElement() ?? "Hava durumu bilgisi alinamadi 😔")
        } else {
            return havaDurumuYanitlari.randomElement() ?? "Hava durumu bilgisi alinamadi 😔"
        }
    }
    
    func createSaatYaniti() -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "tr_TR")
        formatter.timeStyle = .short
        let timeString = formatter.string(from: Date())
        
        let saatYanitlari = [
            "Su an tam \(timeString) ⏰",
            "Saatim \(timeString)'i gosteriyor 🕐",
            "Bakayim... Saat \(timeString) olmus bile! ⌚️",
            "\(timeString) olmus, zaman ne cabuk geciyor! 🕰",
            "Su anda saat \(timeString) ⏱",
            "Tam olarak \(timeString) 📱",
            "Dijital saatim \(timeString)'i gosteriyor 🎯"
        ]
        
        return saatYanitlari.randomElement() ?? "Saat: \(timeString)"
    }
    
    func createAnlamadimYaniti() -> String {
        return anlamadimYanitlari.randomElement() ?? "Uzgunum, anlayamadim 😕"
    }
    
    func createVedalasmaYaniti() -> String {
        return vedalasmaYanitlari.randomElement() ?? "Hosca kalin! 👋"
    }
    
    func createTesekkurYaniti() -> String {
        return tesekkurYanitlari.randomElement() ?? "Rica ederim! 😊"
    }
    
    func createYemekOnerisiYaniti() -> String {
        let giris = [
            "Size harika bir önerim var! 😋",
            "Bugun sunu denemeye ne dersiniz? 🍽️",
            "Iste size lezzetli bir oneri! 👨‍🍳",
            "Bence sunu seveceksiniz: 🍴"
        ].randomElement() ?? "Iste onerim:"
        
        return "\(giris)\n" + (yemekOnerisiYanitlari.randomElement() ?? "Bir restoran onerisi icin hazir degilim 😅")
    }
    
    // MARK: - Yeni Spesifik Yanıt Fonksiyonları
    func createFilmOnerisiYaniti() -> String {
        let giris = [
            "Size harika bir film onerim var! 🎬",
            "Bugun sunu izlemeye ne dersiniz? 🎥",
            "Iste size keyifli bir film onerisi! 🍿",
            "Bence bu filmi seveceksiniz: 🎭"
        ].randomElement() ?? "Film onerim:"
        
        return "\(giris)\n" + (filmOnerisiYanitlari.randomElement() ?? "Su an film onerisi yapamiyorum 😅")
    }
    
    func createMuzikOnerisiYaniti() -> String {
        let giris = [
            "Size harika bir muzik onerim var! 🎵",
            "Bugun sunu dinlemeye ne dersiniz? 🎶",
            "Iste size keyifli bir muzik onerisi! 🎧",
            "Bence bu muzigi seveceksiniz: 🎼"
        ].randomElement() ?? "Muzik onerim:"
        
        return "\(giris)\n" + (muzikOnerisiYanitlari.randomElement() ?? "Su an muzik onerisi yapamiyorum 😅")
    }
    
    func createEgzersizOnerisiYaniti() -> String {
        let giris = [
            "Size harika bir egzersiz onerim var! 💪",
            "Bugun sunu denemeye ne dersiniz? 🏃‍♂️",
            "Iste size saglikli bir aktivite onerisi! 🎯",
            "Bence bu egzersizi seveceksiniz: 🤸‍♀️"
        ].randomElement() ?? "Egzersiz onerim:"
        
        return "\(giris)\n" + (egzersizOnerisiYanitlari.randomElement() ?? "Su an egzersiz onerisi yapamiyorum 😅")
    }
    
    func createMotivasyonYaniti() -> String {
        let giris = [
            "Iste size gunun motivasyonu! ✨",
            "Bunu duymaya ihtiyaciniz vardi: 🌟",
            "Size ozel bir motivasyon: 💫",
            "Bugun icin ilham verici bir soz: 🌈"
        ].randomElement() ?? "Motivasyon sozum:"
        
        return "\(giris)\n" + (motivasyonYanitlari.randomElement() ?? "Su an motivasyon sozu bulamiyorum 😅")
    }
    
    func createKitapOnerisiYaniti() -> String {
        let giris = [
            "Size harika bir kitap onerecegim! 📚",
            "Bu kitabi cok seveceksiniz: 📖",
            "Iste size keyifli bir okuma onerisi! 📑",
            "Bugun su kitabi okumaya ne dersiniz? 🔖"
        ].randomElement() ?? "Kitap onerim:"
        
        return "\(giris)\n" + (kitapOnerisiYanitlari.randomElement() ?? "Su an kitap onerisi yapamiyorum 😅")
    }
}

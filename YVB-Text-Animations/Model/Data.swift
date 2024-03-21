//
//  Data.swift
//  YVB-Text-Animations
//
//  Created by Scott McAlister on 3/18/24.
//

import Foundation

struct Data {
    let verses: [Verse] = [
        Verse(id: 0,
              address: "Joshua 24:15",
              text: "And if it is evil in your eyes to serve the Lord, choose this day whom you will serve, whether the gods your fathers served in the region beyond the River, or the gods of the Amorites in whose land you dwell. But as for me and my house, we will serve the Lord."),
        Verse(id: 1, address: "Psalm 23",
              text: """
    The Lord is my shepherd; I shall not want. 
    He makes me lie down in green pastures. He leads me beside still waters.
    He restores my soul. He leads me in paths of righteousness for his name’s sake. 
    Even though I walk through the valley of the shadow of death, I will fear no evil, for you are with me; your rod and your staff, they comfort me.
    You prepare a table before me in the presence of my enemies; you anoint my head with oil; my cup overflows.
    Surely goodness and mercy shall follow me all the days of my life, and I shall dwell in the house of the Lord forever.
    """),
        Verse(id: 2, address: "Micah 6:8",
              text: "He has told you, O man, what is good; and what does the Lord require of you but to do justice, and to love kindness, and to walk humbly with your God?"),
        Verse(id: 3, address: "Matthew 28:19-20",
              text: "Go therefore and make disciples of all nations, baptizing them in the name of the Father and of the Son and of the Holy Spirit, teaching them to observe all that I have commanded you. And behold, I am with you always, to the end of the age."),
        Verse(id: 4, address: "John 3:16",
              text: "For God so loved the world, that he gave his only Son, that whoever believes in him should not perish but have eternal life."),
        Verse(id: 5, address: "Philippians 4:13",
              text: "I can do all things through him who strengthens me."),
        Verse(id: 6, address: "James 2:26",
              text: "For as the body apart from the spirit is dead, so also faith apart from works is dead.")
    ]
}

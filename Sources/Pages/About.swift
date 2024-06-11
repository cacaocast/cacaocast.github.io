//
//  About.swift
//  
//
//  Created by Philippe Guitard on 2024-05-29.
//

import Foundation
import Ignite

struct About: StaticPage {
    var title = "À propos"

    func body(context: PublishingContext) -> [BlockElement] {
        Section {
            Text(markdown: "**Bienvenue** à CacaoCast! Ce balado en français vous est offert par [Philippe Guitard](https://mastodon.social/@philippeguitard) et [Philippe Casgrain](https://mastodon.social/@philippec). Toutes les trois semaines, ils discutent des sujets d’actualité qui concernent les développement sur les plateformes d’Apple. Vous trouverez tous les balados sur ce site mais vous pouvez aussi vous y abonner dans Podcasts et Spotify:")
        }
        .margin(.top, .extraLarge)
        .padding(.horizontal, .extraLarge)
            
        Section {
            Section {}
            
            Section {
                Group {
                    Link(target: "http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewPodcast?id=305272104") {
                        Image(decorative: "/images/Apple_Podcast_Icon.png")
                            .frame(width: 64)
                    }
                }
            }
            
            Section {
                Group {
                    Link(target: "https://open.spotify.com/show/5vAwOoL8LCA9F9v0MWHpXB") {
                        Image(decorative: "/images/Spotify_Podcast_Icon.png")
                            .frame(width: 64)
                    }
                }
            }
            
            Section {}
        }
        .horizontalAlignment(.center)
        
        Section {
            Section {}
            
            Section {
                Text("Podcasts")
                    .font(.title4)
            }
            
            Section {
                Text("Spotify")
                    .font(.title4)
            }
            
            Section {}
        }
        .horizontalAlignment(.center)
        
        Section {
            Table {
                Row {
                    Card {
                        Link(target: "https://mastodon.social/@philippec") {
                            Image(decorative: "/images/PhilippeC.jpg")
                                .frame(width: 128, height: 128)
                        }
                    } footer: {
                        Text(markdown: "**Philippe<br>Casgrain**")
                            .margin(0)
                    }

                    Text("Développeur vétéran Mac et Cocoa, il consacre beacoup de son temps dans la communauté. Co-créateur du chapitre local de CacaoHeads et du balado CacaoCast. Philippe fait du vélo toute l'année, et adore sa femme et ses trois filles.")
                        .fontWeight(.ultraLight)
                }
                
                Row {
                    Card {
                        Link(target: "https://mastodon.social/@philippeguitard") {
                            Image(decorative: "/images/PhilippeG.jpg")
                                .frame(width: 128, height: 128)
                        }
                    } footer: {
                        Text(markdown: "**Philippe<br>Guitard**")
                            .margin(0)
                    }
                    
                    Text("Entousiaste d'Apple depuis son premier Apple ][+ jusqu'aux derniers Macs et iPhones, Philippe est ingénieur de données dans le monde des grandes entreprises. Co-créateur du balado CacaoCast. Il pratique les courses d'obstacles, fait du vélo quand il fait beau (pas fou!) et adore lui aussi sa petite famille.")
                        .fontWeight(.ultraLight)
                }
            }
        }
        .margin(.top, .extraLarge)
        .padding(.horizontal, .extraLarge)
    }
}

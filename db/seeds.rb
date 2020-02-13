# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Genre.destroy_all
Artist.destroy_all
User.destroy_all
Song.destroy_all
Favorite.destroy_all

image_arr = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyF7K0XOoUQgJLJkp9JYmYKDshxMVsd8sXVrSbRXiMIb0lP5pA", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQiM83D5pKwmGfLg8_aTfniGOnWyUybIShU5hour96hHU2mnI6j", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTKVJyhRCiX6AVwCAuxPnFhzzJS5ZhhJMRSFPfZkA4-Ji3oOtx8", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQWkOM5ZeJpXjnIW2BxvXsyHKYKtMz8Kb0S7RSbDJEXEZ4KhIU6", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQFxjWZaQ6DkHvtyETIH251i7Mdn6c-pvd6LnFTCwjuKXDEGnF5", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTKWjGM_mD3w0nQ7N0XOLDVjag1wq9BifqTomMLTNpAbdRM9WcG", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTCshe8TA7FiUzNHQ99Rl3PTQM0D31n3DBsB_EyxOjv_llGK-hJ", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS8Vv9UE__caiNudXphesNmU1-vT1zeMvgNDTEOa-xs6b8yJNd7", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQs0gxO_A9jT7Bg93_06Lm1cuWrX64B70tgC_xBWMK3tQL7kOdM", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT8bLiEPhaIfjIylxe0gVFLmFF-IbIrkSlkuKv_gkd_sf2XNU-t", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRn80jR35q-kVJZysjtCghEw6WlJuPgtsGzb5wyUA50V_8xqBaP", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSUweyd3pUlTIwMk90itwpEg1akRCND2lSGKS1fm-I3fFjqBPwm", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8iYAf0TAhn88oCCPy1onyx6ASLj0bw7h66j0obaAIDnmu6W-q", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSz4cdinwdCKZYBnOV_3g42oGVWpFYKch2__zT6KpDajemLnMje", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTV2DP7lWJr07fXNzw3UdtSCsy9lmpmHSVJQ112hcKlQiuIkurk", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTvLTbmlfxLqfxSjK8WBFZGFokVmgwmQiaGuDlexNYKF9N-7AUp", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTY4_tA-7D1-ljve-rG3o5LB53NvfO99UhoUN0Xi7wx5KOfS4jY", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRyCRCsU4pO8D4TnQxqyNn8_HJNaeVnWGLW0mgGiJM_yPYYH7Xp", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRafYWAdQO2q890csRNwTQsEbgTwyYc4VY6fO52KXPN15RSkecl", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQFKsCmZ5uiK33YFZe6I0VY0Aze0te1qEusA7TwciiGY80QhM65", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQfYNbaHvRVaIt88x5w74pQU0IaxCso8DlIe7-JffWvC7Ix7Spg", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRcuYsmUPkvrFVbY12XTk6eZ1ZGCTrZAiua-bvkhh8AccgWqEeH", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQhAOR4OXDpiqSWCobAWbN7QGG8OCWm0oK1qVh7_s2H0Der3VnL", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSw5B7l4XaX8Un_ykC-K7AlwrsLbmEH1HWF301VTRllDuXEXWyK", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT92nXJJKOscMX4XBdbRhwbnztrT-SjTpBknPwvtKXh1-BWlpOL", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcReFc9_R4fzpH1PZldQvBVAB7BXT2cnJBRcTbKE2_rtXk9eGsMR", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR24i03gSDrd8yj7M5c1AqXCRn1iF4qt0DergYFo7jodcD6xNY3", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTQQhPCRsTI-jzkuS1MfFna8wkj7s7d7GzqWsB11FjPJ34Q_m3W", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTejCig4aYlgVvLOPgndVGDRfRydHocTxFElxvRsrfgGGKXyYQ6", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQfiHx-t9X_6Nfdb6SsrqvKTMfOp4Lf2csCoBTl3CqVPsIDJYX1", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ1NOEkzRVNISBvYH0NrviYCoI872VqW0aXrq8FpsYcmtxXFplF", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTnCRK6mL0aQBVASCWOX2SOCAO_rDhPwt0u2Zsp8Ieohk6jxxDJ", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRHr521Yc1RB0diZGoQALT6Or3oU8vh671iKGUFmnLg_Pd91XLJ", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTTCKK4snvnG5ngHwgQKS_6BtTwlmjfMPO7-B7P4IeSEqsxzRmt", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTFFk9NscaIug3yy-w1hIARpJJkssZGLgxIErNuzu-TsBB0KTi1", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcScjDjEKICEOxINuepVwR8spHpJng1KkSv9Jn4yjrdeci2lJxKX", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRacATVivRfHB96Yy6fTZFdzWuUBw74SHO4x1r_gBDi_rrQmNco", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTEp-8CHC6mLAX-xUOSyvx2hKfLmJGETn9kpG6SUHYpgbFEYAe4", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSc6bSRm78HxKFpfZ2mCv1Gk4t3nRUwghbpW5ipHSUr_aOOQl5z", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRWBAeob5daXPiksYSzcVpHHCZeqpWGVUnLthQDPMAwE6BxmKo2", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSAxPd5QRFOqWh2bWE4honyBkS5LnBv-1kYqfk4wwfLQfmoHIFF" 
    ]

    genre_image_arr = [ 
        "https://scx1.b-cdn.net/csz/news/800/2018/europeslostf.jpg", 
        "https://www.thoughtco.com/thmb/LKYahK03uU7fzS2tMMMsNEc0Qcg=/1500x1000/filters:no_upscale():max_bytes(150000):strip_icc()/tundra-animal-5be07ffe46e0fb0026dfda62.jpg",
        "https://6469da.medialib.edu.glogster.com/phJDHMveOgTqImqzrnIG/media/b9/b91ba43401ef9c3399bdfa95d688f7f8b95bdaef/northern-lights.jpg",
        "https://i.pinimg.com/originals/85/ef/4a/85ef4a6357f409d691e27291ed609c33.jpg",
        "https://www.scienceabc.com/wp-content/uploads/2019/12/Beautiful-autumn-scene-of-Hintersee-lake-Andrew-Mayovskyys.jpg",
        "https://external-preview.redd.it/oss8vSsvhv8z_fEjfQwH9lNBarLEJn1HSR7ZrlqTpKg.png?width=960&crop=smart&format=pjpg&auto=webp&s=43735796f365576ce43496d17ece8c23fe370173",
        "https://media.treehugger.com/assets/images/2019/06/Picea_glauca_taiga.jpg.860x0_q70_crop-scale.jpg",
        "https://gameplay.tips/uploads/posts/2018-12/1545673124_atlas-2.jpg",
        "https://www.planetware.com/photos-large/USAK/us-alaska-kenai-fjords.jpg", 
        "https://www.scienceabc.com/wp-content/uploads/2019/12/White-cloud-formations-in-a-bright-blue-sky-over-the-beautiful-African-savannahCobus-Oliviers.jpg",
        "https://angiegreaves.com/wp-content/uploads/2018/06/52570bf61772c62f0054edae6a16d437-reggae-music-background.jpg",
        "https://www.side-line.com/wp-content/uploads/2019/03/Alien-Skin.jpg",
        "https://66.media.tumblr.com/241062cb7a04736be6fc8810414d9f22/tumblr_on76cr3kX81uiyxrmo1_1280.png",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT32KUI7oW5KKlKuTYBropa8y-6ali5kMe71_sEIrUa6kfeYglE",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQIh1s9NmZ84Xz6XK9il0qQ6Q-b68I-SN50FyAhC05Az7okXLHV",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRKB_etUkKN2NEl7b3nTxcqu4ZxNZIL_asvXISZyvwVJvvQSCgt",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTaee9G3S2RHRrL5k-ld-4ecHqMGZT_fTSg9tsnHzroKnxS5Zt2",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQInMeX5u5uuvyiZBbdw3lx1_NkYjAWyl47avJWLjK8dj4c1o9f"
        ]
        
    

10.times { Genre.create(name: Faker::Music.genre, image: genre_image_arr.sample) }

50.times { Artist.create(name: Faker::Music.band, age: rand(21..65), bio: Faker::Quote.famous_last_words, image: image_arr.sample) }

User.create(name: "Miles", password: "123") 

75.times { Song.create(name: Faker::Music.album, image: "image of sad", genre_id: Genre.all.sample.id, artist_id: Artist.all.sample.id) }



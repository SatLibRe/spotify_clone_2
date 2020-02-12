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
    

10.times { Genre.create(name: Faker::Music.genre, image: "text") }

50.times { Artist.create(name: Faker::Music.band, age: 10, bio: Faker::Lorem.paragraphs(number: 1), image: image_arr.sample) }

User.create(name: "Miles", password: "123") 

75.times { Song.create(name: Faker::Music.album, image: "image of sad", genre_id: Genre.all.sample.id, artist_id: Artist.all.sample.id) }



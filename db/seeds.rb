# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless Rails.env.production?
  Image.create([
    {
      title: 'Jojo_1',
      url: 'https://images8.alphacoders.com/755/thumb-1920-755323.jpg'
    },
    {
      title: 'Jojo_2',
      url: 'https://wallpaperplay.com/walls/full/2/0/7/62269.jpg'
    },
    {
      title: 'Jojo_3',
      url: 'https://i.pinimg.com/originals/2f/49/1e/2f491eea4b1eb24f498d07e3856b46eb.jpg'
    },
    {
      title: 'Jojo_4',
      url: 'https://wallpapercave.com/wp/wp5860192.png'
    },
    {
      title: 'Jojo_5',
      url: 'https://www.itl.cat/pngfile/big/42-426816_jojo-wallpaper-dump-part-crew.jpg'
    },
    {
      title: 'Jojo_6',
      url: 'https://honeysanime.com/wp-content/uploads/2019/02/JoJo-no-Kimyou-na-Bouken-Part-5-Ougon-no-Kaze-Wallpaper-560x315.jpg'
    },
    {
      title: 'Jojo_7',
      url: 'https://1.bp.blogspot.com/-dskMqT3ULLs/XApCQT8QfcI/AAAAAAAALb0/3VRIofOeIxoi5Q6k4NP8ODC3Aa3Vr8tYwCLcBGAs/s1600/JoJo%2BGolden%2BWind.jpg'
    },
    {
      title: 'Jojo_8',
      url: 'https://i.ytimg.com/vi/4Vjpvtte2mc/maxresdefault.jpg'
    },
    {
      title: 'Jojo_9',
      url: 'https://freeaddon.com/wallpaper/jojosbizarreadventure/thumb444x250-01.jpg'
    },
    {
      title: 'Jojo_10',
      url: 'https://images.hdqwalls.com/wallpapers/jojo-4k-99.jpg'
    },
    {
      title: 'Jojo_11',
      url: 'https://www.lefthudson.com/wp-content/uploads/2019/11/jojo-part-4-wallpaper-awesome-jojolion-part-8-jojolion-in-2019-2019-of-jojo-part-4-wallpaper.jpg'
    },
    {
      title: 'Jojo_12',
      url: 'https://wallpaperplay.com/walls/full/9/6/0/62275.jpg'
    },
    {
      title: 'Jojo_13',
      url: 'https://a-static.besthdwallpaper.com/jojo-s-bizzare-adventure-giorno-giovanna-wallpaper-2560x2048-23769_33.jpg'
    },
    {
      title: 'Jojo_14',
      url: 'https://vistapointe.net/images/jojos-bizarre-adventure-wallpaper-2.jpg'
    },
    {
      title: 'Jojo_15',
      url: 'https://m.media-amazon.com/images/M/MV5BZDc3NGQ3ZWQtYjNkOC00MjhiLTg2N2YtNmZlOGNiZTFkOWNhXkEyXkFqcGdeQXVyNjc2NjA5MTU@._V1_UY1200_CR105,0,630,1200_AL_.jpg'
    },
    {
      title: 'Jojo_16',
      url: 'https://media.comicbook.com/2019/07/jojo-b-a-1180465-1280x0.jpeg'
    },
    {
      title: 'Jojo_17',
      url: 'https://media.comicbook.com/2019/07/golden-wind-1178428.jpeg'
    },
    {
      title: 'Jojo_18',
      url: 'https://media.cdn.adultswim.com/uploads/20191018/thumbnails/2_1910181754363-promo_JoJoGoldenWind_Premieres_Sat_60.jpg'
    },
    {
      title: 'Jojo_19',
      url: 'https://miro.medium.com/max/2560/1*VQ8_pWX7j-bBmxiCqJGdKA.jpeg'
    },
    {
      title: 'Jojo_20',
      url: 'https://i0.wp.com/butwhythopodcast.com/wp-content/uploads/2020/02/jjba1.jpg'
    }
  ])
end

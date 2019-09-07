# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  [
    {
      id: 1,
      name: 'Haru',
      img: 'http://drive.google.com/uc?export=view&id=15MGpGfPOBbDUYYMtiAfKOFt541l0TZNa',
      created_at: '2019-09-07 13:44:00',
      updated_at: '2019-09-07 13:44:00'
    },
    {
        id: 2,
        name: 'ぬん',
        img: 'http://drive.google.com/uc?export=view&id=1L6oUe07cOwScJYSfGcPypm1cY6bm9NE-',
        created_at: '2019-09-07 13:44:00',
        updated_at: '2019-09-07 13:44:00'
    },
    {
        id: 3,
        name: 'manamin',
        img: 'http://drive.google.com/uc?export=view&id=1L6oUe07cOwScJYSfGcPypm1cY6bm9NE-',
        created_at: '2019-09-07 13:44:00',
        updated_at: '2019-09-07 13:44:00'
    },
  ]
)

Shop.create!(
  [
    {
      id: 1,
      brand_id: 1,
      name: '原宿表参道店',
      lat: 35.6584863,
      lng: 139.6934615,
      created_at: '2019-09-07 13:44:00',
      updated_at: '2019-09-07 13:44:00'
    },
    {
        id: 2,
        brand_id: 1,
        name: '渋谷スペイン坂店',
        lat: 35.6554055,
        lng: 139.695412,
        created_at: '2019-09-07 13:44:00',
        updated_at: '2019-09-07 13:44:00'
    },
  ]
)

Brand.create!(
  [
    {
      id: 1,
      name: 'Gong Cha',
      created_at: '2019-09-07 13:44:00',
      updated_at: '2019-09-07 13:44:00'
    },
  ]
)

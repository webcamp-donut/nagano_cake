# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.create!([
	{
    name: 'ケーキ',
    status: 1
    },
    {
    name: 'プリン',
    status: 1
    },
    {
    name: 'キャンディ',
    status: 1
    },
    {
    name: '焼き菓子',
    status: 1
    }
])

Product.create!([
	{
    genre_id: 1,
    name: 'バナナケーキ',
    explanation: '美味しい',
    tax_excluded_price: '3200',
    sale_status: 0,
    image: File.open('./app/assets/images/cake-banana.jpg')
    },
	{
    genre_id: 1,
    name: 'チーズケーキ',
    explanation: '美味しい',
    tax_excluded_price: '600',
    sale_status: 0,
    image: File.open('./app/assets/images/cake-cheese.jpg')
    },
    {
    genre_id: 1,
    name: '抹茶ロールケーキ',
    explanation: '美味しい',
    tax_excluded_price: '750',
    sale_status: 0,
    image: File.open('./app/assets/images/cake-greentea.jpg')
    },
	{
    genre_id: 2,
    name: 'ブラックベリープリン',
    explanation: '美味しい',
    tax_excluded_price: '500',
    sale_status: 0,
    image: File.open('./app/assets/images/pudding-berry.jpg')
    },
	{
    genre_id: 2,
    name: 'キャラメルプリン',
    explanation: '美味しい',
    tax_excluded_price: '500',
    sale_status: 0,
    image: File.open('./app/assets/images/pudding-caramel.jpg')
    },
    {
    genre_id: 2,
    name: 'ストロベリープリン',
    explanation: '美味しい',
    tax_excluded_price: '600',
    sale_status: 0,
    image: File.open('./app/assets/images/pudding-strawberry.jpg')
    },
	{
    genre_id: 3,
    name: '瓶詰め合わせキャンディ',
    explanation: '美味しい',
    tax_excluded_price: '550',
    sale_status: 0,
    image: File.open('./app/assets/images/candy-bin.jpg')
    },
	{
    genre_id: 3,
    name: 'アイスキャンディ',
    explanation: '美味しい',
    tax_excluded_price: '300',
    sale_status: 0,
    image: File.open('./app/assets/images/candy-ice.jpg')
    },
    {
    genre_id: 3,
    name: 'ハート型キャンディ',
    explanation: '美味しい',
    tax_excluded_price: '600',
    sale_status: 0,
    image: File.open('./app/assets/images/candy-heart.jpg')
    },
	{
    genre_id: 4,
    name: 'マフィン',
    explanation: '美味しい',
    tax_excluded_price: '250',
    sale_status: 0,
    image: File.open('./app/assets/images/baked-muffin.jpg')
    },
	{
    genre_id: 4,
    name: 'マカロン',
    explanation: '美味しい',
    tax_excluded_price: '200',
    sale_status: 1,
    image: File.open('./app/assets/images/baked-macarons.jpg')
    },
    {
    genre_id: 4,
    name: 'クッキー詰め合わせ',
    explanation: '美味しい',
    tax_excluded_price: '1600',
    sale_status: 1,
    image: File.open('./app/assets/images/baked-cookie.jpg')
    }
 ])

Member.create!([
	{
    email: 'aaa@aaa',
    password: 'aaaaaa',
    last_name: '山田',
    first_name: '太郎',
    kana_last_name: 'ヤマダ',
    kana_first_name: 'タロウ',
    postal_code: '1111111',
    address: '東京都渋谷区神南1-1-1',
    phone: '0801111111',
    withdrawal_status: 1
    },
    {
    email: 'qqq@qqq',
    password: 'qqqqqq',
    last_name: '佐藤',
    first_name: '次郎',
    kana_last_name: 'サトウ',
    kana_first_name: 'ジロウ',
    postal_code: '2222222',
    address: '東京都渋谷区神南2-2-2',
    phone: '0802222222',
    withdrawal_status: 1
    },
    {
    email: 'sss@sss',
    password: 'ssssss',
    last_name: '中村',
    first_name: '花子',
    kana_last_name: 'ナカムラ',
    kana_first_name: 'ハナコ',
    postal_code: '3333333',
    address: '東京都渋谷区神南3-3-3',
    phone: '0803333333',
    withdrawal_status: 1
    },
    {
    email: 'www@www',
    password: 'wwwwww',
    last_name: '林',
    first_name: '敦子',
    kana_last_name: 'ハヤシ',
    kana_first_name: 'アツコ',
    postal_code: '4444444',
    address: '東京都渋谷区神南4-4-4',
    phone: '0804444444',
    withdrawal_status: 1
    }
])
Admin.create!([
	{
    email: ENV['ADDRESS'],
    password: ENV['PASSWORD']
    }
])


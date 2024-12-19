prefecture_data = [
  {
    name: "北海道",
  },
  {
    name: "青森県",
  },
  {
    name: "岩手県",
  },
  {
    name: "宮城県",
  },
  {
    name: "秋田県",
  },
  {
    name: "山形県",
  },
  {
    name: "福島県",
  },
  {
    name: "茨城県",
  },
  {
    name: "栃木県",
  },
  {
    name: "群馬県",
  },
  {
    name: "埼玉県",
  },
  {
    name: "千葉県",
  },
  {
    name: "東京都",
  },
  {
    name: "神奈川県",
  },
  {
    name: "新潟県",
  },
  {
    name: "富山県",
  },
  {
    name: "石川県",
  },
  {
    name: "福井県",
  },
  {
    name: "山梨県",
  },
  {
    name: "長野県",
  },
  {
    name: "岐阜県",
  },
  {
    name: "静岡県",
  },
  {
    name: "愛知県",
  },
  {
    name: "三重県",
  },
  {
    name: "滋賀県",
  },
  {
    name: "京都府",
  },
  {
    name: "大阪府",
  },
  {
    name: "兵庫県",
  },
  {
    name: "奈良県",
  },
  {
    name: "和歌山県",
  },
  {
    name: "鳥取県",
  },
  {
    name: "島根県",
  },
  {
    name: "岡山県",
  },
  {
    name: "広島県",
  },
  {
    name: "山口県",
  },
  {
    name: "徳島県",
  },
  {
    name: "香川県",
  },
  {
    name: "愛媛県",
  },
  {
    name: "高知県",
  },
  {
    name: "福岡県",
  },
  {
    name: "佐賀県",
  },
  {
    name: "長崎県",
  },
  {
    name: "熊本県",
  },
  {
    name: "大分県",
  },
  {
    name: "宮崎県",
  },
  {
    name: "鹿児島県",
  },
  {
    name: "沖縄県",
  }
]

Prefecture.create!(prefecture_data)

user_data = [
  {
    name: '山田太郎',
    email: 'test-user1@test.com',
    password: 'password1'
  },
  {
    name: '田中中田',
    email: 'test-user2@test.com',
    password: 'password2'
  },
  {
    email: 'test-user3@test.com',
    password: 'password3'
  }
]
User.create!(user_data)

users = User.all
prefectures = Prefecture.all

tag_data = [
  { name: '自然' },        # id1
  { name: '歴史' },        # id2
  { name: '観光地' },      # id3
  { name: '静かな場所' },   # id4
  { name: '絶景' },        # id5
  { name: 'アウトドア' },   # id6
  { name: '写真スポット' }, # id7
  { name: 'パワースポット' }, # id8
  { name: '建築物' }       # id9
]
Tag.create!(tag_data)

spot_data = [
  {
    name: "中野もみじ山",
    body: "滝が間近で見れます。秋には紅葉が綺麗で滝とのコントラストが素晴らしいです",
    city: "黒石市南中野家岸31",
    average_rating: 3,
    average_quiet_rating: 4,
    latitude: 40.6105,
    longitude: 140.6807,
    user_id: users.sample.id,
    prefecture_id: 2,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 3, quiet_rating: 4 },
      { user_id: users.sample.id, rating: 3, quiet_rating: 4 }
    ],
    tag_names: ['自然', '絶景']
  },
  {
    name: "普代浜海水浴場",
    body: "静かな海水浴場です。キャンプ場も隣接しており、海も綺麗です。",
    city: "下閉伊郡普代村第７地割明神",
    average_rating: 4,  
    average_quiet_rating: 4,  
    latitude: 40.0146,
    longitude: 141.8999,
    user_id: users.sample.id,
    prefecture_id: 3,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 5, quiet_rating: 4 },
      { user_id: users.sample.id, rating: 3, quiet_rating: 4 }
    ],
    tag_names: ['静かな場所', 'アウトドア']
  },
  {
    name: "滝観洞",
    body: "自然の洞窟を冒険している感覚が味わえるスポットです。",
    city: "気仙郡住田町上有住土倉298-81",
    average_rating: 5, 
    average_quiet_rating: 5,  
    latitude: 39.2419,
    longitude: 141.6837,
    user_id: users.sample.id,
    prefecture_id: 3,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 5, quiet_rating: 4 },
      { user_id: users.sample.id, rating: 4, quiet_rating: 5 }
    ],
    tag_names: ['アウトドア', 'パワースポット']
  },
  {
    name: "横沼展望台",
    body: "リアス式海岸が見渡せる展望台。ストレスなく写真撮影ができます。",
    city: "久慈市侍浜町横沼8",
    average_rating: 4,  
    average_quiet_rating: 5,  
    latitude: 40.2625,
    longitude: 141.8193,
    user_id: users.sample.id,
    prefecture_id: 3,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 3, quiet_rating: 5 },
      { user_id: users.sample.id, rating: 4, quiet_rating: 5 }
    ],
    tag_names: ['静かな場所', 'アウトドア']
  },
  {
    name: "天橋立",
    body: "日本三景の一つ。逆さから見ると天に昇る龍に見える景色です。",
    city: "宮津市文珠30",
    average_rating: 5,  
    average_quiet_rating: 1,  
    latitude: 35.5627,
    longitude: 135.1911,
    user_id: users.sample.id,
    prefecture_id: 26,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 5, quiet_rating: 1 },
      { user_id: users.sample.id, rating: 4, quiet_rating: 1 }
    ],
    tag_names: ['観光地', '写真スポット']
  },
  {
    name: "壇ノ浦パーキングエリア(下り)から見た関門橋",
    body: "関門橋の迫力を間近で感じられるスポット。",
    city: "下関市壇之浦町6-1",
    average_rating: 3,  
    average_quiet_rating: 3, 
    latitude: 33.9634,
    longitude: 130.9541,
    user_id: users.sample.id,
    prefecture_id: 35,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 3, quiet_rating: 2 },
      { user_id: users.sample.id, rating: 2, quiet_rating: 3 }
    ],
    tag_names: ['写真スポット', '建築物']
  },
  {
    name: "倉敷美観地区の夜景",
    body: "観光地倉敷の夜景は、昼と違った風情を楽しめます。",
    city: "倉敷市中央1",
    average_rating: 4,
    average_quiet_rating: 4,
    latitude: 34.5957,
    longitude: 133.7717,
    user_id: users.sample.id,
    prefecture_id: 33,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 4, quiet_rating: 3 },
      { user_id: users.sample.id, rating: 3, quiet_rating: 4 }
    ],
    tag_names: ['歴史', '観光地']
  },
  {
    name: "安の滝",
    body: "滝100選にも選ばれた名滝。滝の麓まで行けます。",
    city: "北秋田市阿仁打当地区",
    average_rating: 5,
    average_quiet_rating: 3,
    latitude: 39.9450,
    longitude: 140.6170,
    user_id: users.sample.id,
    prefecture_id: 5,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 5, quiet_rating: 2 },
      { user_id: users.sample.id, rating: 4, quiet_rating: 3 }
    ],
    tag_names: ['自然', 'パワースポット']
  },
  {
    name: "乳稲ヶ滝（白神山地）",
    body: "白神山地にある滝。滝の裏側に行ける独特な体験ができます。",
    city: "中津軽郡西目村田代名坪平47-1",
    average_rating: 4,
    average_quiet_rating: 4,
    latitude: 40.5695,
    longitude: 140.2952,
    user_id: users.sample.id,
    prefecture_id: 2,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 4, quiet_rating: 3 },
      { user_id: users.sample.id, rating: 3, quiet_rating: 4 }
    ],
    tag_names: ['自然', '絶景']
  },
  {
    name: "ヒメホタルの光",
    body: "夏になると光るヒメホタルを観察できるスポット。",
    city: "二戸市福岡織詰26-2",
    average_rating: 4,
    average_quiet_rating: 4,
    latitude: 40.2701,
    longitude: 141.3761,
    user_id: users.sample.id,
    prefecture_id: 3,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 4, quiet_rating: 3 },
      { user_id: users.sample.id, rating: 4, quiet_rating: 4 }
    ],
    tag_names: ['自然', '絶景']
  },
  {
    name: "わっぱビルジング",
    body: "檜の香りが漂うコワーキングスペース。",
    city: "大館市御成町1丁目12-27",
    average_rating: 3,
    average_quiet_rating: 3,
    latitude: 40.2864,
    longitude: 140.5586,
    user_id: users.sample.id,
    prefecture_id: 5,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 3, quiet_rating: 3 },
      { user_id: users.sample.id, rating: 3, quiet_rating: 3 }
    ],
    tag_names: ['静かな場所', '建築物']
  },
  {
    name: "まるごと市場",
    body: "秋田の美味しい魚介が味わえる市場。",
    city: "秋田市卸町二丁目2番7号",
    average_rating: 3,
    average_quiet_rating: 2,
    latitude: 39.7024,
    longitude: 140.1103,
    user_id: users.sample.id,
    prefecture_id: 5,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 3, quiet_rating: 2 },
      { user_id: users.sample.id, rating: 3, quiet_rating: 2 }
    ],
    tag_names: ['観光地', '建築物']
  },
  {
    name: "田沢湖",
    body: "静かでリラックスできる湖。",
    city: "仙北市田沢湖潟字搓湖",
    average_rating: 3,
    average_quiet_rating: 4,
    latitude: 39.7353,
    longitude: 140.6963,
    user_id: users.sample.id,
    prefecture_id: 5,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 3, quiet_rating: 4 },
      { user_id: users.sample.id, rating: 3, quiet_rating: 4 }
    ],
    tag_names: ['自然', 'パワースポット']
  },
  {
    name: "阿仁スキー場",
    body: "豊富な積雪と樹氷が自慢のスキー場。",
    city: "北秋田市松葉町3-1",
    average_rating: 4,
    average_quiet_rating: 3,
    latitude: 39.9574,
    longitude: 140.4976,
    user_id: users.sample.id,
    prefecture_id: 5,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 4, quiet_rating: 3 },
      { user_id: users.sample.id, rating: 4, quiet_rating: 3 }
    ],
    tag_names: ['自然', 'アウトドア']
  },
  {
    name: "八幡平アスピーテライン",
    body: "全長27kmのドライブウェイ。雪の回廊が見どころ。",
    city: "八幡平市松尾寄木",
    average_rating: 5,
    average_quiet_rating: 1,
    latitude: 39.9549,
    longitude: 140.8851,
    user_id: users.sample.id,
    prefecture_id: 3,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 5, quiet_rating: 1 },
      { user_id: users.sample.id, rating: 5, quiet_rating: 1 }
    ],
    tag_names: ['観光地', '絶景']
  },
  {
    name: "立正寺",
    body: "春に綺麗な桜が咲くお寺。",
    city: "久慈市大沢40-10",
    average_rating: 3,
    average_quiet_rating: 2,
    latitude: 40.2009,
    longitude: 141.7478,
    user_id: users.sample.id,
    prefecture_id: 3,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 3, quiet_rating: 2 },
      { user_id: users.sample.id, rating: 3, quiet_rating: 2 }
    ],
    tag_names: ['歴史', '写真スポット']
  },
  {
    name: "つりがね洞",
    body: "大きな岩にぽっかりと穴が空いた奇岩。朝日が見どころです。",
    city: "久慈市長内町４６",
    average_rating: 4,
    average_quiet_rating: 4,
    latitude: 40.1784,
    longitude: 141.8339,
    user_id: users.sample.id,
    prefecture_id: 3,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 3, quiet_rating: 4 },
      { user_id: users.sample.id, rating: 4, quiet_rating: 4 }
    ],
    tag_names: ['自然', '静かな場所']
  },
  {
    name: "きみまち公園",
    body: "龍穴格局のパワースポット。桜や紅葉を楽しめます。",
    city: "能代市二ツ井町小繋字中島",
    average_rating: 4,
    average_quiet_rating: 4,
    latitude: 40.2216,
    longitude: 140.2562,
    user_id: users.sample.id,
    prefecture_id: 5,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 3, quiet_rating: 3 },
      { user_id: users.sample.id, rating: 4, quiet_rating: 4 }
    ],
    tag_names: ['静かな場所', 'パワースポット']
  },
  {
    name: "東京タワー",
    body: "東京の象徴です。",
    city: "港区芝公園4丁目2-8",
    average_rating: 5,
    average_quiet_rating: 2,
    latitude: 35.6586,
    longitude: 139.7454,
    user_id: users.sample.id,
    prefecture_id: 13,
    assessments_attributes: [
      { user_id: users.sample.id, rating: 5, quiet_rating: 1 },
      { user_id: users.sample.id, rating: 4, quiet_rating: 2 }
    ],
    tag_names: ['歴史', '建築物']
  }
]

spot_data.each do |data|
  tag_names = data.delete(:tag_names) 
  spot = Spot.create!(data)           
  spot.tags = Tag.where(name: tag_names) 
end

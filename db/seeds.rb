prefetcture_data = [
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

Prefecture.create!(prefetcture_data)

user_data = [
  {
    name: 'test-user1',
    email: 'test-user1@test.com',
    password: 'password1'
  },
  {
    name: 'test-user2',
    email: 'test-user2@test.com',
    password: 'password2'
  },
  {
    name: 'test-user3',
    email: 'test-user3@test.com',
    password: 'password3'
  }
]
User.create!(user_data)

users = User.all
prefectures = User.all

spot_data = [
  {
    name: "中野もみじ山",
    body: "滝が間近で見れます。秋には紅葉が綺麗で滝とのコントラストが素晴らしいです",
    city: "黒石市南中野家岸31",
    average_rating: 3,
    average_quiet_rating: 4,
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 3,
        quiet_rating: 4
      },
      {
        user_id: users.sample.id,
        rating: 3,
        quiet_rating: 4
      }
    ]
  },
  {
    name: "普代浜海水浴場",
    body: "人で混雑もしておらず、静かな海水浴場です。海も綺麗ですし、隣にあるキャンプ場でキャンプも楽しめます。敷地内に産直があり、イカ焼き等を販売しておりお勧めです！",
    city: "下閉伊郡普代村7",
    average_rating: 4,
    average_quiet_rating: 4,
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 5,
        quiet_rating: 4
      },
      {
        user_id: users.sample.id,
        rating: 3,
        quiet_rating: 4
      }
    ]
  },
  {
    name: "滝観洞",
    body: "かなり自然の洞窟を残した状態になっているので、より洞窟を冒険している感覚がします。最奥には滝があり、洞窟の中にある滝という幻想的な景色を味わえます。行く際は長靴と濡れてもいい服装をお忘れなく！",
    city: "気仙郡住田町上有住土倉298-81",
    average_rating: 5,
    average_quiet_rating: 5,
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 5,
        quiet_rating: 4
      },
      {
        user_id: users.sample.id,
        rating: 4,
        quiet_rating: 5
      }
    ]
  },
  {
    name: "横沼展望台",
    body: "岩手でリアス式海岸が楽しめる展望台です。普段あまり人がいないため、ストレスなく写真撮影をすることができます。海岸に立ち奇岩に直に降りることができます。",
    city: "久慈市侍浜町横沼8",
    average_rating: 4,
    average_quiet_rating: 5,
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 3,
        quiet_rating: 5
      },
      {
        user_id: users.sample.id,
        rating: 4,
        quiet_rating: 5
      }
    ]
  },
  {
    name: "天橋立",
    body: "日本三景です。ゴンドラに乗った先にあります。逆さから見ると天に昇る龍に見えるそうです",
    city: "宮津市文珠30",
    average_rating: 5,
    average_quiet_rating: 1,
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 5,
        quiet_rating: 1
      },
      {
        user_id: users.sample.id,
        rating: 4,
        quiet_rating: 1
      }
    ]
  },
  {
    name: "壇ノ浦パーキングエリア(下り)から見た関門橋",
    body: "壇ノ浦パーキングエリア(下り)からだと関門橋近く感じることができ、迫力があります。高速利用者以外も裏から無料で入ることが可能です。",
    city: "下関市壇之浦町6-1",
    average_rating: 3,
    average_quiet_rating: 3,
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 3,
        quiet_rating: 2
      },
      {
        user_id: users.sample.id,
        rating: 2,
        quiet_rating: 3
      }
    ]
  },
  {
    name: "倉敷の夜景",
    body: "観光地なので昼は混雑していますが、夜は人もまばらで川と柳の木が風情のある情景を生み出しています。",
    city: "倉敷市中央1",
    average_rating: 4,
    average_quiet_rating: 4,
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 4,
        quiet_rating: 3
      },
      {
        user_id: users.sample.id,
        rating: 3,
        quiet_rating: 4
      }
    ]
  },
  {
    name: "安の滝",
    body: "日本の滝100選２位の滝です。山を登った先に大きな滝があります。滝のすぐ麓まで行くことができます。",
    city: "北秋田市阿仁打当地区",
    average_rating: 5,
    average_quiet_rating: 3,
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 5,
        quiet_rating: 2
      },
      {
        user_id: users.sample.id,
        rating: 4,
        quiet_rating: 3
      }
    ]
  },
  {
    name: "乳稲ヶ滝（白神山地）",
    body: "白神山地にある滝です。大きな滝ではないですが、滝の裏側に行くことができ、面白い写真を撮影できます。",
    city: "中津軽郡西目村田代名坪平47-1",
    average_rating: 4,  # 平均3.5を繰り上げて4
    average_quiet_rating: 4,  # 平均3.5を繰り上げて4
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 4,
        quiet_rating: 3
      },
      {
        user_id: users.sample.id,
        rating: 3,
        quiet_rating: 4
      }
    ]
  },
  {
    name: "ヒメホタルの光",
    body: "ヒメホタルの群生地である折爪岳は夏の時期になると集団に発行する光景を観測できます。ヘッドライトや虫除けスプレーは厳禁です。",
    city: "二戸市福岡織詰26-2",
    average_rating: 4,
    average_quiet_rating: 4,
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 4,
        quiet_rating: 3
      },
      {
        user_id: users.sample.id,
        rating: 4,
        quiet_rating: 4
      }
    ]
  },
  {
    name: "わっぱビルジング",
    body: "檜の香りが漂うコアワーキングすコアワーキングスペース",
    city: "大館市御成町1丁目12-27",
    average_rating: 3,
    average_quiet_rating: 3,
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 3,
        quiet_rating: 3
      },
      {
        user_id: users.sample.id,
        rating: 3,
        quiet_rating: 3
      }
    ]
  },
  {
    name: "まるごと市場",
    body: "秋田の美味しい魚介が味わえます",
    city: "秋田市卸町二丁目2番7号",
    average_rating: 3,
    average_quiet_rating: 2,
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 3,
        quiet_rating: 2
      },
      {
        user_id: users.sample.id,
        rating: 3,
        quiet_rating: 2
      }
    ]
  },
  {
    name: "田沢湖",
    body: "静かで、リラックスして景色を楽しめます。",
    city: "仙北市田沢湖潟字搓湖",
    average_rating: 3,
    average_quiet_rating: 4,
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 3,
        quiet_rating: 4
      },
      {
        user_id: users.sample.id,
        rating: 3,
        quiet_rating: 4
      }
    ]
  },
  {
    name: "阿仁スキー場",
    body: "豊富な積雪量とパウダースノーが自慢です。山頂付近には樹氷があり、スキーをしない方でも楽しむ事ができます。",
    city: "北秋田市松葉町3-1",
    average_rating: 4,
    average_quiet_rating: 3,
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 4,
        quiet_rating: 3
      },
      {
        user_id: users.sample.id,
        rating: 4,
        quiet_rating: 3
      }
    ]
  },
  {
    name: "八幡平アスピーテライン",
    body: "全長約27kmのドライブウェイにそびえ立つ「雪の回廊」は日本一の長さです。4月中旬から通行可能になります。",
    city: "八幡平市松尾寄木",
    average_rating: 5,
    average_quiet_rating: 1,
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 5,
        quiet_rating: 1
      },
      {
        user_id: users.sample.id,
        rating: 5,
        quiet_rating: 1
      }
    ]
  },
  {
    name: "立正寺",
    body: "春には綺麗な桜が咲くお寺です。",
    city: "久慈市大沢40-10",
    average_rating: 3,
    average_quiet_rating: 2,
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 3,
        quiet_rating: 2
      },
      {
        user_id: users.sample.id,
        rating: 3,
        quiet_rating: 2
      }
    ]
  },
  {
    name: "つりがね洞",
    body: "大きな岩にぽっかりと穴が空いた奇岩です。タイミングが良ければ穴から朝日を拝むことができます。",
    city: "久慈市長内町４６",
    average_rating: 4,
    average_quiet_rating: 4,
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 3,
        quiet_rating: 4
      },
      {
        user_id: users.sample.id,
        rating: 4,
        quiet_rating: 4
      }
    ]
  },
  {
    name: "きみまち公園",
    body: "全国でも有数なパワースポットとなっており、対岸の七座山を龍に見立て、米代川の水を龍が飲んでいるという構図になり、「龍穴格局」というタイプのスポットです。春は桜、秋は紅葉を楽しめます",
    city: "能代市二ツ井町小繋字中島",
    average_rating: 4,
    average_quiet_rating: 4,
    user_id: users.sample.id,
    prefecture_id: prefectures.sample.id,
    assessments_attributes: [
      {
        user_id: users.sample.id,
        rating: 3,
        quiet_rating: 3
      },
      {
        user_id: users.sample.id,
        rating: 4,
        quiet_rating: 4
      }
    ]
  }
]
Spot.create!(spot_data)


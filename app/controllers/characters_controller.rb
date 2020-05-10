class CharactersController < ApplicationController
  before_action :ensure_correct_user,{only:[:measure, :index]}
  def ensure_correct_user
    if @current_user.id != params[:id].to_i
      flash[:notice] = "アクセス権限がありません"
      redirect_to("/characters/#{@current_user.id}")
    end
  end
  def index
    @fighters_en = [
    "mario",
    "donkeykong",
    "link",
    "samus",
    "darksamus",
    "yoshi",
    "kirby",
    "fox",
    "pikachu",
    "luigi",
    "ness",
    "captainfalcon",
    "purin",
    "peach",
    "daisy",
    "koopa",
    "iceclimber",
    "sheik",
    "zelda",
    "drmario",
    "pichu",
    "falco",
    "marth",
    "lucina",
    "younglink",
    "ganondorf",
    "mewtwo",
    "roy",
    "chrom",
    "mrgame",
    "metaknigh",
    "pit",
    "zerosuitsamus",
    "wario",
    "snake",
    "ike",
    "pokemontrainer",
    "diddykong",
    "lucas",
    "sonic",
    "dedede",
    "pikmin",
    "lucario",
    "robot",
    "toonlink",
    "wolf",
    "murabito",
    "rockman",
    "wiifittrainer",
    "rosetta",
    "littlemac",
    "gekkouga",
    "kakutou",
    "kenjutu",
    "shageki",
    "palutena",
    "pacman",
    "reflet",
    "shulk",
    "koopajr",
    "duckhunt",
    "ryu",
    "ken",
    "cloud",
    "kamui",
    "bayonetta",
    "inkling",
    "ridley",
    "simon",
    "richter",
    "kingkrool",
    "shizue",
    "gaogaen",
    "packunflower",
    "joker",
    "hero",
    "banjo",
    "terry",
    "byleth"
  ]

  @fighters_ja = [
    "マリオ",
    "ドンキーコング",
    "リンク",
    "サムス",
    "ダークサムス",
    "ヨッシー",
    "カービー",
    "フォックス",
    "ピカチュウ",
    "ルイージ",
    "ネス",
    "キャプテンファルコン",
    "プリン",
    "ピーチ",
    "デイジー",
    "クッパ",
    "アイスクライマー",
    "シーク",
    "ゼルダ",
    "ドクターマリオ",
    "ピチュー",
    "ファルコ",
    "マルス",
    "ルキナ",
    "こどもリンク",
    "ガノンドロフ",
    "ミュウツー",
    "ロイ",
    "クロム",
    "Mr. ゲーム&ウォッチ",
    "メタナイト",
    "ピット",
    "ゼロスーツサムス",
    "ワリオ",
    "スネーク",
    "アイク",
    "ポケモントレーナー",
    "ディディーコング",
    "リュカ",
    "ソニック",
    "デデデ",
    "ピクミン",
    "ルカリオ",
    "ロボット",
    "トゥーンリンク",
    "ウルフ",
    "むらびと",
    "ロックマン",
    "Wii Fit トレーナー",
    "ロゼッタ",
    "リトルマック",
    "ゲッコウガ",
    "格闘Mii",
    "剣術Mii",
    "射撃Mii",
    "パルテナ",
    "パックマン",
    "ルフレ",
    "シュルク",
    "クッパ Jr.",
    "ダックハント",
    "リュウ",
    "ケン",
    "クラウド",
    "カムイ",
    "ベヨネッタ",
    "インクリング",
    "リドリー",
    "シモン",
    "リヒター",
    "キングクルール",
    "しずえ",
    "ガオガエン",
    "パックンフラワー",
    "ジョーカー",
    "勇者",
    "バンジョー & カズーイ",
    "テリー",
    "べレス"
  ]

    @searching_list_ja = []
    @count = 0
    @fighters_ja_searched = []
    @fighters_en_searched = []
    if params[:search] == nil
      @fighters_en_searched = @fighters_en
      @fighters_ja_searched = @fighters_ja
    else
      @fighters_ja.each do |fighter|
        if fighter.include?(params[:search])
          @searching_list_ja.push(@count)
        end
        @count+=1
      end
      @searching_list_ja.each do |search|
        @fighters_ja_searched.push(@fighters_ja[search])
        @fighters_en_searched.push(@fighters_en[search])
      end
    end

  end
  def measure

    @fighters_en = [
    "mario",
    "donkeykong",
    "link",
    "samus",
    "darksamus",
    "yoshi",
    "kirby",
    "fox",
    "pikachu",
    "luigi",
    "ness",
    "captainfalcon",
    "purin",
    "peach",
    "daisy",
    "koopa",
    "iceclimber",
    "sheik",
    "zelda",
    "drmario",
    "pichu",
    "falco",
    "marth",
    "lucina",
    "younglink",
    "ganondorf",
    "mewtwo",
    "roy",
    "chrom",
    "mrgame",
    "metaknigh",
    "pit",
    "zerosuitsamus",
    "wario",
    "snake",
    "ike",
    "pokemontrainer",
    "diddykong",
    "lucas",
    "sonic",
    "dedede",
    "pikmin",
    "lucario",
    "robot",
    "toonlink",
    "wolf",
    "murabito",
    "rockman",
    "wiifittrainer",
    "rosetta",
    "littlemac",
    "gekkouga",
    "kakutou",
    "kenjutu",
    "shageki",
    "palutena",
    "pacman",
    "reflet",
    "shulk",
    "koopajr",
    "duckhunt",
    "ryu",
    "ken",
    "cloud",
    "kamui",
    "bayonetta",
    "inkling",
    "ridley",
    "simon",
    "richter",
    "kingkrool",
    "shizue",
    "gaogaen",
    "packunflower",
    "joker",
    "hero",
    "banjo",
    "terry",
    "byleth"
  ]

  @fighters_ja = [
    "マリオ",
    "ドンキーコング",
    "リンク",
    "サムス",
    "ダークサムス",
    "ヨッシー",
    "カービー",
    "フォックス",
    "ピカチュウ",
    "ルイージ",
    "ネス",
    "キャプテンファルコン",
    "プリン",
    "ピーチ",
    "デイジー",
    "クッパ",
    "アイスクライマー",
    "シーク",
    "ゼルダ",
    "ドクターマリオ",
    "ピチュー",
    "ファルコ",
    "マルス",
    "ルキナ",
    "こどもリンク",
    "ガノンドロフ",
    "ミュウツー",
    "ロイ",
    "クロム",
    "Mr. ゲーム&ウォッチ",
    "メタナイト",
    "ピット",
    "ゼロスーツサムス",
    "ワリオ",
    "スネーク",
    "アイク",
    "ポケモントレーナー",
    "ディディーコング",
    "リュカ",
    "ソニック",
    "デデデ",
    "ピクミン",
    "ルカリオ",
    "ロボット",
    "トゥーンリンク",
    "ウルフ",
    "むらびと",
    "ロックマン",
    "Wii Fit トレーナー",
    "ロゼッタ",
    "リトルマック",
    "ゲッコウガ",
    "格闘Mii",
    "剣術Mii",
    "射撃Mii",
    "パルテナ",
    "パックマン",
    "ルフレ",
    "シュルク",
    "クッパ Jr.",
    "ダックハント",
    "リュウ",
    "ケン",
    "クラウド",
    "カムイ",
    "ベヨネッタ",
    "インクリング",
    "リドリー",
    "シモン",
    "リヒター",
    "キングクルール",
    "しずえ",
    "ガオガエン",
    "パックンフラワー",
    "ジョーカー",
    "勇者",
    "バンジョー & カズーイ",
    "テリー",
    "べレス"
  ]

    @measure_index = Measure.find_by(user_id: params[:id])
    @count=0
    @fighters_en.each do |fighter|
      if fighter == params[:fighter]
        break
      end
      @count+=1
    end
    @character_en = params[:fighter]
    @character = @fighters_ja[@count]
    if "mario" == params[:fighter]
      @measure = @measure_index.mario
    elsif "donkeykong" == params[:fighter]
      @measure = @measure_index.donkeykong
    elsif "link" == params[:fighter]
      @measure = @measure_index.link
    elsif "samus" == params[:fighter]
      @measure = @measure_index.samus
    elsif "darksamus" == params[:fighter]
      @measure = @measure_index.darksamus
    elsif "yoshi" == params[:fighter]
      @measure = @measure_index.yoshi
    elsif "kirby" == params[:fighter]
      @measure = @measure_index.kirby
    elsif "fox" == params[:fighter]
      @measure = @measure_index.fox
    elsif "pikachu" == params[:fighter]
      @measure = @measure_index.pikachu
    elsif "luigi" == params[:fighter]
      @measure = @measure_index.luigi
    elsif "ness" == params[:fighter]
      @measure = @measure_index.ness
    elsif "captainfalcon" == params[:fighter]
      @measure = @measure_index.captainfalcon
    elsif "purin" == params[:fighter]
      @measure = @measure_index.purin
    elsif "peach" == params[:fighter]
      @measure = @measure_index.peach
    elsif "daisy" == params[:fighter]
      @measure = @measure_index.daisy
    elsif "koopa" == params[:fighter]
      @measure = @measure_index.koopa
    elsif "iceclimber" == params[:fighter]
      @measure = @measure_index.iceclimber
    elsif "sheik" == params[:fighter]
      @measure = @measure_index.sheik
    elsif "zelda" == params[:fighter]
      @measure = @measure_index.zelda
    elsif "drmario" == params[:fighter]
      @measure = @measure_index.drmario
    elsif "pichu" == params[:fighter]
      @measure = @measure_index.pichu
    elsif "falco" == params[:fighter]
      @measure = @measure_index.falco
    elsif "marth" == params[:fighter]
      @measure = @measure_index.marth
    elsif "lucina" == params[:fighter]
      @measure = @measure_index.lucina
    elsif "younglink" == params[:fighter]
      @measure = @measure_index.younglink
    elsif "ganondorf" == params[:fighter]
      @measure = @measure_index.ganondorf
    elsif "mewtwo" == params[:fighter]
      @measure = @measure_index.mewtwo
    elsif "roy" == params[:fighter]
      @measure = @measure_index.roy
    elsif "chrom" == params[:fighter]
      @measure = @measure_index.chrom
    elsif "mrgame" == params[:fighter]
      @measure = @measure_index.mrgame
    elsif "metaknight" == params[:fighter]
      @measure = @measure_index.metaknight
    elsif "pit" == params[:fighter]
      @measure = @measure_index.pit
    elsif "zerosuitsamus" == params[:fighter]
      @measure = @measure_index.zerosuitsamus
    elsif "wario" == params[:fighter]
      @measure = @measure_index.wario
    elsif "snake" == params[:fighter]
      @measure = @measure_index.snake
    elsif "ike" == params[:fighter]
      @measure = @measure_index.ike
    elsif "pokemontrainer" == params[:fighter]
      @measure = @measure_index.pokemontrainer
    elsif "diddykong" == params[:fighter]
      @measure = @measure_index.diddykong
    elsif "lucas" == params[:fighter]
      @measure = @measure_index.lucas
    elsif "sonic" == params[:fighter]
      @measure = @measure_index.sonic
    elsif "dedede" == params[:fighter]
      @measure = @measure_index.dedede
    elsif "pikmin" == params[:fighter]
      @measure = @measure_index.pikmin
    elsif "lucario" == params[:fighter]
      @measure = @measure_index.lucario
    elsif "robot" == params[:fighter]
      @measure = @measure_index.robot
    elsif "toonlink" == params[:fighter]
      @measure = @measure_index.toonlink
    elsif "wolf" == params[:fighter]
      @measure = @measure_index.wolf
    elsif "murabito" == params[:fighter]
      @measure = @measure_index.murabito
    elsif "rockman" == params[:fighter]
      @measure = @measure_index.rockman
    elsif "wiifittrainer" == params[:fighter]
      @measure = @measure_index.wiifittrainer
    elsif "rosetta" == params[:fighter]
      @measure = @measure_index.rosetta
    elsif "littlemac" == params[:fighter]
      @measure = @measure_index.littlemac
    elsif "gekkouga" == params[:fighter]
      @measure = @measure_index.gekkouga
    elsif "kakutou" == params[:fighter]
      @measure = @measure_index.kakutou
    elsif "kenjutu" == params[:fighter]
      @measure = @measure_index.kenjutu
    elsif "shageki" == params[:fighter]
      @measure = @measure_index.shageki
    elsif "palutena" == params[:fighter]
      @measure = @measure_index.palutena
    elsif "pacman" == params[:fighter]
      @measure = @measure_index.pacman
    elsif "reflet" == params[:fighter]
      @measure = @measure_index.reflet
    elsif "shulk" == params[:fighter]
      @measure = @measure_index.shulk
    elsif "koopajr" == params[:fighter]
      @measure = @measure_index.koopajr
    elsif "duckhunt" == params[:fighter]
      @measure = @measure_index.duckhunt
    elsif "ryu" == params[:fighter]
      @measure = @measure_index.ryu
    elsif "ken" == params[:fighter]
      @measure = @measure_index.ken
    elsif "cloud" == params[:fighter]
      @measure = @measure_index.cloud
    elsif "kamui" == params[:fighter]
      @measure = @measure_index.kamui
    elsif "bayonetta" == params[:fighter]
      @measure = @measure_index.bayonetta
    elsif "inkling" == params[:fighter]
      @measure = @measure_index.inkling
    elsif "ridley" == params[:fighter]
      @measure = @measure_index.ridley
    elsif "simon" == params[:fighter]
      @measure = @measure_index.simon
    elsif "richter" == params[:fighter]
      @measure = @measure_index.richter
    elsif "kingkrool" == params[:fighter]
      @measure = @measure_index.kingkrool
    elsif "shizue" == params[:fighter]
      @measure = @measure_index.shizue
    elsif "gaogaen" == params[:fighter]
      @measure = @measure_index.gaogaen
    elsif "packunflower" == params[:fighter]
      @measure = @measure_index.packunflower
    elsif "joker" == params[:fighter]
      @measure = @measure_index.joker
    elsif "hero" == params[:fighter]
      @measure = @measure_index.hero
    elsif "banjo" == params[:fighter]
      @measure = @measure_index.banjo
    elsif "terry" == params[:fighter]
      @measure = @measure_index.terry
    elsif "byleth" == params[:fighter]
      @measure = @measure_index.byleth
    end
  end
  def save
    @measure = Measure.find_by(user_id: @current_user)
    if "mario" == params[:fighter]
      @measure.mario = params[:content]
    elsif "donkeykong" == params[:fighter]
      @measure.donkeykong = params[:content]
    elsif "link" == params[:fighter]
      @measure.link = params[:content]
    elsif "samus" == params[:fighter]
      @measure.samus = params[:content]
    elsif "darksamus" == params[:fighter]
      @measure.darksamus = params[:content]
    elsif "yoshi" == params[:fighter]
      @measure.yoshi = params[:content]
    elsif "kirby" == params[:fighter]
      @measure.kirby = params[:content]
    elsif "fox" == params[:fighter]
      @measure.fox = params[:content]
    elsif "pikachu" == params[:fighter]
      @measure.pikachu = params[:content]
    elsif "luigi" == params[:fighter]
      @measure.luigi = params[:content]
    elsif "ness" == params[:fighter]
      @measure.ness = params[:content]
    elsif "captainfalcon" == params[:fighter]
      @measure.captainfalcon = params[:content]
    elsif "purin" == params[:fighter]
      @measure.purin = params[:content]
    elsif "peach" == params[:fighter]
      @measure.peach = params[:content]
    elsif "daisy" == params[:fighter]
      @measure.daisy = params[:content]
    elsif "koopa" == params[:fighter]
      @measure.koopa = params[:content]
    elsif "iceclimber" == params[:fighter]
      @measure.iceclimber = params[:content]
    elsif "sheik" == params[:fighter]
      @measure.sheik = params[:content]
    elsif "zelda" == params[:fighter]
      @measure.zelda = params[:content]
    elsif "drmario" == params[:fighter]
      @measure.drmario = params[:content]
    elsif "pichu" == params[:fighter]
      @measure.pichu = params[:content]
    elsif "falco" == params[:fighter]
      @measure.falco = params[:content]
    elsif "marth" == params[:fighter]
      @measure.marth = params[:content]
    elsif "lucina" == params[:fighter]
      @measure.lucina = params[:content]
    elsif "younglink" == params[:fighter]
      @measure.younglink = params[:content]
    elsif "ganondorf" == params[:fighter]
      @measure.ganondorf = params[:content]
    elsif "mewtwo" == params[:fighter]
      @measure.mewtwo = params[:content]
    elsif "roy" == params[:fighter]
      @measure.roy = params[:content]
    elsif "chrom" == params[:fighter]
      @measure.chrom = params[:content]
    elsif "mrgame" == params[:fighter]
      @measure.mrgame = params[:content]
    elsif "metaknight" == params[:fighter]
      @measure.metaknight = params[:content]
    elsif "pit" == params[:fighter]
      @measure.pit = params[:content]
    elsif "zerosuitsamus" == params[:fighter]
      @measure.zerosuitsamus = params[:content]
    elsif "wario" == params[:fighter]
      @measure.wario = params[:content]
    elsif "snake" == params[:fighter]
      @measure.snake = params[:content]
    elsif "ike" == params[:fighter]
      @measure.ike = params[:content]
    elsif "pokemontrainer" == params[:fighter]
      @measure.pokemontrainer = params[:content]
    elsif "diddykong" == params[:fighter]
      @measure.diddykong = params[:content]
    elsif "lucas" == params[:fighter]
      @measure.lucas = params[:content]
    elsif "sonic" == params[:fighter]
      @measure.sonic = params[:content]
    elsif "dedede" == params[:fighter]
      @measure.dedede = params[:content]
    elsif "pikmin" == params[:fighter]
      @measure.pikmin = params[:content]
    elsif "lucario" == params[:fighter]
      @measure.lucario = params[:content]
    elsif "robot" == params[:fighter]
      @measure.robot = params[:content]
    elsif "toonlink" == params[:fighter]
      @measure.toonlink = params[:content]
    elsif "wolf" == params[:fighter]
      @measure.wolf = params[:content]
    elsif "murabito" == params[:fighter]
      @measure.murabito = params[:content]
    elsif "rockman" == params[:fighter]
      @measure.rockman = params[:content]
    elsif "wiifittrainer" == params[:fighter]
      @measure.wiifittrainer = params[:content]
    elsif "rosetta" == params[:fighter]
      @measure.rosetta = params[:content]
    elsif "littlemac" == params[:fighter]
      @measure.littlemac = params[:content]
    elsif "gekkouga" == params[:fighter]
      @measure.gekkouga = params[:content]
    elsif "kakutou" == params[:fighter]
      @measure.kakutou = params[:content]
    elsif "kenjutu" == params[:fighter]
      @measure.kenjutu = params[:content]
    elsif "shageki" == params[:fighter]
      @measure.shageki = params[:content]
    elsif "palutena" == params[:fighter]
      @measure.palutena = params[:content]
    elsif "pacman" == params[:fighter]
      @measure.pacman = params[:content]
    elsif "reflet" == params[:fighter]
      @measure.reflet = params[:content]
    elsif "shulk" == params[:fighter]
      @measure.shulk = params[:content]
    elsif "koopajr" == params[:fighter]
      @measure.koopajr = params[:content]
    elsif "duckhunt" == params[:fighter]
      @measure.duckhunt = params[:content]
    elsif "ryu" == params[:fighter]
      @measure.ryu = params[:content]
    elsif "ken" == params[:fighter]
      @measure.ken = params[:content]
    elsif "cloud" == params[:fighter]
      @measure.cloud = params[:content]
    elsif "kamui" == params[:fighter]
      @measure.kamui = params[:content]
    elsif "bayonetta" == params[:fighter]
      @measure.bayonetta = params[:content]
    elsif "inkling" == params[:fighter]
      @measure.inkling = params[:content]
    elsif "ridley" == params[:fighter]
      @measure.ridley = params[:content]
    elsif "simon" == params[:fighter]
      @measure.simon = params[:content]
    elsif "richter" == params[:fighter]
      @measure.richter = params[:content]
    elsif "kingkrool" == params[:fighter]
      @measure.kingkrool = params[:content]
    elsif "shizue" == params[:fighter]
      @measure.shizue = params[:content]
    elsif "gaogaen" == params[:fighter]
      @measure.gaogaen = params[:content]
    elsif "packunflower" == params[:fighter]
      @measure.packunflower = params[:content]
    elsif "joker" == params[:fighter]
      @measure.joker = params[:content]
    elsif "hero" == params[:fighter]
      @measure.hero = params[:content]
    elsif "banjo" == params[:fighter]
      @measure.banjo = params[:content]
    elsif "terry" == params[:fighter]
      @measure.terry = params[:content]
    elsif "byleth" == params[:fighter]
      @measure.byleth = params[:content]
    end
    @measure.save
    flash[:notice] = "保存しました"
    redirect_to("/characters/#{@current_user.id}")
  end
  def search

  end
end

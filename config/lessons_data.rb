# encoding: utf-8
# config/lessons_data.rb
#
# 日本語Javaチュートリアル — 10レッスン
# 注意: すべての漢字は日本語標準（JIS）に準拠しています。
#       中国語の漢字（簡体字・繁体字）は使用していません。

JAVA_LESSONS = [
  # ── レッスン 1 ────────────────────────────────────────────────────────────
  {
    id:       1,
    title:    "はじめてのJava",
    subtitle: "最初のプログラムを書こう",
    icon:     "☕",
    tag:      "入門",
    explanation: <<~HTML,
      <h2>Javaとは？</h2>
      <p>Javaは世界で最も広く使われているプログラミング言語の一つです。スマートフォンアプリ、ウェブサーバー、ゲームなど、さまざまなソフトウェアの開発に使われています。</p>
      <p>Javaの大きな特徴は <strong>「一度書けば、どこでも動く」</strong> という点です。Windows・Mac・Linuxのどのパソコンでも同じコードが動きます。</p>

      <h2>基本的な構造</h2>
      <p>すべてのJavaプログラムは <strong>クラス</strong> の中に書きます。プログラムの実行は必ず <code>main</code> メソッドから始まります。</p>
      <pre><code>public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("こんにちは、Java！");
    }
}</code></pre>

      <h2>各部分の説明</h2>
      <ul>
        <li><code>public class HelloWorld</code> — クラスの定義（プログラムの入れ物）</li>
        <li><code>public static void main(String[] args)</code> — プログラムの開始地点</li>
        <li><code>System.out.println()</code> — 文字を画面に表示して改行する命令</li>
        <li>文の終わりには必ずセミコロン <code>;</code> をつける</li>
        <li>波かっこ <code>{ }</code> でコードのかたまりをまとめる</li>
      </ul>

      <h2>練習問題 💪</h2>
      <p>次の文字をそのまま表示するJavaプログラムを書いてください：</p>
      <pre><code>Javaへようこそ！</code></pre>
    HTML
    exercise: {
      prompt:            "「Javaへようこそ！」と表示するJavaプログラムを書いてください。",
      expected_output:   "Javaへようこそ！",
      required_patterns: ["System.out.println", "Javaへようこそ"],
      hint:              'System.out.println("Javaへようこそ！"); をmainメソッドの中に書きましょう。'
    }
  },

  # ── レッスン 2 ────────────────────────────────────────────────────────────
  {
    id:       2,
    title:    "変数とデータ型",
    subtitle: "情報を保存しよう",
    icon:     "📦",
    tag:      "入門",
    explanation: <<~HTML,
      <h2>変数とは？</h2>
      <p><strong>変数</strong>とは、データを入れておく名前付きの箱です。Javaでは変数を使う前に、どんな種類のデータを入れるか（<strong>データ型</strong>）を宣言する必要があります。</p>

      <h2>基本的なデータ型</h2>
      <ul>
        <li><code>int</code> — 整数（例：42、-7、0）</li>
        <li><code>double</code> — 小数（例：3.14、-0.5）</li>
        <li><code>boolean</code> — 真偽値（<code>true</code> か <code>false</code> のみ）</li>
        <li><code>char</code> — 1文字（例：<code>'A'</code>、<code>'あ'</code>）</li>
        <li><code>String</code> — 文字列（例：<code>"こんにちは"</code>）</li>
      </ul>

      <h2>変数の宣言と使い方</h2>
      <pre><code>int nenrei = 25;
double kakaku = 1980.0;
String namae = "田中";
boolean gakusei = true;

System.out.println(namae);    // 田中
System.out.println(nenrei);   // 25</code></pre>

      <h2>文字列の連結</h2>
      <p><code>+</code> を使うと文字列と変数をつなげることができます：</p>
      <pre><code>String kotoba = "Java";
int nen = 1995;
System.out.println(kotoba + "は" + nen + "年に誕生しました");</code></pre>

      <h2>練習問題 💪</h2>
      <p><code>String</code> 変数 <code>gengo</code> に <code>"Java"</code>、<code>int</code> 変数 <code>nen</code> に <code>1995</code> を代入して、次のように表示してください：</p>
      <pre><code>Javaは1995年に誕生しました</code></pre>
    HTML
    exercise: {
      prompt:            'String変数 gengo="Java"、int変数 nen=1995 を作り、「Javaは1995年に誕生しました」と表示してください。',
      expected_output:   "Javaは1995年に誕生しました",
      required_patterns: ["String", "int", "System.out.println"],
      hint:              'System.out.println(gengo + "は" + nen + "年に誕生しました");'
    }
  },

  # ── レッスン 3 ────────────────────────────────────────────────────────────
  {
    id:       3,
    title:    "条件分岐",
    subtitle: "プログラムに判断をさせよう",
    icon:     "🔀",
    tag:      "入門",
    explanation: <<~HTML,
      <h2>条件分岐とは？</h2>
      <p>条件分岐を使うと、プログラムが状況に応じて異なる処理を行えます。条件が <code>true</code>（真）のときだけ、<code>if</code> ブロックの中のコードが実行されます。</p>

      <h2>if / else if / else 文</h2>
      <pre><code>int tokuten = 85;

if (tokuten >= 90) {
    System.out.println("評価：優");
} else if (tokuten >= 75) {
    System.out.println("評価：良");
} else {
    System.out.println("評価：可");
}
// 結果：評価：良</code></pre>

      <h2>比較演算子</h2>
      <ul>
        <li><code>==</code> 等しい &nbsp;&nbsp; <code>!=</code> 等しくない</li>
        <li><code>&gt;</code> より大きい &nbsp;&nbsp; <code>&lt;</code> より小さい</li>
        <li><code>&gt;=</code> 以上 &nbsp;&nbsp; <code>&lt;=</code> 以下</li>
      </ul>

      <h2>論理演算子</h2>
      <ul>
        <li><code>&amp;&amp;</code> かつ（AND）— 両方が true のとき true</li>
        <li><code>||</code> または（OR）— どちらか一方が true なら true</li>
        <li><code>!</code> 否定（NOT）— true と false を逆にする</li>
      </ul>

      <h2>練習問題 💪</h2>
      <p><code>int ondo = 35;</code> を宣言し、気温が30より高ければ <code>暑いです！</code>、そうでなければ <code>涼しいです。</code> と表示してください：</p>
      <pre><code>暑いです！</code></pre>
    HTML
    exercise: {
      prompt:            "int ondo = 35; を宣言し、30より高ければ「暑いです！」、そうでなければ「涼しいです。」と表示してください。",
      expected_output:   "暑いです！",
      required_patterns: ["ondo", "if", "System.out.println"],
      hint:              'if (ondo > 30) { System.out.println("暑いです！"); }'
    }
  },

  # ── レッスン 4 ────────────────────────────────────────────────────────────
  {
    id:       4,
    title:    "繰り返し処理",
    subtitle: "ループで同じ処理を繰り返そう",
    icon:     "🔄",
    tag:      "入門",
    explanation: <<~HTML,
      <h2>繰り返し処理とは？</h2>
      <p>同じ処理を何度も書かなくても、ループを使えば自動的に繰り返すことができます。Javaには主に <code>for</code> ループと <code>while</code> ループがあります。</p>

      <h2>for ループ</h2>
      <p>繰り返す回数がわかっているときに使います：</p>
      <pre><code>for (int i = 1; i <= 5; i++) {
    System.out.println("カウント：" + i);
}
// カウント：1
// カウント：2  ……  カウント：5 まで続く</code></pre>

      <h2>while ループ</h2>
      <p>条件が true の間、繰り返し続けます：</p>
      <pre><code>int n = 1;
while (n <= 3) {
    System.out.println("こんにちは " + n);
    n++;   // n++ は n = n + 1 と同じ意味
}</code></pre>

      <h2>for ループの構造</h2>
      <ul>
        <li><code>int i = 1</code> — 初期化（開始値）</li>
        <li><code>i &lt;= 5</code> — 継続条件（true の間ループ）</li>
        <li><code>i++</code> — 更新（毎回の処理後に実行）</li>
      </ul>

      <h2>練習問題 💪</h2>
      <p><code>for</code> ループを使って、1から5までの数字を1行ずつ表示してください：</p>
      <pre><code>1
2
3
4
5</code></pre>
    HTML
    exercise: {
      prompt:            "forループを使って、1から5までの数字を1行ずつ表示してください。",
      expected_output:   "1\n2\n3\n4\n5",
      required_patterns: ["for", "System.out.println"],
      hint:              "for (int i = 1; i <= 5; i++) { System.out.println(i); }"
    }
  },

  # ── レッスン 5 ────────────────────────────────────────────────────────────
  {
    id:       5,
    title:    "メソッド",
    subtitle: "処理をまとめて再利用しよう",
    icon:     "⚙️",
    tag:      "中級",
    explanation: <<~HTML,
      <h2>メソッドとは？</h2>
      <p><strong>メソッド</strong>とは、名前をつけたコードのかたまりです。同じ処理を何度も書く代わりに、一度メソッドとして定義しておけば、何度でも呼び出して使えます。</p>

      <h2>戻り値なしのメソッド（void）</h2>
      <pre><code>public static void aisatsu(String namae) {
    System.out.println("こんにちは、" + namae + "さん！");
}

// メソッドの呼び出し
aisatsu("田中");   // こんにちは、田中さん！
aisatsu("鈴木");   // こんにちは、鈴木さん！</code></pre>

      <h2>戻り値ありのメソッド</h2>
      <pre><code>public static int tasu(int a, int b) {
    return a + b;
}

int kekka = tasu(5, 3);
System.out.println(kekka);  // 8</code></pre>

      <h2>各部分の説明</h2>
      <ul>
        <li><code>public static</code> — アクセス修飾子（OOPで詳しく学びます）</li>
        <li><code>int</code> — 戻り値の型（何も返さない場合は <code>void</code>）</li>
        <li><code>tasu</code> — メソッド名</li>
        <li><code>(int a, int b)</code> — 引数（受け取る値）</li>
        <li><code>return</code> — 呼び出し元に値を返す</li>
      </ul>

      <h2>練習問題 💪</h2>
      <p><code>kakeru(int a, int b)</code> というメソッドを作り、<code>a * b</code> の結果を返してください。<code>kakeru(4, 5)</code> を呼び出して結果を表示：</p>
      <pre><code>20</code></pre>
    HTML
    exercise: {
      prompt:            "kakeru(int a, int b) というメソッドを作り a*b を返してください。kakeru(4,5)を呼び出して結果を表示してください。",
      expected_output:   "20",
      required_patterns: ["kakeru", "return", "System.out.println"],
      hint:              "public static int kakeru(int a, int b) { return a * b; }  その後  System.out.println(kakeru(4, 5));"
    }
  },

  # ── レッスン 6 ────────────────────────────────────────────────────────────
  {
    id:       6,
    title:    "配列",
    subtitle: "複数のデータをまとめて管理しよう",
    icon:     "📋",
    tag:      "中級",
    explanation: <<~HTML,
      <h2>配列とは？</h2>
      <p><strong>配列</strong>とは、同じデータ型の値を複数まとめて格納できる変数です。番号のついた箱が並んでいるイメージです。</p>

      <h2>配列の作り方</h2>
      <pre><code>// 方法1：サイズを指定して後で値を入れる
int[] tokuten = new int[3];
tokuten[0] = 90;
tokuten[1] = 85;
tokuten[2] = 78;

// 方法2：宣言と同時に値を設定する
String[] kudamono = {"りんご", "バナナ", "さくらんぼ"};</code></pre>

      <h2>要素へのアクセス</h2>
      <p>インデックスは <strong>0から</strong> 始まります！</p>
      <pre><code>System.out.println(kudamono[0]);       // りんご
System.out.println(kudamono[2]);       // さくらんぼ
System.out.println(kudamono.length);   // 3</code></pre>

      <h2>ループで配列を処理する</h2>
      <pre><code>int[] kazu = {10, 20, 30};
for (int i = 0; i < kazu.length; i++) {
    System.out.println(kazu[i]);
}
// 10  20  30</code></pre>

      <h2>練習問題 💪</h2>
      <p><code>{10, 20, 30}</code> の <code>int</code> 配列を作り、全要素の合計を表示してください：</p>
      <pre><code>60</code></pre>
    HTML
    exercise: {
      prompt:            "{10, 20, 30} のint配列を作り、全要素の合計（60）を表示してください。",
      expected_output:   "60",
      required_patterns: ["int[]", "System.out.println"],
      hint:              "int gokei = kazu[0] + kazu[1] + kazu[2]; System.out.println(gokei);"
    }
  },

  # ── レッスン 7 ────────────────────────────────────────────────────────────
  {
    id:       7,
    title:    "クラスとオブジェクト",
    subtitle: "オブジェクト指向の基本",
    icon:     "🏗️",
    tag:      "オブジェクト指向",
    explanation: <<~HTML,
      <h2>オブジェクト指向とは？</h2>
      <p>Javaは<strong>オブジェクト指向</strong>言語です。現実世界のモノを「オブジェクト」として表現し、データと処理をひとまとめにして管理します。</p>

      <h2>クラスとオブジェクトの違い</h2>
      <ul>
        <li><strong>クラス</strong> — 設計図（例：「犬」という概念の定義）</li>
        <li><strong>オブジェクト</strong> — 設計図から作った実体（例：「うちの犬のポチ」）</li>
      </ul>

      <h2>クラスの定義とオブジェクトの生成</h2>
      <pre><code>// 設計図（クラス）
class Inu {
    String namae;
    int nenrei;

    void hoeru() {
        System.out.println(namae + "：ワン！");
    }
}

// オブジェクトの生成
Inu inu1 = new Inu();
inu1.namae  = "ポチ";
inu1.nenrei = 3;
inu1.hoeru();   // ポチ：ワン！</code></pre>

      <h2>フィールドとメソッド</h2>
      <ul>
        <li><strong>フィールド</strong> — オブジェクトが持つデータ（変数）</li>
        <li><strong>メソッド</strong> — オブジェクトが持つ処理（関数）</li>
      </ul>

      <h2>練習問題 💪</h2>
      <p><code>String</code> フィールド <code>brand</code> を持つ <code>Kuruma</code> クラスを作り、オブジェクトを生成して <code>brand = "トヨタ"</code> を設定し、表示してください：</p>
      <pre><code>トヨタ</code></pre>
    HTML
    exercise: {
      prompt:            'Stringフィールド brand を持つ Kuruma クラスを作り、brand = "トヨタ" を設定して表示してください。',
      expected_output:   "トヨタ",
      required_patterns: ["class Kuruma", "brand", "System.out.println"],
      hint:              'Kuruma k = new Kuruma(); k.brand = "トヨタ"; System.out.println(k.brand);'
    }
  },

  # ── レッスン 8 ────────────────────────────────────────────────────────────
  {
    id:       8,
    title:    "コンストラクタ",
    subtitle: "オブジェクト生成時に初期化しよう",
    icon:     "🔨",
    tag:      "オブジェクト指向",
    explanation: <<~HTML,
      <h2>コンストラクタとは？</h2>
      <p><strong>コンストラクタ</strong>は、<code>new</code> でオブジェクトを生成したとき自動的に呼び出される特殊なメソッドです。フィールドの初期値を設定するのに使います。</p>

      <h2>コンストラクタの書き方</h2>
      <pre><code>class Hito {
    String namae;
    int nenrei;

    // コンストラクタ：クラス名と同じ名前、戻り値なし
    Hito(String namae, int nenrei) {
        this.namae  = namae;   // this はこのオブジェクト自身を指す
        this.nenrei = nenrei;
    }

    void jikoshokai() {
        System.out.println("私は" + namae + "、" + nenrei + "歳です。");
    }
}

Hito h = new Hito("田中", 28);
h.jikoshokai();  // 私は田中、28歳です。</code></pre>

      <h2>this キーワード</h2>
      <p><code>this.namae</code> はオブジェクト自身のフィールドを指します。引数と同じ名前のとき、区別するために使います。</p>

      <h2>練習問題 💪</h2>
      <p><code>title</code>（String）と <code>pages</code>（int）フィールドを持つ <code>Hon</code> クラスを作り、コンストラクタで初期化してください。<code>Hon("リーダブルコード", 260)</code> を生成して次のように表示：</p>
      <pre><code>リーダブルコードは260ページです</code></pre>
    HTML
    exercise: {
      prompt:            'class Hon(title, pages) を作りコンストラクタで初期化。Hon("リーダブルコード", 260)を生成し「リーダブルコードは260ページです」と表示してください。',
      expected_output:   "リーダブルコードは260ページです",
      required_patterns: ["class Hon", "this.", "System.out.println"],
      hint:              'System.out.println(title + "は" + pages + "ページです");'
    }
  },

  # ── レッスン 9 ────────────────────────────────────────────────────────────
  {
    id:       9,
    title:    "カプセル化",
    subtitle: "データを安全に守ろう",
    icon:     "🔒",
    tag:      "オブジェクト指向",
    explanation: <<~HTML,
      <h2>カプセル化とは？</h2>
      <p><strong>カプセル化</strong>とは、オブジェクトの内部データを外部から直接変更できないようにして、メソッドを通じてのみアクセスできるようにする仕組みです。オブジェクト指向の4大原則の一つです。</p>

      <h2>private フィールド</h2>
      <p>フィールドを <code>private</code> にすると、クラスの外から直接アクセスできなくなります：</p>
      <pre><code>class GinkouKouza {
    private double zanndaka;   // 外部から直接触れない！

    GinkouKouza(double shokigaku) {
        this.zanndaka = shokigaku;
    }

    // ゲッター：値を読み取る
    public double getZanndaka() {
        return zanndaka;
    }

    // セッター：安全に値を変更する
    public void nyukin(double kingaku) {
        if (kingaku > 0) {
            zanndaka += kingaku;
        }
    }
}

GinkouKouza kouza = new GinkouKouza(10000.0);
kouza.nyukin(5000.0);
System.out.println(kouza.getZanndaka()); // 15000.0</code></pre>

      <h2>なぜカプセル化が必要？</h2>
      <ul>
        <li>不正なデータの設定を防げる（例：マイナスの残高）</li>
        <li>内部の実装を隠せる</li>
        <li>コードの保守がしやすくなる</li>
      </ul>

      <h2>練習問題 💪</h2>
      <p><code>private double sesshi</code> フィールドを持つ <code>Ondo</code> クラスを作り、コンストラクタと <code>getSesshi()</code> ゲッターを定義してください。<code>36.6</code> で生成して表示：</p>
      <pre><code>36.6</code></pre>
    HTML
    exercise: {
      prompt:            "class Ondo を作り private double sesshi フィールド、コンストラクタ、getSesshi()ゲッターを定義。36.6で生成して表示してください。",
      expected_output:   "36.6",
      required_patterns: ["private", "getSesshi", "System.out.println"],
      hint:              "public double getSesshi() { return sesshi; }  その後  System.out.println(o.getSesshi());"
    }
  },

  # ── レッスン 10 ───────────────────────────────────────────────────────────
  {
    id:       10,
    title:    "継承",
    subtitle: "クラスを拡張しよう",
    icon:     "🧬",
    tag:      "オブジェクト指向",
    explanation: <<~HTML,
      <h2>継承とは？</h2>
      <p><strong>継承</strong>を使うと、既存のクラスのフィールドやメソッドを引き継いで、新しいクラスを作ることができます。<code>extends</code> キーワードを使います。</p>
      <ul>
        <li>引き継がれる側 → <strong>親クラス</strong>（スーパークラス）</li>
        <li>引き継ぐ側 → <strong>子クラス</strong>（サブクラス）</li>
      </ul>

      <h2>継承の例</h2>
      <pre><code>// 親クラス
class Dobutsu {
    String namae;

    Dobutsu(String namae) {
        this.namae = namae;
    }

    void naku() {
        System.out.println(namae + "が鳴きました。");
    }
}

// 子クラス — namae フィールドと naku() を引き継ぐ
class Neko extends Dobutsu {

    Neko(String namae) {
        super(namae);   // 親クラスのコンストラクタを呼び出す
    }

    // 親のメソッドを上書き（オーバーライド）
    @Override
    void naku() {
        System.out.println(namae + "：にゃー！");
    }
}

Neko n = new Neko("タマ");
n.naku();  // タマ：にゃー！</code></pre>

      <h2>重要なキーワード</h2>
      <ul>
        <li><code>extends</code> — 継承を宣言する</li>
        <li><code>super()</code> — 親クラスのコンストラクタを呼び出す</li>
        <li><code>@Override</code> — 親のメソッドを上書きするときに書く</li>
      </ul>

      <h2>練習問題 💪</h2>
      <p><code>brand</code> フィールドと <code>explain()</code> メソッドを持つ <code>Norimono</code> 親クラスを作ってください。それを継承する <code>Torakku</code> 子クラスを作り、<code>explain()</code> をオーバーライドして <code>Torakku("日産")</code> を生成し表示：</p>
      <pre><code>日産のトラック</code></pre>
    HTML
    exercise: {
      prompt:            'Norimono(brand)を親クラスに、Torakkuを子クラスとして継承。Torakku("日産").explain()が「日産のトラック」と表示するようにしてください。',
      expected_output:   "日産のトラック",
      required_patterns: ["extends", "super(", "System.out.println"],
      hint:              'class Torakku extends Norimono { Torakku(String b){ super(b); } void explain(){ System.out.println(brand + "のトラック"); } }'
    }
  }
].freeze

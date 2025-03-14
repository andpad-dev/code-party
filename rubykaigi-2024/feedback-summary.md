# Feedback summary

See [feedback/](feedback/) for details.

## Template

```yaml
questions:
  fun:
    # 楽しかったですか？
    # Did you have fun?
    # 楽しかった場合はどういう部分が楽しかったかも教えてください。（例：Ruby書くことそのものが楽しかった、●●のgemの作者とお話できたから、など）
    # If you had fun, what kind of part was fun?（e.g. Because I was able to talk with the author of ●●gem, Ruby it was fun to write, etc.）
    |
    (Answer)
  groups:
    # どのグループに参加しましたか？
    # Which groups did you join?
    - (Group1)
    - (Group2)
    - ...
  etc:
    # なにか思ったことがあれば自由に書いてください。
    # Please give us any feedback.
    |
    (Answer)
```

## Answers

```console
$ ruby aggregate.rb rubykaigi-2024
---
fun
---
AudioStakes: ruby.wasm を使ったことがなかったのですが、ブラウザでの Hello World から始まり、ライトニングトークで紹介されていた Largo さんの Video Player(https://github.com/Largo/PsychometricStudyVideoPlayer) のコードリーディングなどを経て、ruby.wasm への理解が深まって楽しかったです。
========================================
Morriar: Yes
========================================
cindyliu923: Yes, I find it really interesting to learn from everybody.
========================================
condor: Yes, because I talked with Samuel Williams, who is very good at async.
========================================
emon: 楽しかったです。
WASMに興味はあったけれどこれまで試したことがありませんでした。
このイベントで、ruby-wasm のチュートリアルから始めて、WASM が動くことを確かめるところからスタートし、
想像していたよりもずっと簡単に動くことが分かりました。
WASM に詳しい YC さんにいろいろと教えてもらいながら、ruby-wasm だけでなく、他の言語と WASM との関係や、
ブラウザ以外にも WASM の利用が広がっていることを教えてもらい、WASM について知ることができました。
========================================
fd00: チュートリアルをお互いに教え合いながら進めるというのを久々にやって楽しかった。
========================================
fishaction: 楽しかったです！
matzさんに教えてもらいながらC extensionしました！
コアで最高の時間でした。
========================================
h-akanuma: LTをされた Andi さんに ruby.wasm のレクチャーをしていただいたり、コミッターの関さんに dRuby の紹介をしていただけてとても参考になりました。
普通の懇親会ではなかなか得られない機会なのでとても良かったです。
========================================
hasimoto1009: とても楽しい時間でした。 Rails意外のコードを書くことに慣れてないませんでしたが、やりたいことを用意していたおかげで、グループのメンバーに協力してもらい４０％くらい進捗できました。
========================================
helloworld753315: (Answer)Yes。最初に話題を決め、それに併せて実現したいことが実装可能か考えるために、ActiveRecordの実装をみんなで読んだ。
一人で読むのではなく、お互いの視点をそれぞれ併せながら、ワイワイ協力しながらできたのが楽しかった。
また、言語の壁も多少あったが、コードもコミュニケーションのツールとして活用しながら会話できたのが楽しかった。
========================================
isaka1022: (Answer) Yes。
- 他の人と一緒にペアプロのようにコードを書いたので、他の人の知見や開発手法を学べたこと
- 一人ではなかなか読むのが大変なgemのコードを、チームで読んだことでくじけず理解が深まったこと
========================================
ishikawa999: チーム全員で同じrspec-openapiの機能改善に取り組むことになり、みんなでコードを読んでデバッグしたりコードを書き換えていくのがとても楽しかったです。rspec-openapiのテストの構造が複雑でデバッグが難しかったのですが、違う環境でRubyを書いていた人が8人もいるといろんな視点からアプローチのアイデアがでてきてすごかったです。
========================================
kazzix14: 普段型についてここまで話せることがないため、SorbetやTapiocaの開発者の方と話すことができて非常に楽しかった。自分のgemで困っているところなどを解決できてよかった。
========================================
koya-masuda: Of course! I had a great time!
普段業務では見ないRails(ActiveRecord)のコードを読むことができて、とても楽しかったです。
使用しているライブラリのソースを見る選択肢を持つと、自分のコードにも活かせるし、愛着が湧いてくるなと感じました。
I Love Ruby!
========================================
kyamaguchi: Yes I did.
I have been interested in the topic but I've never started it.
Today, I could code with some members who are also new on the topic
and some other members who have experience on it.
I'd like to attend this kind of event again.
========================================
lef237: 初対面の方とRubyについてたくさん話すことができて楽しかったです！
========================================
mtsmfm: 最高に楽しかったです!
型周りについて疑問に思っていたことを Sorbet メンテナの方々と話ができてとても有意義でした。
特に paracycle さんと一度お話したかったのでついにお会いできて嬉しかったです。
Sorbet の実装についてや Steep の改善についてもその場でモブプロのようなことができてとても勉強になりました。
========================================
naitoh: 楽しかったです。ActiveRecord のソースコードを読んだことがなかったので、他の方が読んでいくのに合わせて勉強になりました。
========================================
niku: みんなで、やりたいけれど、やり方がわからない機能の実装を進めながら、問題にあたるたびにそれぞれが色んな知恵とか意見を出してのりこえて、やりたいことの道筋が見えてきたのが楽しかったです。
========================================
padmanabh-net: Getting a chance to code with and talk with the author of the gems (falcon, async, lively) that I was most excited about! (ioquatix | Samuel Williams) by the keynote speaker!
========================================
paracycle: Yes, this was a lot of fun. I really enjoyed being able to help others with some of the typing problems they were having with Steep and Sorbet
========================================
requiemformemories: I had fun here! The most fun part is to meet new friends here!
========================================
sikachu: It was fun! We took a look at Active Record Join interface together, and
helping another developer to get their Active Record development environment
setup.
========================================
sue445: はい。自分の知らないrbsの書き方が知れてよかった。
また、gem_rbs_collectionにもいくつかパッチを投げることができてよかった。
========================================
tikkss: 楽しかったです。ActiveRecord のソースをみんなでワイワイやりながらデバッグできました。
========================================
tomoasleep: 非常に楽しかったです！ RBS, Sorbet をガッツリ触っているメンバーや、 Sorbet の作者と話せたり、どこで困っているかなどを聞けて面白かったです。
========================================
tonytonyjan: I was having fun with @ybiquitous and Matz diving into the source code of
Ruby language and @ybiquitous is a great devleoper who contributed to one
of my repository called `jaro_winkler`. Matz is also a great teacher who
teached us some internal APIs in Ruby language.
========================================
toshimaru: @seki さんのお話が聞けてよかった。
放置してた自作gemのメンテをする良い機会になってよかった。
========================================
umbrella-h: (Answer)
Yes, I had fun participating in this collaboration and observing the thinking processes and communication of skilled engineers.
One of the members brought a practical problem with a well-defined boundary, suitable for a 2 hour discussion in my opinion.
@cindyliu923 and I were the only two non-native Japanese speakers in the group, but with a mix of slow-spoken Japanese, a bit of English, and sketches on a whiteboard (and of course, in Ruby!), everyone was kind and patient in explaining their thoughts and the challenges we faced.
There were some interesting challenges that I had never considered before and plan to explore further...
For example, when we tried to check some variables with binding.irb and pp, no new clues were revealed.
Someone suggested this might be due to two running rspec processes, another member proposed using IO.write, and another found some critical typos.
In the end, we made some progress together!
========================================
verdy89: 初日のキーノートで紹介された超絶技巧コードを解読しました。1人だと確実に何もわからず時間が溶けていたと思うので、みんなで議論しながら解読できてありがたかったです（というかついていくのに必死でしたが）。
========================================
ybiquitous: 楽しかったです！初めて C extension を書く体験ができましたし、jaro_winkler gem の作者 @tonytonyjan と一緒に gem にPR投げてマージしてもらいました。
https://github.com/tonytonyjan/jaro_winkler/pull/55

Matzさんにも C extension についていくつか質問できたので、良い経験になりました。
========================================
yckao: (Answer)
This is my first time join rubykaigi and also first in コード懇親会,
I have a great time with my group chat about the wasm.ruby, and the posibility about the future of wasm.
Meet new friends and learn a lot of new things.
========================================

------
groups
------
AudioStakes:
Wasm
========================================
Morriar:
2
8
========================================
cindyliu923:
rspec-openapi
========================================
condor:
Group4
========================================
emon:
WASM
========================================
fd00:
C-extension
========================================
fishaction:
Group1 C extension
========================================
h-akanuma:
Group10
========================================
hasimoto1009:
rspec-openapi
========================================
helloworld753315:
(Group7) データ処理
========================================
isaka1022:
グループ5（rspec-openapi)
========================================
ishikawa999:
Group5 (rspec-openapi)
...
========================================
kazzix14:
(Group2)
========================================
koya-masuda:
データ処理
========================================
kyamaguchi:
Wasm
========================================
lef237:
{"Group B" => "ruby.wasm"}
========================================
mtsmfm:
Group2 (RBS, Type)
========================================
naitoh:
データ処理
========================================
niku:
rspec-openapi
========================================
padmanabh-net:
async
========================================
paracycle:
Group2
========================================
requiemformemories:
Ruby WASM
========================================
sikachu:
Group 7
========================================
sue445:
Type
========================================
tikkss:
データ処理
========================================
tomoasleep:
8
2
========================================
tonytonyjan:
Group1
========================================
toshimaru:
Group10
========================================
umbrella-h:
rspec-openai
========================================
verdy89:
Wired
========================================
ybiquitous:
C extension
========================================
yckao:
(Group3) WASM
========================================

---
etc
---
AudioStakes: イベントを開催していただき、ありがとうございました！
========================================
Morriar: Use a survey for feedback next time. Creating PRs is annoying. Thanks!
========================================
cindyliu923: Attending this kind of event for the first time is a very special experience. Thank you for organizing such an event.
========================================
condor:
The wall of language is too high to overcome. I must learn English hard.
I have faced at the conflict of the name of the repository agaist the past code-party. I was disturbed a little with it.
========================================
emon: 他のグループのことも気になったけれど、時間も限られていたので他のグループの活動をほとんど知ることができませんでした。
またこのようなイベントに参加できる機会があったら参加して、他の分野についても知りたいと思いました。
========================================
fd00: 時間があれば、他のテーブルにも出張していろいろ話を聽きたかった。
========================================
fishaction: これからRubyを探求しようと思います！よろしくお願いします
========================================
h-akanuma: もっとコーディング力を鍛える必要があるなと感じたので来年の RubyKaigi までに頑張りたいと思います。
コード懇親会の開催ありがとうございました！
========================================
hasimoto1009: コード懇親会の企画ありがとうございました。恐る恐るの参加でしたが参加してよかったです。MINASWANを体験できた気がしています。 :)
========================================
helloworld753315: 最初に何をするか決めるまでに時間がかかった。
みんなで1つのディスプレイを見ながら作業できたのが良かった。もしディスプレイがなければ、小さいホワイトボード等があっても良さそうだなと思った。
========================================
isaka1022: (Answer) 今回はチームにネタを持ち込んでくれた人がいたのでとても助かりました。（完全フリースタイルだったら何をするか少し困ってしまったかも）
========================================
ishikawa999: とても楽しかったので、もっと長くやりたかったです。次回があればまた参加したいです。
========================================
kazzix14: さらに長い時間話せたら嬉しい。
========================================
koya-masuda: 初めてで進め方が難しかった（？）脱線しがちでしたが、それはそれで楽しかったです。
========================================
kyamaguchi: The venue was really good. (Power supply, monitors and good chairs etc.)
========================================
lef237: (Answer)
========================================
mtsmfm: コード懇親会は初めてでしたが、説明や流れがスムーズで参加しやすかったです。ありがとうございました!
========================================
naitoh: 最初に、ActiveRecord のソースコードを見ましょうという流れになるまで、うまく共同作業にならなかったです。
一つの画面を共有しながら、語り合うのは良いですね。
========================================
niku: この問題を解くのはちょっと難しいのかなと最初は思っていたのですが、8人で集って1つのコードに集中すると、思ったよりうまくできました。私たちすごい。
========================================
padmanabh-net: I am really grateful for the opportunity, I had lot of fun! 色々ありがたく存じております、楽しかったです！
========================================
paracycle: Thanks for organizing this event! Looking forward to the next one.
========================================
requiemformemories: Although most of the members in the group did not familiar with Ruby WASM, we try to discover it together. We try some quick examples in the Ruby WASM webpage and we tried the stuff @Largo built. I also try to draw some shapes with Ruby Wasm and I am still trying to figure out how to make animations. It was an enjoyable time!
========================================
sikachu: It'd be nice to have a bit more food! Looking forward to the next time!
========================================
sue445: この手の懇親会は初めて参加したけど新鮮で面白かった
========================================
tikkss: 初参加でしたが楽しくできました。さすが Ruby!!
========================================
tomoasleep: 
========================================
tonytonyjan: Would like to join more events like this. Please host it every year,
thank you!
========================================
toshimaru: (Answer)
コード懇親会というスタイルは初でしたが、面白い試みだと思いました！
========================================
umbrella-h: (Answer)
I am really grateful to the hosts for arranging this extraordinary event! The experience was truly inspiring ~
Initially, I intended to join two rounds on different topics and try to collaborate with some esteemed contributors, but I found it challenging to do so within a 2-3 hour time limitation.
Considering that unless someone is quite experienced in the community, it's difficult for an individual to gather people and organize such an event, including food and venue... I sincerely hope this event is held every year. If possible, please organize more of them!
========================================
verdy89: 事前に各自の興味をエントリーできるとスムーズかもしれないと思いました。運営ありがとうございました。
========================================
ybiquitous: すごく貴重な経験ができたので、次回あればまた参加したいです。
========================================
yckao: (Answer)
I think this event is quite interesting, and I hope I can join the next time.
Because this is my first time, I didn't prepare any topic, but still have great conversation with my group.
========================================
```

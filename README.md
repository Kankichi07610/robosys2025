# 単位変換くん
文の中に含まれているヤード・ポンド法(インチ・ポンド・フィート・華氏)などの数値の検出し、メートル法(センチ・キログラム)に変換し、元の表記の横に注釈を加えるコマンドです。

## 使用方法

以下の手順に沿って行ってください。

- 単位変換くんのリポジトリをクローンします。
```bash
git clone git@github.com:Kankichi07610/robosys2025.git
```
- ディレクトリに移動します。
```bash
cd robosys2025
```
- 実行権限を与えます。
```bash
chmod +x unit_conversion
```
これにより./unit_conversionとして使用できるようになります。
- コマンドを実行します。
```bash
echo 10inch | ./unit_conversion
```
## 実行例
ヤード・ポンド法などの単位を入力します。
```bash
echo 10inch | ./unit_conversion
10inch(約25.4cm)
```
大文字・小文字が混在していても変換します。
```bash
echo 10InCh | ./unit_conversion
10inch(約25.4cm)
```
全角文字や2つ以上の単位が混在・表記の違い(inch,in,inchesなど)にも対応し変換します。
```bash
echo 重さ:10lbs、長さ10in | ./unit_conversion
重さ:10lbs(約4.53kg)、長さ10in(約25.4cm)
```
単位がない文はそのまま返します。
```bash
echo Hellow world | ./unit_conversion
Hellow world
```

- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- © 2025 Kanta Ogasawara

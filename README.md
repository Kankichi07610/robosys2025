# 単位変換くん
文の中に含まれているヤード・ポンド法 (inch, feet, lb, F) の数値を検出し、メートル法 (cm, kg, C) に変換して横に追記するコマンドです。

## 使用方法

以下の手順に沿って行ってください。

- 単位変換くんのリポジトリをクローンします。
```bash
$ git clone git@github.com:Kankichi07610/robosys2025.git
```
- ディレクトリに移動します。
```bash
$ cd robosys2025
```
- 実行権限を与えます。
```bash
$ chmod +x unit_conversion
```
- コマンドを実行します。
```bash
$ echo 10inch | ./unit_conversion
```

## 実行例

### 基本的な変換
数値を指定された単位 (inch, feet, lb, F) で入力すると、ヤードポンド法・メートル法に換算して出力します。

```bash
$ echo 10inch | ./unit_conversion
10inch 25.4cm
```

```bash
$ echo "Height: 5.9feet" | ./unit_conversion
Height: 5.9feet 179.8cm
```

```bash
$ echo "Weight: 2.5lb" | ./unit_conversion
Weight: 2.5lb 1.13kg
```

```bash
$ echo "Temp: 80F" | ./unit_conversion
Temp: 80F 26.7C
```

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7~3.12

## テスト環境
- Ubuntu 22.04 LTS

## ライセンス
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。

## 著作権
- このパッケージのコードの一部は、下記のスライド (CC-BY-SA 4.0 by Ryuichi Ueda) のものを、本人の許可を得て自身の著作としたものです。
  - [ryuichiueda/slides_marp/robosys2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)
- © 2025 Kanta Ogasawara

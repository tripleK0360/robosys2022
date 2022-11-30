# robosys2022

## プログラム
* plus
  * 標準入力で読み込んだものを加算して出力します。

* product
  * 標準入力で読み込んだものを乗算して出力します。 

* average
  * 標準入力で読み込んだものの平均値を出力します。


## プログラムのテスト状況
![test](https://github.com/tripleK0360/robosys2022/actions/workflows/test.yml/badge.svg)


## インストール方法
* 1 ターミナルを開く

* 2 インストールしたいディレクトリに移動する

* 3 下記２つを実行する
    ```
    $ git clone https://github.com/tripleK0360/robosys2022.git

    $ cd robosys2022
    ```

## 使用例
* plus
  ```
  $ seq 5 | ./plus     #実行

  $ 15                 #結果
  ```

* product
  ```
  $ seq 3 | ./product  #実行

  $ 6                  #結果
  ```

* average
  ```
  $ seq 10 | ./average #実行

  $ 5.5                #結果
  ```

## 必要なソフトウェア
* Python 3.7~3.10 (テスト済み)


## 動作確認済み環境
* Ubuntu 22.04


##
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* © 2022 Koki Ikeda


# MobBar
Enable to use mob names like bossbar  
モブの名前をボスバーのようにゲージとして簡単に使えるようにします。

## 動作確認済みバージョン / Verified minecraft versions

- 1.17.1

## 使い方 / How To Use

### 基本 / Basics

1. モブにバーの最大値(~1023)を設定します / Set the max value(<1024) of the bar.  
```nim
scoreboard players set @s MobBarMax 10
```
2. モブにバーの現在値を設定します / Set the current value of the bar.  
```nim
scoreboard players set @s MobBarValue 3
```
3. 関数を呼び出すとモブの名前が書き換わります / Call the function below, then the mob name will be updated.  
```nim
function #mobbar:update
```

### 拡張 / Ex-Use
1. モブにバーの最大値(~1023)を設定します / Set the max value(<1024) of the bar.  
```nim
scoreboard players set @s MobBarMax 10
```
2. モブにバーの現在値を設定します / Set the current value of the bar.  
```nim
scoreboard players set @s MobBarValue 3
```
3. ベースのフォーマットを指定できます。(任意) / You can specity the base format.(Optional)  
default: '{"text":"","color":"gray"}'
```nim
data modify storage mobbar:base_format set value '{"text":"prefix:","color":"#FF0000","font":"font"}'  
```
4. アクセントのフォーマットを指定できます。(任意) / You can specity the accent format.(Optional)  
default: '{"text":"","color":"yellow"}'
```nim
data modify storage mobbar:accent_format set value '{"text":"","color":"#FFFFFF","font":"font"}'  
```
5. バーの長さを指定できます。(任意) / You can specity the length of the bar.(Optional)  
default: 20
```nim
data modify storage mobbar:bar_length set value 10  
```
6. 関数を呼び出すとモブの名前が書き換わります / Call the function below, then the mob name will be updated.  
```nim
function #mobbar:update_ex
```

## 連絡はこちら / Contact

<https://twitter.com/AiAkaishi>

## ライセンス / LICENSE

These codes are released under the MIT License, see LICENSE.

# Mac環境移行マニュアル

## Brewインストール

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## 設定ファイルインポート

Brewfileがあるディレクトリにて下記コマンドを実行。

```sh
sh import_setting.sh
```

## 設定エクスポート

下記コマンドを実行

```sh
sh export_setting.sh
```

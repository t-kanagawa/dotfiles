# Cloudflare Tunnelとは

インフラストラクチャの種類を問わず、アプリケーショントラフィックをすばやく安全にし暗号化できるトンネリングソフトウェアです。[参考URL1]

つまりはポート開放やらせずに独自ドメインで開発中のWebモジュール等を外部に公開できる便利なツール。


### 作業手順

cloudflaredをインストール

#### Macの場合

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install cloudflare/cloudflare/cloudflared && 
sudo cloudflared service install \
共有するトークン
```

#### Windowsの場合

下記インストール
https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-windows-amd64.msi

```sh
#管理者権限で下記コマンド実行
cloudflared.exe service install 共有するトークン
```

[参考URL1]: https://www.cloudflare.com/ja-jp/products/tunnel/
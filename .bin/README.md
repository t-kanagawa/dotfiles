# 簡単セットアップシェル #

## シバン(shebang)

```shell
#!/bin/bash -ue
```

|  コマンド  |  意味  |
| ---- | ---- |
| ```set -e``` | return codeが0以外のコマンド実行時に処理を終了する。|
| ```set -u``` | 未定義変数を参照したときに処理を終了する。 |

## 管理者権限チェック

```shell
if [ "$(whoami)" != "root" ]; then
  echo "Require root privilege"
  exit 1
fi
```

シェルによっては権限が必要なコマンドがある。上記のコマンドを入れることで確認可能。

## スクリプト実行ディレクトリ取得

```shell
readonly SCRIPT_DIR=$(cd $(dirname $0);pwd)
```

${SCRIPT_DIR}を参照すると実行ファイルのディレクトリを取得することができる。
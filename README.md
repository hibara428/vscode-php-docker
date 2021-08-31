# vscode-php-docker

VSCode + PHP + Docker開発環境構成案。

## Remote Containers Plugin

[Remote \- Containers \- Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) を利用した構成。VSCodeからコンテナに接続。コンテナ上にソースコードをマウントして開発。

### 良いところ

- composerの管理がシンプル
  - 最初からコンテナ上で作業するため、composerコマンド実行をするためにコンテナに接続するといった手順が必要ない
- 開発に必要とする環境がほぼ完全にDockerイメージ、Dockerfileとして管理できる

### 微妙なところ

- 逆に開発に必要とするツールは必ずDockerイメージに追加しなければならないので、必要なツールによって面倒な場合がありそう
- ソースコードをマウントして開発するため、マウント時のファイル権限が問題になる可能性がある
- 開発用イメージをリリースイメージとまったく別に用意する必要があるため、開発用イメージとリリースイメージに齟齬が出る危険性がある
- 開発開始のたびに接続するのが少々手間

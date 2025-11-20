# Chrome Update Tracker

Chrome ブラウザの更新情報を詳細な日本語ドキュメントで追跡するリポジトリです。

## 概要

各 Chrome バージョンのリリースについて、以下の情報を記録します：

- リリース日（Stable）
- 重要度評価付きの機能サマリ
- 新しい API のコードサンプル
- 公式リリースノート、DevTools 更新、WebGPU 変更、ChromeStatus ロードマップへのリンク

## ドキュメント

すべてのドキュメントは `docs/` ディレクトリに格納されています：

- `chrome-133-2025-02-04.md`
- `chrome-134-2025-03-04.md`
- `chrome-135-2025-04-08.md`
- など

ファイル命名規則: `chrome-{VERSION}-{YYYY-MM-DD}.md`（日付は Stable リリース日）

## 開発環境

### Dev Container の使用（推奨）

このリポジトリには Markdown lint 用の Dev Container 設定が含まれています。

#### VS Code での使用

1. [Dev Containers 拡張機能](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)をインストール
2. リポジトリを開く
3. コマンドパレット（Cmd/Ctrl+Shift+P）から「Dev Containers: Reopen in Container」を選択
4. コンテナが起動すると、markdownlint が自動的にインストールされます

#### IntelliJ IDEA での使用

1. IntelliJ IDEA 2023.3 以降が必要
2. リポジトリを開く
3. `.devcontainer/devcontainer.json` が検出され、コンテナで開くオプションが表示されます
4. 「Open in Container」を選択

#### Claude Code との併用

Dev Container には Claude Code が自動的にインストールされます。

**コンテナ内で Claude Code を使用：**

```bash
# コンテナ内で Claude Code を起動
claude
```

**設定された MCP サーバー：**
- `sequential-thinking`: 複雑な問題解決のための段階的思考
- `context7`: 最新のライブラリドキュメントへのアクセス

**永続化されるデータ：**
- Claude Code の設定 (`~/.claude`)
- Claude Code のバイナリ (`~/.local`)
- Bash の履歴

これにより、コンテナを再ビルドしても設定や履歴が保持されます。

**初回セットアップ後の確認：**

```bash
# Claude Code がインストールされているか確認
claude --version

# MCP サーバーの設定を確認
cat ~/.claude/claude_desktop_config.json
```

### Markdown Lint の実行

```bash
# すべての Markdown ファイルをチェック
markdownlint docs/*.md

# 自動修正
markdownlint --fix docs/*.md
```

### Markdown Lint 設定

`.markdownlint.json` にルール設定があります：

- MD013（行の長さ）: 無効（日本語ドキュメントのため）
- MD033（HTML タグ）: 無効（コードサンプルで使用）
- MD034（リンクの自動検出）: 無効

## Git ワークフロー

### ブランチ命名規則

- 機能ブランチ: `feature/chrome-{VERSION}-docs`
- 修正ブランチ: `fix/説明的な名前`
- その他: `misc/説明的な名前`

### コミットメッセージ

説明的な日本語メッセージを使用：

```
docs: Chrome 135 の更新レポートを追加（リリース日付き・コードサンプル含む）
fix: Chrome 134 の dynamic-range-limit を削除（Chrome 136 の機能）
chore: markdownlint 設定を追加
```

### プルリクエスト

- すべての変更はプルリクエスト経由でマージ
- 可能な限り差分を最小限に保つ

## プロジェクト構成

```
chrome-update-tracker/
├── .devcontainer/
│   └── devcontainer.json     # Dev Container 設定
├── .markdownlint.json        # Markdown lint ルール
├── docs/
│   ├── chrome-133-2025-02-04.md
│   ├── chrome-134-2025-03-04.md
│   └── (各バージョン...)
├── .gitignore
├── CLAUDE.md                 # Claude Code 用ガイダンス
└── README.md
```

## ライセンス

このリポジトリは個人的な学習・参照目的で作成されています。

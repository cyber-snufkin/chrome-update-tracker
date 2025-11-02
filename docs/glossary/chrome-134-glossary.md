# 🧭 Chrome 134 新用語リファレンス（Glossary）

> 本Glossaryは **docs/chrome-134-2025-03-04.md** の「全体サマリ」の直後に挿入予定の内容です（PR前の準備版）。

| 用語 | 概要 | 関連領域 |
|------|------|-----------|
| **Priority Hints** | `fetchpriority` などでリソースの取得優先度をブラウザへヒント提供。LCP向上に寄与。 | パフォーマンス |
| **Popover API** | 標準のポップオーバーUI管理。`showPopover()`/`hidePopover()`、フォーカス/外側クリック閉じ内包。 | HTML / A11y |
| **URLPattern** | URLのマッチング・抽出を行う標準API。ルーティングやSWで便利。 | ルーティング / SW |
| **Compression Streams** | `CompressionStream`/`DecompressionStream` によるブラウザ内圧縮・展開。 | ストリーム / パフォーマンス |
| **Origin Trial (OT)** | 期限付き実験。トークン配布で実使用下の評価を可能にする。 | 実験機能 |
| **Baseline** | 横断的な実装・安定化が進んだ“使える”機能群の合意点。 | 互換性 |
| **SRI/CSP** | 改ざん検出/読込制御。CDN依存の供給網リスクを軽減。 | セキュリティ |

# TraeStack

TraeStack は、Trae 向けの skill 定義リポジトリです。検出可能で、ルーティング可能で、安定して呼び出せる skill ドキュメントと配布ファイルを提供します。

このリポジトリが担当する範囲：

- skill 定義レイヤー
- ルーティングと情報アーキテクチャ
- ドキュメントと整合性検証

このリポジトリが担当しない範囲：

- 基盤となる実行エンジン
- ブラウザ、デプロイ、外部プラットフォーム連携などの実行時実装
- 既存ワークフローのロジック改変

## リポジトリ構成

- `skills/<skill-name>/SKILL.md`：Trae で検出可能な skill 定義
- `skills/README.md`：skill 一覧
- `skills/ROUTING.md`：skill ルーティングガイド
- `skills/NAVIGATION.zh-CN.md`：中国語ナビゲーション
- `skills/DELIVERY-SUMMARY.md`：納品サマリー
- `OFFICE-HOURS.zh-CN.md`：リポジトリ境界、依存関係、適配方針
- `traestack.config.json`：統一設定エントリ
- `scripts/validate_skills.py`：skill 整合性検証スクリプト
- `scripts/deploy-linux.sh`：Linux 用ワンクリック配置スクリプト
- `scripts/deploy-macos.sh`：macOS 用ワンクリック配置スクリプト
- `scripts/deploy-windows.ps1`：Windows 用ワンクリック配置スクリプト
- `GITHUB-PUBLISH.zh-CN.md`：GitHub 公開手順

## クイックスタート

まずリポジトリ整合性を確認します。

```bash
python3 scripts/validate_skills.py
```

ローカルの Trae 環境に skills を配置する場合：

### Linux

```bash
bash scripts/deploy-linux.sh
```

### macOS

```bash
bash scripts/deploy-macos.sh
```

### Windows PowerShell

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\deploy-windows.ps1
```

## 既定の配置先

- Linux：`~/.trae/skills`
- macOS：`~/.trae/skills`
- Windows：`%USERPROFILE%\.trae\skills`

配置スクリプトは既定で次を行います。

- `skills/` の存在確認
- 同名 skill がある場合は対象ディレクトリの既存内容をバックアップ
- このリポジトリ内の全 skill を同期
- 配置結果を出力

## GitHub への公開

完全な手順は `GITHUB-PUBLISH.zh-CN.md` を参照してください。

初回公開でよく使う手順：

```bash
git init
git add .
git commit -m "feat: initialize traestack skills repo"
git branch -M main
git remote add origin <GitHub リポジトリ URL>
git push -u origin main
```

## 補足

- このリポジトリは適配レイヤーであり、基盤の実行ロジックは含みません。
- skill の検出性は、ディレクトリ名、`SKILL.md` の frontmatter、索引ドキュメントの整合性に依存します。
- 可能であれば push 前に `python3 scripts/validate_skills.py` を実行してください。

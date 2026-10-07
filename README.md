# 豆包创作广场 · 电脑端访问门户

一个纯静态的导航门户站点，让你在**电脑浏览器**里一键访问豆包的「创作广场 / AI 创作 / 智能体 / 写作」，
无需下载 App。已部署到 GitHub Pages，任何人都能打开使用。

## 在线地址

```
https://qianqianlaifeng.github.io/doubao-square/
```

## 功能

- 🚀 **一键打开**：在新标签页直达豆包官方页面，登录与创作体验最完整。
- 🖥️ **内嵌预览**：直接在站内 iframe 预览豆包页面（豆包未强制禁止内嵌）。
- 🔀 **多入口切换**：创作广场 / 官网首页 / AI 写作 一键切换。
- 📱 **电脑端优化**：大屏布局 + 清晰的操作提示。

## 本地预览

任意静态服务器都行，例如：

```bash
# Python
python -m http.server 8080
# 浏览器访问 http://localhost:8080
```

或双击 `index.html` 直接打开（部分浏览器对本地 file:// 的 iframe 有限制，建议用上面的本地服务器）。

## 更新站点（一键）

项目根目录已放了 **`部署更新.bat`**。以后改完文件，双击它即可自动提交并推送到 GitHub Pages，
约 1–2 分钟后刷新线上地址就能看到更新。

> 首次运行会让你用 GitHub 账号登录一次（弹浏览器），登录后之后就免登录。

## 手动部署（GitHub Pages）

本项目就是 `main` 分支根目录的 `index.html`，开启 Pages 即可：

1. 仓库 → Settings → Pages → Build and deployment → Source 选 `Deploy from a branch`
2. Branch 选 `main` / `/(root)` → Save
3. 等待 1–2 分钟，访问 `https://qianqianlaifeng.github.io/doubao-square/`

## 说明

本仓库为第三方导航门户，仅聚合豆包官方公开网页入口，与字节跳动 / 豆包官方无隶属关系。
所有创作功能由豆包官方提供。

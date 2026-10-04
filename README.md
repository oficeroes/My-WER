# WER 机器人程序档案

这里保存 WER 机器人相关工程文件，适合查看不同版本的程序记录。仓库尚未附赛题、完整硬件清单或实机演示，因此不能从文件名判断“比赛最终版”或已完成的任务。

## 从哪里看起

1. 打开 [`Program/`](Program/) 查看工程文件；原始文件名保留，尚未建立赛季与任务对照表。
2. `.srhs` 是 Abilix/Scratch 工程包，内含 `abilixProject.srh`，并非普通 Python 脚本。文件元数据中的版本为 `1.0.3.4`，硬件类型字段多数为 `SKCON9`，`Ai_2.srhs` 为 `SKCON2`。字段不代表已经核实具体机器人型号或实机运行。
3. [`Program/abilixProject.py`](Program/abilixProject.py) 包含 `SKCON9` 头部并调用 `libstarpy`、`Robot()` 等设备接口；普通电脑的 Python 环境不能直接运行。

工程文件需在相容的 Abilix 工具和对应设备上检查。后续如果要补比赛照片，需先核对机器人、赛题、程序版本的对应关系以及出镜人员的公开许可。

## 文件

| 路径 | 当前内容 |
| --- | --- |
| `Program/` | 多个 Abilix `.srhs` 工程文件，以及设备专用 `Program/abilixProject.py` |
| `upload.sh` | 提交本地全部变更，拉取并推送到 `main` |
| `download.sh` | 获取 `main` 后，将本地工作树重置为远端版本 |

`download.sh` 会执行 `git reset --hard` 和 `git clean -fd`，未提交的修改及未跟踪文件可能丢失。使用前应检查并备份本地内容。`upload.sh` 会执行 `git add .`，使用前应检查拟公开的文件。

## 待补资料

- 说明各 `.srhs` 文件对应的赛季、任务和所需软件。
- 补充经确认的个人分工、程序运行环境、实物照片或演示记录。
- 如需复用代码，先说明适用硬件与验证范围。

# 终极爆款写作专家 · Ultimate Viral Writer

> 一个可以一键安装到任意 Agent 平台的中文写作 Skill。
> 作者：**icodebase-cn** · License: MIT

融合了多位大V的爆款战略方法论、中文写作的「活人感」战术铁律、数字生命卡兹克的实战派技巧，以及咪蒙起标题的工业化测试流程。装上之后，AI 不再是生硬的文本生成器，而是一个在追求最大曝光的同时坚守底线、懂情绪共鸣、能自我审查的内容创作伙伴。

## 它能做什么

| 能力 | 说明 |
| --- | --- |
| HKR 选题质检 | Happy / Knowledge / Resonance 三维打分，S 级才开写 |
| 标题工业化 A/B 测试 | 3-5 个候选，按数字钩子、冲突结构、读者代入、情绪前置逐项打分 |
| 五种文章原型 | 调查实验 / 产品体验 / 现象解读 / 工具分享 / 方法论分享，各有写法重心 |
| 反 AI 味铁律 | 禁翻案腔、禁三项排比、禁破折号冒号、禁商业黑话、禁假设性例子 |
| 防封禁红线 | 不煽动性别阶层对立，不贩卖极端焦虑，不用侮辱性词汇，不编造事实 |
| 四层自检 | L1 硬性规则 / L2 风格一致性 / L3 内容质量 / L4 活人感终审 |

**触发时机**：写公众号文章、知乎回答、长文草稿、按素材扩写、「帮我写篇文章」「按我的风格写」。
**不适用**：小红书、朋友圈等短内容，以及纯标题生成。

---

## 一键安装

### 1. Claude Code（插件市场，推荐）

```bash
/plugin marketplace add icodebase-cn/aiset-viral-writer
/plugin install aiset-viral-writer@icodebase-skills
```

或直接装单个插件：

```bash
claude plugin add github:icodebase-cn/aiset-viral-writer
```

装完重启会话，说「帮我写篇文章」即可自动触发。

### 2. 一行命令装到本地任意 Agent

```bash
curl -fsSL https://raw.githubusercontent.com/icodebase-cn/aiset-viral-writer/main/scripts/install.sh | bash
```

默认装到 `~/.claude/skills/`。装到别的目录：

```bash
TARGET=~/.codex/skills curl -fsSL https://raw.githubusercontent.com/icodebase-cn/aiset-viral-writer/main/scripts/install.sh | bash
```

常见目标目录参考：

| 平台 | 目录 |
| --- | --- |
| Claude Code（个人） | `~/.claude/skills/` |
| Claude Code（项目级） | `<项目>/.claude/skills/` |
| Codex / Cursor / 其他支持 SKILL.md 的客户端 | 各自的 `skills/` 目录 |

### 3. Claude.ai 网页版 / 桌面版（上传 zip）

下载 [`release/aiset-viral-writer.zip`](release/aiset-viral-writer.zip)，在 Settings → Capabilities → Skills → Upload skill 上传即可。

### 4. 任意不支持 Skill 机制的 Agent（复制粘贴）

打开 [`plugins/aiset-viral-writer/skills/aiset-viral-writer/SKILL.md`](plugins/aiset-viral-writer/skills/aiset-viral-writer/SKILL.md)，全文复制粘贴进新会话，或粘进自定义 GPT / 智能体的系统提示词。它是自包含的，单文件即可工作。

### 5. git submodule / 手动

```bash
git clone https://github.com/icodebase-cn/aiset-viral-writer.git
cp -r aiset-viral-writer/skills/aiset-viral-writer ~/.claude/skills/
```

---

## 目录结构

```
aiset-viral-writer/
├── .claude-plugin/
│   └── marketplace.json                  # 插件市场清单，支持 /plugin marketplace add
├── plugins/
│   └── aiset-viral-writer/
│       ├── .claude-plugin/plugin.json    # 插件清单
│       └── skills/aiset-viral-writer/
│           ├── SKILL.md                  # 主入口，自包含完整方法论
│           └── references/
│               ├── methodology.md        # 选题 HKR、标题 A/B、五种原型
│               ├── anti-ai-rules.md      # 活人感铁律与禁止清单
│               ├── self-check.md         # 四层自检检查表
│               └── output-template.md    # 标准输出骨架
├── skills/aiset-viral-writer/            # 同一份 skill 的根目录副本，方便直接 cp
├── release/aiset-viral-writer.zip           # 供网页版上传
└── scripts/
    ├── install.sh                        # 一键安装
    └── build.sh                          # 同步副本 + 打包
```

## 输出格式

每次生成文章固定五段：

1. 动笔前三件事 + HKR 质检
2. 选题与标题 + 文章原型
3. 文章正文
4. 互动引导
5. 四层自检报告

材料不足 5 件具体事实时，它会先向你索要材料，而不是用抽象观点硬撑长稿。

## 开发

```bash
bash scripts/build.sh          # 同步 skills/ 副本并重新打包 zip
claude plugin validate ./plugins/aiset-viral-writer      # 校验清单与 frontmatter
```

## 致谢

方法论汇编自多位中文内容创作者的公开分享，包括数字生命卡兹克的实战派写作技巧与咪蒙体系的标题测试流程。本 Skill 仅作方法论整理与工程化封装。

## License

MIT © icodebase-cn

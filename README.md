# 🎪 Festival Feedback System

An automated feedback triage system for the Winter Festival, powered by **goose** and GitHub Actions.

## 🎯 What It Does

When someone submits feedback as a GitHub Issue, goose automatically:
- 🏷️ **Categorizes** the issue (bug, feature, question, urgent)
- ⚡ **Assigns priority** (high, medium, low)
- 💬 **Adds helpful comments** with next steps
- 🎭 **Analyzes sentiment** (positive, negative, neutral)

## 🛠️ How It Works

1. **New Issue Created** → GitHub Actions triggers
2. **goose Analyzes** → Reads the issue title and body
3. **Labels Applied** → Automatic categorization
4. **Comment Added** → Helpful response with emoji flair

## 📋 Label Categories

| Label | Description |
|-------|-------------|
| 🚨 `urgent` | Critical issues needing immediate attention |
| 🐛 `bug` | Something isn't working correctly |
| ✨ `feature` | New feature requests or suggestions |
| ❓ `question` | Questions about the festival |
| 🔴 `priority: high` | Needs attention ASAP |
| 🟡 `priority: medium` | Should be addressed soon |
| 🟢 `priority: low` | Can wait, nice to have |

## 🚀 Setup

1. Fork this repository
2. Add your LLM API key as a GitHub Secret named `OPENROUTER_API_KEY`
3. Create an issue and watch the magic happen!

## 📝 The Coordinator's Notes (Test Issues)

Try creating these issues to test the system:

### 1. Urgent Problem 🚨
**Title:** URGENT: Main tent heating system failure
**Body:** The heating system in the main festival tent has completely stopped working. Temperature is dropping rapidly and we have 200+ guests inside. Need immediate assistance!

### 2. Feature Request ✨
**Title:** Suggestion: Add a photo booth near the ice sculptures
**Body:** It would be amazing to have a photo booth set up near the ice sculpture display. Visitors keep asking where they can take festive photos. Maybe with some winter-themed props?

### 3. Question ❓
**Title:** Where is the lost and found located?
**Body:** I lost my red scarf somewhere near the food vendors. Is there a lost and found? What are the hours? Thanks!

---

Built with ❄️ for the Winter Festival | Powered by [goose](https://github.com/block/goose)

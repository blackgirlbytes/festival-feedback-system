#!/bin/bash
# Setup labels for the Festival Feedback System
# Run this after creating the repository: ./scripts/setup-labels.sh

set -e

echo "🏷️ Setting up Festival Feedback labels..."

# Create labels from JSON file
labels=(
  "urgent|d73a4a|🚨 Critical issues needing immediate attention"
  "bug|d73a4a|🐛 Something isn't working correctly"
  "feature|a2eeef|✨ New feature request or suggestion"
  "question|d876e3|❓ Questions about the festival"
  "priority: high|b60205|🔴 Needs attention ASAP"
  "priority: medium|fbca04|🟡 Should be addressed soon"
  "priority: low|0e8a16|🟢 Can wait, nice to have"
  "sentiment: positive|0e8a16|😊 Positive feedback"
  "sentiment: negative|d73a4a|😟 Negative feedback"
  "sentiment: neutral|c5def5|😐 Neutral feedback"
  "triaged|5319e7|🤖 Processed by goose"
)

for label_data in "${labels[@]}"; do
  IFS='|' read -r name color description <<< "$label_data"
  echo "  Creating label: $name"
  gh label create "$name" --color "$color" --description "$description" --force 2>/dev/null || true
done

echo "✅ Labels setup complete!"

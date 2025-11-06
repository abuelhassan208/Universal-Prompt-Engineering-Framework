#!/bin/bash

# ═══════════════════════════════════════════════════════════════
# 🚀 Git Commands for Publishing to GitHub
# ═══════════════════════════════════════════════════════════════

echo "🔧 Initializing Git repository..."
git init

echo "📦 Adding all files..."
git add .

echo "✍️  Creating first commit..."
git commit -m "feat: initial release of Universal Prompt Engineering Framework v3.0

- Complete YAML-structured framework with EV scoring system
- 8 quality metrics for prompt evaluation (role_clarity, task_precision, inputs_quality, constraints_strength, output_design, style_consistency, safety_compliance, cross_model_compatibility)
- Universal SuperTemplate v3.0 for production-ready prompts
- Support for 6+ AI models: ChatGPT (GPT-4o, GPT-5), Claude (Sonnet 4.5, Opus 4.1), Gemini (2.5 Pro), Llama, DeepSeek, Grok
- Multi-language support (8+ languages with auto-detection)
- Comprehensive bilingual documentation (English & Arabic)
- 3 practical examples (basic, technical, creative)
- Auto-optimization with iterative refinement
- 6-test AUTO-TESTS validation suite
- Security policy and code of conduct
- Academic citation file (CITATION.cff)
- CC BY-NC-SA 4.0 license

Features:
✅ Minimum EV Score: 0.85/1.00
✅ Zero-Questions Policy for instant processing
✅ Cross-model compatibility testing
✅ Built-in safety and ethical AI compliance
✅ YAML-structured architecture
✅ Production-ready quality assurance

Author: Ahmed Abu El-Hassan (أحمد أبو الحسن)
Email: aboualvixx@gmail.com
GitHub: @abuelhassan208
License: CC BY-NC-SA 4.0"

echo "🌿 Renaming branch to main..."
git branch -M main

echo "🔗 Adding remote origin..."
git remote add origin git@github.com:abuelhassan208/Universal-Prompt-Engineering-Framework.git

echo "📤 Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Done! Your repository is now live on GitHub!"
echo "🌐 Visit: https://github.com/abuelhassan208/Universal-Prompt-Engineering-Framework"
echo ""
echo "📋 Next steps:"
echo "1. Go to your repository on GitHub"
echo "2. Add Topics (Settings → About → Topics)"
echo "3. Create a Release (Releases → Create new release)"
echo "4. Share with the community! 🎉"

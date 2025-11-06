# Contributing to Universal Prompt Engineering Framework

First off, thank you for considering contributing to the Universal Prompt Engineering Framework! 🎉

This document provides guidelines for contributing to this project. Following these guidelines helps maintain quality and makes the contribution process smooth for everyone.

---

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
- [Getting Started](#getting-started)
- [Contribution Guidelines](#contribution-guidelines)
- [Style Guidelines](#style-guidelines)
- [Commit Message Guidelines](#commit-message-guidelines)
- [Pull Request Process](#pull-request-process)
- [Community](#community)

---

## 🤝 Code of Conduct

This project and everyone participating in it is governed by our commitment to:

- **Be Respectful**: Treat all contributors with respect and kindness
- **Be Collaborative**: Work together constructively
- **Be Inclusive**: Welcome diverse perspectives and backgrounds
- **Be Professional**: Maintain professional communication
- **Be Ethical**: Follow ethical AI principles and practices

By participating, you are expected to uphold these values.

---

## 🎯 How Can I Contribute?

### 1. Reporting Bugs or Issues

If you find a bug or issue with the framework:

- **Check existing issues** to avoid duplicates
- **Use the issue template** (if available)
- **Provide clear description** of the problem
- **Include examples** demonstrating the issue
- **Specify which AI model** you were using (if applicable)

**Example Issue Title**: `[BUG] EV Score calculation incorrect for role_clarity metric`

### 2. Suggesting Enhancements

Have an idea to improve the framework?

- **Check existing suggestions** to avoid duplicates
- **Clearly describe the enhancement** and its benefits
- **Provide use cases** where this would be helpful
- **Consider backward compatibility** implications

**Example Enhancement Title**: `[FEATURE] Add support for multi-modal prompts (text + image)`

### 3. Improving Documentation

Documentation improvements are always welcome:

- Fix typos or grammatical errors
- Clarify confusing sections
- Add more examples
- Translate documentation to other languages
- Improve README or guides

### 4. Adding Examples

Share your optimized prompts:

- Create new example files in the `examples/` directory
- Follow the existing example format
- Include before/after comparison
- Provide EV score breakdown
- Add usage recommendations

### 5. Enhancing the Framework

Core framework improvements:

- Optimize EV scoring algorithms
- Add new quality metrics
- Improve template structure
- Enhance cross-model compatibility
- Add new features

---

## 🚀 Getting Started

### Prerequisites

- GitHub account
- Basic understanding of YAML and Markdown
- Familiarity with prompt engineering concepts
- (Optional) Experience with AI models like ChatGPT, Claude, etc.

### Setup

1. **Fork the repository**
   ```bash
   # Click the "Fork" button on GitHub
   ```

2. **Clone your fork**
   ```bash
   git clone https://github.com/YOUR-USERNAME/Universal-Prompt-Engineering-Framework.git
   cd Universal-Prompt-Engineering-Framework
   ```

3. **Create a branch**
   ```bash
   git checkout -b feature/your-feature-name
   # or
   git checkout -b fix/your-bug-fix
   ```

4. **Make your changes**
   - Edit files as needed
   - Test your changes thoroughly
   - Ensure YAML syntax is valid

5. **Commit your changes**
   ```bash
   git add .
   git commit -m "feat: add new feature description"
   ```

6. **Push to your fork**
   ```bash
   git push origin feature/your-feature-name
   ```

7. **Create a Pull Request**
   - Go to the original repository
   - Click "New Pull Request"
   - Select your branch
   - Fill out the PR template

---

## 📝 Contribution Guidelines

### Framework Modifications

When modifying the core framework file:

1. **Preserve Structure**: Maintain the YAML structure and organization
2. **Update Version**: Increment version number appropriately (see [Versioning](#versioning))
3. **Update Changelog**: Add entry to CHANGELOG.md
4. **Test Thoroughly**: Verify changes work across multiple AI models
5. **Document Changes**: Update README and relevant documentation

### Adding New Metrics

If proposing new EV metrics:

1. **Justify the metric**: Explain why it's needed
2. **Define clearly**: Provide precise evaluation criteria
3. **Assign weight**: Suggest appropriate weight (total must equal 1.0)
4. **Provide examples**: Show how it would be scored
5. **Consider compatibility**: Ensure it works across AI models

### Adding Examples

When adding new examples:

1. **Use the template**: Follow existing example structure
2. **Include all sections**:
   - Scenario description
   - Before (raw prompt)
   - After (optimized prompt)
   - EV score breakdown
   - Improvements made
   - Usage recommendations
3. **Calculate accurate EV scores**: Use the framework's scoring system
4. **Test the prompt**: Verify it works with multiple AI models
5. **Add author attribution**: Include your name if you wish

---

## 🎨 Style Guidelines

### YAML Formatting

- Use 2 spaces for indentation (no tabs)
- Maintain consistent spacing
- Use quotes for strings with special characters
- Keep lines under 100 characters when possible
- Add comments for complex sections

### Markdown Formatting

- Use proper heading hierarchy (H1 → H2 → H3)
- Include blank lines between sections
- Use code blocks with language specification
- Use tables for structured data
- Add emoji sparingly for visual clarity

### Language and Tone

- **Clear and Concise**: Avoid unnecessary verbosity
- **Professional**: Maintain professional tone
- **Inclusive**: Use inclusive language
- **Accurate**: Ensure technical accuracy
- **Consistent**: Follow existing terminology

---

## 💬 Commit Message Guidelines

Follow the [Conventional Commits](https://www.conventionalcommits.org/) specification:

### Format

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Types

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Formatting, missing semicolons, etc.
- `refactor`: Code restructuring
- `test`: Adding tests
- `chore`: Maintenance tasks

### Examples

```bash
feat(ev-engine): add new cross-model compatibility metric

Added a new metric to evaluate prompt compatibility across different AI models.
This metric scores prompts based on universal prompting patterns.

Closes #42
```

```bash
docs(examples): add example for data analysis prompts

Created a new example demonstrating how to optimize data analysis prompts
with proper input specifications and output formatting.
```

```bash
fix(template): correct YAML syntax error in constraints section

Fixed indentation issue in the CONSTRAINTS section that was causing
parsing errors in some YAML parsers.
```

---

## 🔄 Pull Request Process

### Before Submitting

- [ ] Code follows the style guidelines
- [ ] YAML syntax is valid
- [ ] Documentation is updated
- [ ] CHANGELOG.md is updated
- [ ] Examples are tested
- [ ] Commit messages follow guidelines
- [ ] Branch is up to date with main

### PR Template

When creating a PR, include:

1. **Description**: What does this PR do?
2. **Motivation**: Why is this change needed?
3. **Changes**: List of specific changes made
4. **Testing**: How was this tested?
5. **Screenshots**: If applicable (for documentation changes)
6. **Related Issues**: Link to related issues

### Review Process

1. **Automated Checks**: Ensure all checks pass
2. **Maintainer Review**: Wait for maintainer feedback
3. **Address Feedback**: Make requested changes
4. **Approval**: Get approval from maintainer
5. **Merge**: Maintainer will merge your PR

### After Merge

- Your contribution will be credited in the next release
- Update your fork to stay synchronized
- Consider contributing more! 🎉

---

## 📊 Versioning

This project follows [Semantic Versioning](https://semver.org/):

- **MAJOR** (X.0.0): Breaking changes, major architectural updates
- **MINOR** (3.X.0): New features, backward compatible
- **PATCH** (3.0.X): Bug fixes, minor improvements

---

## 🌍 Translation Contributions

We welcome translations of documentation:

1. Create a new directory: `docs/[language-code]/`
2. Translate README.md and other docs
3. Maintain the same structure
4. Update main README with language link
5. Ensure technical accuracy in translation

---

## 🏆 Recognition

Contributors will be recognized in:

- **CHANGELOG.md**: For each contribution
- **README.md**: In the acknowledgments section
- **Release Notes**: For significant contributions

---

## 📧 Questions?

If you have questions about contributing:

- **Open an issue** with the `question` label
- **Email**: aboualvixx@gmail.com
- **GitHub Discussions**: (if enabled)

---

## 📄 License

By contributing, you agree that your contributions will be licensed under the same CC BY-NC-SA 4.0 license that covers the project.

You retain copyright to your contributions, but grant the project the right to use them under this license.

---

## 🙏 Thank You!

Every contribution, no matter how small, helps make this framework better for everyone. Thank you for being part of this project!

---

**Author**: Ahmed Abu El-Hassan (أحمد أبو الحسن)  
**GitHub**: [@abuelhassan208](https://github.com/abuelhassan208)  
**Email**: aboualvixx@gmail.com

© 2025 Ahmed Abu El-Hassan. All Rights Reserved.


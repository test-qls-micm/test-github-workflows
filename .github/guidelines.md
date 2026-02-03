Consider the workshop review criteria under .github/workshop-review-instructions.md, but use this guideline as the gold standard for workshops.

## Project Overview
This repository contains hands-on workshops for teaching [your topic].
Each workshop should be self-contained, beginner-friendly, and follow consistent patterns.

## When Reviewing Pull Requests

### Required Checks
- **README.md** must exist in every workshop directory
- **exercises/** directory must contain numbered exercises (01-*, 02-*, etc.)
- **solutions/** directory must mirror exercises structure
- Each exercise must have clear learning objectives stated upfront

### Code Quality Standards
- All code examples must run without errors
- Use consistent naming conventions: snake_case for files, camelCase for variables
- Include comments explaining non-obvious steps
- No hardcoded credentials or API keys

### Workshop Structure
Each workshop must contain:
- Learning objectives (bullet points at top of README)
- Estimated time to complete
- Prerequisites section
- Step-by-step instructions with code blocks
- Expected output examples
- Common troubleshooting section

### Content Quality
- Difficulty should progress gradually (beginner → intermediate)
- Explanations should assume minimal prior knowledge
- Use analogies and real-world examples
- Avoid jargon without definitions

### Testing Requirements
- All Python examples must include type hints
- All code must pass linting (flake8)
- Solutions must be tested before merge

## Anti-patterns to Flag
❌ Copy-pasted code without explanation
❌ Missing error handling in examples
❌ Incomplete exercises (no solution provided)
❌ Inconsistent formatting across workshops
❌ External dependencies without installation instructions
```

Include checks for learning objectives, code quality, beginner-friendliness, and consistent structure.
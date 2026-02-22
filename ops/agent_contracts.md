# Agent contracts (v1)

Purpose: make outputs predictable and easy to review.

## Shared canon
- Capabilities: `docs/adspector_capabilities.md`
- ICP: DE agencies managing multiple Google Ads accounts
- Messaging: do NOT emphasize "built in 1 month"
- Language split: LinkedIn (DE), SEO/blog (EN)

## Leadfinder
- Writes: `outputs/leadfinder/leads.csv` (append-only)
- Also writes: `outputs/leadfinder/YYYY-MM-DD_report.md`
- Must include: source + signal + domain/link

## Messenger (drafts only)
- Writes: `outputs/messenger/templates_de.md`
- Focus: DE outreach drafts + personalization snippets; **no sending**

## Content Maker (DE)
- Writes: `outputs/content_de/posts_de.md`
- Also: `outputs/content_de/calendar_de.md`

## SEO / Blog Writer (EN)
- Writes: `outputs/seo_en/blog_backlog.csv`
- Also: `outputs/seo_en/outlines/<slug>.md` and `outputs/seo_en/drafts/<slug>.md`

## Proof / Case Studies
- Writes: `outputs/proof/proof_snippets.md`
- Also: `outputs/proof/objections.md` and `outputs/proof/case_studies.md`

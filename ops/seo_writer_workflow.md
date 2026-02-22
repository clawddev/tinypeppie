# SEO Writer Workflow (v1) — AdSpector

Goal: produce consistent, high-quality SEO articles with minimal iteration.

This workflow chains these skills:
1) `seo-content-brief`
2) `seo-content-writer`
3) `meta-tags-optimizer`
4) `on-page-seo-auditor`

Outputs live in:
- `outputs/seo_en/briefs/`
- `outputs/seo_en/drafts/`
- `outputs/seo_en/meta/`
- `outputs/seo_en/qa/`

## 0) Inputs (required)
For each article, define:
- Primary keyword
- Search intent (informational/commercial/comparison)
- Target audience (global ecom marketers; agency operators)
- Product tie-in (which AdSpector modules are relevant)
- Tone: practical, not salesy

We keep links optional; Cursor can place internal links. Still include *suggested anchor text*.

## 1) Create a content brief (seo-content-brief)
**Prompt template**
- Keyword: <primary>
- Audience: <audience>
- Goal: rank + be genuinely useful
- Must include: templates, examples, checklist
- Must avoid: hype, unverifiable claims

**Output file**
- `outputs/seo_en/briefs/<slug>_brief.md`

Brief should include:
- H1 suggestion
- H2/H3 outline
- FAQs (3–6)
- Example sections required
- Suggested semantic terms (not stuffing)

## 2) Draft the article (seo-content-writer)
Use the brief to generate full copy.

**Output file**
- `outputs/seo_en/drafts/<slug>.md`

Requirements:
- Scannable sections, short paragraphs
- At least 3 concrete examples
- One checklist section
- Soft product note (optional) that maps to AdSpector capabilities

## 3) Optimize meta tags (meta-tags-optimizer)
Take the draft and generate:
- 3 meta title options (50–60 chars)
- 2 meta description options (150–160 chars)
- Pick 1 recommended pair

**Output file**
- `outputs/seo_en/meta/<slug>_meta.md`

## 4) Run on-page QA (on-page-seo-auditor)
Audit the draft for:
- Heading structure
- Keyword placement (natural)
- Missing sections users expect
- Readability
- Overlaps/repetition

**Output file**
- `outputs/seo_en/qa/<slug>_qa.md`

## 5) Patch pass (optional)
If QA flags issues, update the draft once and re-run QA.

## Definition of done
- Draft exists in `drafts/`
- Meta exists in `meta/`
- QA score/notes exist in `qa/`
- The post includes suggested anchor text for Cursor to link (no hard dependency)

## Operational cadence
- 2 posts/week
- Every Monday: pick next 2 keywords from `outputs/seo_en/blog_backlog.csv`
- Every Friday: review titles/meta + publish

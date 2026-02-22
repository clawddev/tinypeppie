# AdSpector — capabilities (canonical)

> Source: bro’s product rundown (2026-02-22). Keep this doc updated; all agents should treat it as the source of truth.

## One-liner
AdSpector is a Google Ads + Merchant Center optimization platform and **command center**: it connects to Google Ads + Merchant Center, analyzes structure/performance, and lets you take optimization actions and run automations in one place.

## Core outcomes
- See **what’s costing money** (waste) immediately from the dashboard.
- Fix waste **in-app** (negatives + product exclusions) without hunting campaigns/IDs.
- Run structured audits (structure + performance + alignment) and apply fixes.
- Get alerts for anomalies (spend/conversions), PMax channel mix, Merchant Center eligibility, URL health.
- Optimize product feed data (titles/attributes/labels) for Shopping/PMax.
- Use an AI Advisor to create campaigns and propose/execute changes **with approval**.

## Modules

### 1) Dashboard (Command Center)
**Overview / visibility**
- Account switcher across connected Google Ads accounts.
- Account type indication (e-commerce vs lead gen).
- Link/unlink Merchant Center to a Google Ads account.
- Account Health Score (0–100) based on waste %, ROAS/CPA, CTR, POAS (when COGS exists) with progress bars per dimension.
- Daily snapshot: account metrics, campaign metrics, top & worst products, profit metrics (if COGS), wasted search terms, feed health (counts, field coverage, last sync).
- Onboarding guide (connect → audit → connect MC → optimize feed).
- Latest audit summary + deep link.

**Actions**
- One-click exclusions:
  - add wasted search terms as negatives (ad group level **or** PMax campaign level)
  - exclude underperforming products in Shopping/PMax
- Snapshot refresh with timeframe (1–90 days) or custom date range.
- Custom health thresholds per account (waste %, ROAS, CTR, POAS, CPA).

### 2) Audits
**Audit types**
- Full (structure + performance + conversion goals)
- Structural-only
- Performance-only

**Scope**
- Single campaign / multiple campaigns / entire account.
- Timeframe: 1/7/14/30/90 days or custom.

**Structural checks (examples)**
- Keyword counts per ad group (too few/many)
- Mixed match types in same ad group
- Brand/non-brand mixing
- Negative conflicts
- Duplicate keywords across ad groups
- Ad groups without ads
- Low search volume keywords
- Search Partners usage (esp. brand campaigns)
- Broad match usage risk
- Auction insights (impression share / overlap)
- RSA strength + extensions
- Network settings (Display/Search Partners)
- Location targeting (presence vs interest)
- Device performance
- Budget limited campaigns
- Bid strategy sanity checks / unrealistic targets
- Conversion action quality + goal classification (ecom vs lead gen)
- Semantic alignment (AI): keyword–ad–landing page match; core/edge/off-fit
- Change history analysis: correlate changes to performance shifts + confidence

**Performance checks (examples)**
- Zero-conversion keywords/search terms
- ROAS/CPA vs benchmarks
- CVR/CTR vs benchmarks
- Quality Score issues

**Features**
- Audit history (completed/running/failed)
- Apply critical fixes from audit UI
- Exclude search terms/products from results
- Export reports (PDF/HTML/JSON)
- Audit logs

### 3) Alerts
**Alert types**
- Conversion anomaly (daily; drops vs day/week/month)
- Spend anomaly (daily)
- PMax channel distribution (daily)
- Merchant Center eligibility changes (on product sync)
- URL health (scheduled: 404/redirects/timeouts)

**Configuration**
- Thresholds for warning/critical; per-channel max %; min spend before alerting; check time; comparisons toggles.

**Views & actions**
- Period-over-period overview
- Campaign spend tracker
- PMax channel breakdown
- URL status list
- Edit campaign budgets from alerts UI
- Slack integration (send alerts to Slack when configured)

### 4) AI Advisor
**What it can do**
- Recommend + propose actions using live account data (approval workflow):
  - budget changes
  - pause/enable
  - negatives
  - product exclusions
  - bidding changes
- Campaign creation: Search + PMax (FULL / SHOPPING_ONLY)
- Product flows: best-sellers and underperformer exclusion using ROAS, revenue, POAS, profit.
- Keyword/search-term suggestions including business-aware negatives.
- Impression share/competition and budget allocation guidance.

**Inputs/outputs/tools**
- Uses live Google Ads data.
- Landing page scraping for content.
- Image upload + AI-generated images.
- English + German.

### 5) Feed Management
**What it does**
- Connect Merchant Center; manage/optimize product data for Shopping/PMax.

**Feed concepts**
- Primary feed
- Supplementary feeds (brand / non-brand / optimized)
- Feed labels (enable/disable)

**Capabilities**
- Feed dashboard (accounts, product counts, sync status)
- Product view/filter/edit + bulk updates + change history
- Buckets (group products by rules / custom_label_X)
- Rules (presets; CRUD; preview)
- Optimization (AI title/description/attribute suggestions; approve/reject)
- Title builder (token templates; brand/non-brand; per-category)
- Image Forge (AI lifestyle/alternate images)
- Export/sync (Google Sheets; primary/supplemental; auto sync)
- Field coverage stats (brand/description/gtin/category/COGS)
- COGS support (percentage or CSV/sheet) for profit analysis
- Product status by eligibility/issues/severity/channel

## Key differentiators (for messaging)
- **Command center** view of spend + waste.
- **Direct actions** in-app: negatives + product exclusions, without ID hunting.
- Combines Google Ads + Merchant Center + feed optimization + audits + alerts + AI guidance.
- Approval workflow for AI actions (control preserved).

## ICP focus (initial)
- DE-based agencies managing multiple Google Ads accounts; goal = manager efficiency (“superpowers”) → more clients per SEA manager.

## Messaging constraint
- Avoid emphasizing “built in 1 month” (can trigger quality doubts).

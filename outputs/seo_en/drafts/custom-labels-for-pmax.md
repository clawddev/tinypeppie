---
slug: custom-labels-for-pmax
primary_keyword: custom labels for performance max
secondary_keywords:
  - custom labels for pmax
  - performance max custom labels
  - google shopping custom labels
  - profit custom labels
  - best seller custom labels
  - seasonality custom labels
search_intent: informational
meta_title: Custom Labels for Performance Max: Profit + Best-Sellers (2026)
meta_description: Learn which custom labels to use for Performance Max, how to bucket profit, best-sellers, and seasonality, and how to deploy labels safely across catalogs.
publish_date: 2026-02-22
---

# Custom Labels for Performance Max: Profit, Seasonality, and Best-Sellers

Performance Max (PMax) can feel like a black box—especially when you’re managing large catalogs or multiple client accounts.

One of the simplest ways to bring structure and control back into PMax is **custom labels**.

Custom labels won’t magically fix bad creatives, broken tracking, or a messy feed. But they *do* give you a reliable system for segmentation, reporting, and scaling decisions.

This guide shows you the label systems that actually matter, how to define them, and how to roll them out safely.

## What are custom labels in Google Shopping / Merchant Center?
In Merchant Center, you can add up to **five custom label fields** per product:

- `custom_label_0`
- `custom_label_1`
- `custom_label_2`
- `custom_label_3`
- `custom_label_4`

They’re essentially “tags” you control. Google doesn’t interpret them like GTIN or brand—**you define what they mean**, then use them for:

- product segmentation in Shopping and PMax
- reporting and analysis (what’s working vs. not)
- structured testing (e.g., best-sellers vs. long-tail)
- profitability workflows (if you have COGS/margin)

## The 3 highest-leverage custom label systems (start here)
If you’re starting from scratch, don’t build 30 labels. Build **three systems** that help you make better decisions.

### 1) Profitability labels (margin / COGS / profit buckets)
If you have cost-of-goods (COGS) or margin data, profitability labels are the biggest unlock.

**Example label values:**
- `profit_high`
- `profit_mid`
- `profit_low`
- `profit_unknown`

**Where to store it:**
- Put it in one label field (e.g., `custom_label_0=profit_high`).

**How to calculate (simple):**
- Profit = Price − COGS (minus shipping/fees if you track them)
- Profit margin % = Profit / Price

**Bucket example (starter):**
- `profit_high`: margin ≥ 35%
- `profit_mid`: 20%–34%
- `profit_low`: < 20%

#### If you don’t have COGS
You can still do “profitability-like” segmentation using proxies:

- price buckets (cheap/mid/premium)
- category-level average margins (rough, but better than nothing)
- exclude ultra-low price items from aggressive expansion

The key is consistency, not perfection.

### 2) Best-seller / performance labels
This system separates products by performance so you can treat winners and long-tail differently.

**Example label values:**
- `best_seller`
- `rising_star`
- `steady`
- `long_tail`
- `no_data`

**How to define it (simple rule set):**
- `best_seller`: top 10–20% by revenue (last 30 days)
- `rising_star`: high ROAS/POAS but low volume
- `long_tail`: low clicks or low conversions

This helps agencies avoid a common mistake: optimizing the whole catalog the same way.

### 3) Seasonality / lifecycle labels
Use this when products are strongly seasonal or have clear lifecycle stages.

**Example label values:**
- `season_winter`
- `season_summer`
- `new_arrival`
- `clearance`

You can use these labels to:
- time budget allocation (push seasonal products early)
- avoid wasting spend on out-of-season items
- run controlled tests (new arrivals vs. evergreen)

## How to define buckets (practical formulas)
A good label system is:
- **small** (few values)
- **stable** (definitions don’t change weekly)
- **portable** (works across accounts)

### Pick thresholds that match your reality
Avoid copying thresholds from a blog post.

Instead, do this:
1) Pull last 30–90 days performance
2) Look at distribution (where the natural breakpoints are)
3) Set buckets that create meaningful groups (not 95% in one bucket)

### Keep labels per category when necessary
Some categories have naturally different margin/price dynamics. If needed, you can:
- calculate buckets per category
- keep label values the same (`profit_high`) but compute thresholds differently per category

## How to use custom labels in Performance Max
Custom labels are most useful when they change what you *do*.

Here are practical approaches:

### Approach A: Split campaigns by label (most control)
Example split:
- PMax campaign for `profit_high`
- PMax campaign for `profit_mid`
- PMax campaign for `profit_low`

Why it works:
- budgets and targets map to business value
- you can protect high-margin products from being dragged down

### Approach B: Split listing groups within a campaign (lighter)
Use listing group subdivisions based on custom labels.

Why it works:
- less campaign sprawl
- still improves reporting and exclusions

### Approach C: Use labels for exclusions + testing
Examples:
- exclude `profit_low` from certain expansion tests
- run promotions only for `clearance`
- evaluate creatives by bucket

## Common mistakes (avoid these)
### Mistake 1: Too many labels
If your labels create 50 combinations, nobody will use them.

Fix: start with 3 systems and 3–5 values each.

### Mistake 2: Changing definitions every week
If “best_seller” means something different every week, reporting becomes useless.

Fix: change definitions on a schedule (e.g., monthly) and keep a change log.

### Mistake 3: Mixing business logic across accounts
Agencies get into trouble when each client uses a different label system.

Fix: standardize the **label vocabulary**, even if thresholds vary by category.

## Rollout plan for agencies (simple)
1) Start with one client account
2) Implement profitability OR best-seller labels first (choose one)
3) Run a 30-day test:
   - week 1: label + verify feed
   - week 2: split or listing group segmentation
   - week 3: evaluate performance by bucket
   - week 4: refine thresholds (once)
4) Document the system as an SOP for your SEA team

## Checklist
- [ ] Choose 1–3 label systems (profit, best-seller, seasonality)
- [ ] Keep values small (3–5 per system)
- [ ] Define thresholds and store them in a doc
- [ ] Verify labels are populated across the catalog
- [ ] Decide deployment (campaign split vs listing groups)
- [ ] Measure by bucket for 30 days
- [ ] Only then refine

## Soft product note (optional)
At scale, the hard part isn’t deciding label names—it’s keeping labels consistent, previewing changes, and rolling out updates safely across accounts.

That’s where feed management with rules/templates and change history becomes a real advantage.

---

## FAQ
### How many custom labels should I use for Performance Max?
Start small: 1–3 label systems and 3–5 values each. If your team can’t explain the label system in one minute, it’s too complex.

### Do custom labels improve Performance Max performance?
They improve *decision-making*. That can improve performance because you can segment winners vs. long-tail, align budgets to profit, and reduce wasted tests.

### Can I build profitability labels without COGS?
Yes—use proxies like price buckets or category-level margin assumptions. It’s less precise, but still helpful for structuring tests.

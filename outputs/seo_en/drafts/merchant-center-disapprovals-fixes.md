---
slug: merchant-center-disapprovals-fixes
primary_keyword: merchant center disapprovals
secondary_keywords:
  - google merchant center disapproved products
  - shopping ads disapprovals
  - merchant center limited
  - price mismatch merchant center
  - landing page not working merchant center
search_intent: informational
meta_title: Merchant Center Disapprovals: Causes, Fixes + Prevention (2026)
meta_description: Fix Merchant Center disapprovals faster with a step-by-step diagnosis flow, common causes (price, availability, GTIN, URLs), and a prevention checklist.
publish_date: 2026-02-22
---

# Merchant Center Disapprovals: Causes, Fixes, and Prevention (2026)

Merchant Center disapprovals are one of the fastest ways to kill Shopping and PMax performance—because once items are disapproved, they can’t serve (or they serve less).

The frustrating part: many teams treat disapprovals like random “Google problems”. In reality, most disapprovals fall into a few predictable buckets. If you categorize the issue correctly, you can usually fix it quickly.

This guide gives you a practical diagnosis flow, the most common root causes, and a prevention checklist you can use across accounts.

## Disapproval vs Limited vs Suspension (don’t mix these up)
Before you fix anything, make sure you’re solving the right problem.

- **Item disapproved**: the product (SKU) is not eligible to show for a channel/country.
- **Item limited**: the product is eligible in a restricted way (for example, limited reach due to missing data or policy constraints).
- **Account issue / suspension**: a broader problem that can affect many or all products.

If you see account-level warnings, prioritize those first.

## The fastest way to diagnose the root cause
Use this simple flow:

1) Open **Merchant Center → Products → Diagnostics**
2) Click the **specific issue** (not just the product list)
3) Read:
   - the exact error text
   - the affected attribute(s) (e.g., `gtin`, `price`, `availability`)
   - affected countries and destinations (Shopping ads, Free listings)
4) Pick one example SKU and inspect:
   - feed values
   - landing page values
   - shipping/returns settings

The goal is to determine which category this is:

- Feed/data quality
- Price/availability mismatch
- Shipping/returns configuration
- Landing page/URL problems
- Policy violations

## Common disapproval categories (and how to fix them)

### 1) Feed/data quality issues
These are “attribute problems”: the feed is missing or contains invalid values.

#### Common causes
- Missing **GTIN** / **brand** (especially in standard product categories)
- Invalid/missing attributes like:
  - `price`
  - `availability`
  - `condition`
  - `google_product_category`
- Invalid identifiers (wrong GTIN length, placeholders, inconsistent identifiers)

#### Fix steps
1) Identify the missing/invalid attribute in Diagnostics.
2) Fix at the source:
   - in your primary feed
   - via supplemental feed
   - via feed rules (if appropriate)
3) Reprocess feed.
4) Verify the value is now present on the item.

**Example (GTIN/brand fix):**
- Add `brand` and valid `gtin` for the affected SKUs.
- If you truly don’t have GTINs, use `identifier_exists=no` *only* when appropriate and consistent.

### 2) Price & availability mismatches
These happen when what Google sees in the feed does not match what Google sees on the landing page.

#### Common causes
- `price` in feed ≠ price on landing page
- `sale_price` mismatch
- currency mismatch
- structured data on page showing a different price than the visible price
- availability mismatch (in stock vs out of stock)

#### Fix steps (fast)
1) Pick one affected SKU.
2) Check:
   - feed `price` and `sale_price`
   - landing page visible price
   - landing page structured data (JSON-LD)
3) Ensure a single source of truth:
   - Either the feed updates faster than the site, or vice versa.
4) After fixing, request re-crawl / reprocess.

**Rule of thumb:** price mismatches are often caused by delays (feed updates before website cache updates) or inconsistent structured data.

### 3) Shipping & returns settings
You can have perfect products and still get limited/disapproved if shipping information is incomplete or incompatible.

#### Common causes
- missing shipping settings for a target country
- shipping times that don’t match policy expectations
- shipping cost discrepancies

#### Fix steps
- Set shipping settings in Merchant Center for each target country.
- Ensure shipping cost and delivery time are realistic and consistent.
- Verify returns policy configuration if required.

### 4) Landing page / URL problems
These are “destination problems”: Google can’t access the page, or the page fails checks.

#### Common causes
- 404/5xx errors
- redirect loops
- blocked by `robots.txt`
- slow pages/timeouts
- mobile usability issues
- geo/IP blocking

#### Fix steps
1) Test the landing page in an incognito browser.
2) Check server responses (200 vs redirect vs 404).
3) Check robots rules.
4) Fix performance/timeouts (CDN, caching, server).
5) Re-submit for review / wait for re-crawl.

### 5) Policy violations
These are the most sensitive because “fixing” may require changing the product, claims, or business practices.

Examples include:
- restricted product categories
- unsupported claims
- promotions policy issues

If a policy issue is unclear, treat the Diagnostics text as the primary clue and fix conservatively.

## Step-by-step fix workflow (agency SOP)
If you manage multiple accounts, use this workflow to avoid thrashing:

1) **Classify** the disapproval category (data vs price vs shipping vs URL vs policy)
2) **Pick one SKU** as the test case
3) **Fix at the source** (feed rules/supplemental feed/website)
4) **Reprocess** the feed and confirm the fix on the product
5) Scale the fix to all affected SKUs
6) Only then move to the next issue type

This prevents you from changing five variables at once and not knowing what worked.

## Prevention checklist (copy/paste)
- [ ] Weekly review of Diagnostics (issues + trends)
- [ ] Monitor “eligibility changes” (approved → disapproved/limited)
- [ ] URL health checks (404/redirect/timeouts)
- [ ] Feed health checks (coverage for GTIN/brand/category)
- [ ] Change log for feed rules/templates (so you can revert)
- [ ] A single owner per account for shipping settings and returns policy

## Soft product note (optional)
If you’re doing this across many products/accounts, the hard part is not “knowing the fix”—it’s noticing issues early and applying fixes consistently.

A workflow that combines feed rules, change history, eligibility alerts, and URL health checks makes Merchant Center maintenance much less reactive.

---

## FAQ
### How long does it take for Merchant Center to re-approve products?
It depends on the issue type and Google’s crawl/review cycle. Data fixes can reflect after feed reprocessing; policy reviews can take longer.

### Why are products “Limited” instead of disapproved?
“Limited” often means the product is eligible but constrained due to missing data, policy constraints, or reduced trust signals. Treat it as a warning to improve the underlying issue.

### Can I run PMax if some products are disapproved?
Yes, but disapproved items won’t serve. If many products are disapproved, you’ll limit reach and skew performance toward a smaller subset of your catalog.

### Do supplemental feeds help fix disapprovals?
Yes—supplemental feeds are a good way to patch missing attributes (GTIN/brand/category) at scale without changing the primary source feed immediately.

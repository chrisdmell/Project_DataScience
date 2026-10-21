# eBay manager data science interview prep

**You:** i have an interview with ebay for manager data science (analytics). please find the JD and help me prepare.

**Claude:** *[Claude searched the web for "eBay Manager Data Science Analytics job description 2026" and fetched a job-listing page.]*

Good, I have a solid picture of the JD. Before I build your prep guide, let me ask a couple of things to make it actually useful:

*[Claude asked: which role/domain (Shipping Analytics, C2C / Seller Analytics, Promotions / Incentives Analytics, Not sure); biggest prep concern]*

**You:**
- Role/domain: Not sure / different role
- Biggest concern: Technical depth (stats, experimentation, SQL/Python)

**Claude:** Can you share the JD or job link? That'll let me tailor the technical prep precisely to what they're testing for.

In the meantime, here's what's consistent across all eBay Manager, Data Science – Analytics roles on the technical side:

---

## Core Technical Areas to Prep

### 1. Experimentation / A/B Testing (highest weight)
This is eBay's biggest differentiator in interviews for this level.

**Expect questions like:**
- "How would you design an experiment to measure the impact of a new shipping label UI?"
- "Your A/B test shows a 2% lift in conversion but p=0.06. What do you do?"
- "How do you handle network effects / interference in a marketplace experiment?"

**Key concepts to be sharp on:**
- Power analysis — how to calculate sample size, how effect size and variance affect it
- CUPED / variance reduction techniques
- Switchback tests, cluster-level randomization (for marketplace/two-sided platforms)
- Multiple testing correction (Bonferroni, BH)
- Novelty effects and when to run holdout groups
- Metric selection: guardrail vs. primary metrics, OEC

---

### 2. Statistics Fundamentals
- When to use t-test vs. Mann-Whitney; parametric assumptions
- Confidence intervals vs. p-values — explain to a PM who wants "just tell me if it worked"
- Bayesian vs. frequentist experimentation (Thompson sampling, etc.)
- Simpson's paradox — they love this for marketplace data
- Handling skewed distributions (revenue, GMV) — log transforms, trimming

---

### 3. SQL
Expect a live or take-home problem. Common patterns:
- Window functions: `ROW_NUMBER`, `LAG/LEAD`, running totals
- Funnel analysis (multi-step CTEs)
- Cohort retention queries
- Finding anomalies / outliers in time-series data
- Self-joins for session/event data

**Sample question:** *"Given a table of buyer events (buyer_id, event_type, timestamp), write a query to find buyers who viewed an item but did not purchase within 24 hours."*

---

### 4. Python / ML (lighter for analytics manager, but relevant)
- Pandas for data manipulation
- Statsmodels / scipy for hypothesis testing
- When they say "AI-enabled analytics" and "LLMs" in the JD — expect at least one question on how you'd use LLMs to automate insight generation or summarize experiment results. Have a concrete example or design ready.
- For shipping specifically: know basic time-series concepts (seasonality, trend decomposition) if asked about delivery time prediction.

---

### 5. Metrics & Measurement Design
At manager level they care as much about *how you define success* as the math.

- How do you pick the North Star metric for shipping?
- How do you balance buyer experience (speed, reliability) vs. seller economics (cost)?
- How do you detect metric degradation quickly — alerting, anomaly detection thresholds?

---

## Quick Interview Framework for Technical Q's

For any "how would you approach X" question, structure as:
1. **Clarify** — what's the business decision this informs?
2. **Define metrics** — what does success look like?
3. **Design** — methodology, data needed, caveats
4. **Communicate** — how do you present uncertainty to stakeholders?

---

Share the JD or tell me the domain and I'll sharpen this further — especially with domain-specific SQL problems and scenario questions.

**You:** this is a hirining manager screen round - don't think we will go into #3 & #4 (sql and python) in tbis.
lets prepare for the rest. experimentation and stats based questions., defining northstar etc.

**Claude:** Good call. HM screen for this level will be mostly:
- **Your judgment** on experimentation design
- **How you think** about metrics / measurement
- **Whether you can lead** a team that does rigorous analytics

Let me build focused prep across these three areas.

---

## 1. Experimentation — What the HM Will Probe

### The core question they're testing: *"Does this person know what can go wrong, and do they default to rigor?"*

**High-probability questions + how to answer:**

---

**"Walk me through how you'd design an experiment for [shipping feature]."**

Use this structure every time:
1. **What decision does this serve?** (Don't jump to randomization)
2. **Unit of randomization** — buyer, seller, item, or session? For a marketplace, this is the trap. Randomizing at buyer level when sellers see both variants = interference.
3. **Primary metric + guardrails** — one OEC, 2–3 guardrails (e.g. seller defect rate, support contacts)
4. **Power analysis** — effect size you care about, baseline variance, duration. Mention that GMV/revenue are high-variance and require longer runs or variance reduction.
5. **Risks** — novelty effect, cannibalization, seasonality (holiday shipping = don't launch experiments in Nov/Dec without holdout)

---

**"Your experiment shows p=0.06 with a positive trend. PM wants to ship. What do you do?"**

Don't say "extend the run" reflexively. Say:
- Check if you were underpowered at design — if so, this was predictable
- Look at the guardrail metrics — if they're clean, risk of shipping is lower
- Check for peeking / early stopping bias — was this read mid-run?
- Your recommendation: **don't ship based on a single underpowered test**. Propose a follow-up with pre-registered power and a fixed horizon. Offer a partial rollout with monitoring.

Key signal you want to send: *you protect the team from shipping false positives.*

---

**"How do you handle network effects / spillover in a two-sided marketplace?"**

eBay is two-sided — a seller sees both variant and control buyers. Standard A/B breaks.

Options to know:
- **Cluster randomization** — randomize at seller level, not buyer
- **Switchback / time-based** — alternate treatment periods (good for supply-constrained features)
- **Holdout markets** — geographic isolation
- Trade-off: all of these reduce statistical power, so you need larger samples or longer runs

---

**"How do you know when NOT to run an A/B test?"**

Good answer shows judgment:
- When the effect is so obvious it doesn't need a test (fixing a broken checkout)
- When you can't randomize cleanly (infrastructure changes)
- When the base rate is too low to ever reach power (rare events)
- When speed > precision — use observational methods + causal inference instead (DiD, synthetic control)

---

**"What's CUPED and when do you use it?"**

CUPED = Controlled-experiment Using Pre-Experiment Data. Use pre-experiment values of the metric as a covariate to reduce variance → same power with less data / shorter runtime.

When: when you have stable pre-experiment baselines (buyer purchase history, seller ship rate). Not useful when the metric has no pre-experiment analog.

---

## 2. Metrics & North Star

**"How would you define the North Star metric for Shipping?"**

This is a judgment question, not a math question. Your answer should show you think in terms of *what behavior we're trying to drive*, not just what's easy to measure.

A strong answer:
- Shipping's job is to make the transaction frictionless — for buyers (arrives on time, trackable, cheap) and sellers (easy to create label, low cost, no defects)
- Candidate North Star: **On-Time Delivery Rate** (buyer-facing, directly tied to trust and repeat purchase)
- Why not GMV? — lagging, confounded by many factors
- Why not shipping cost? — optimizing cost alone can hurt experience
- Guardrails: Seller defect rate, buyer contact rate for shipping issues, label creation completion rate

Then show you can decompose it: OTD = f(carrier SLA adherence, label creation time, pickup time, last-mile performance) — this is how you find where to intervene.

---

**"How do you handle metric conflicts — e.g., a feature improves buyer experience but hurts seller economics?"**

This is the senior-level test. They want to see you:
1. **Quantify both sides** — don't resolve it qualitatively
2. **Have a framework** — eBay's marketplace health depends on both sides; a metric that cannibalizes sellers is a long-run buyer problem
3. **Escalate with a recommendation**, not just "it depends"

Say: *"I'd model the LTV impact on both sides, stress-test whether the seller harm is temporary (adjustment) or structural, and bring a recommendation to leadership rather than letting the team get stuck."*

---

**"How do you prevent metric gaming?"**

- Measure outcomes, not outputs (NPS over # features shipped)
- Use counter-metrics / guardrails
- Make the metrics team-independent (you own the definition, product owns the execution)
- Audit for Goodhart's Law explicitly when a metric starts moving suspiciously fast

---

## 3. How to Frame Your Leadership Answers (Since It's an HM Screen)

Even on technical questions, they'll be evaluating *how you run a team that does this work*. Weave in:

- **"I set the bar for how we design experiments before we start — we pre-register the hypothesis, sample size, and decision rule."**
- **"I've pushed back on shipping features with weak evidence — that's part of the job."**
- **"I invest in tooling so my team doesn't redo power calculations from scratch every time."**

---

Want me to do a mock Q&A on any of these — ask the question like an interviewer, you answer, I critique?

**You:** what is OEC , what is guardrail metric. explain with example

**Claude:** ## OEC — Overall Evaluation Criterion

The **single metric** that decides whether the experiment succeeded or failed. You pick it *before* the experiment, and it's the one you're willing to move the product decision on.

**Why one?** Because if you have 10 primary metrics, you'll always find one that's positive and cherry-pick. Pre-committing forces honesty.

**For eBay Shipping example:**
> OEC = **On-Time Delivery Rate (OTD)**

You ship the feature if OTD improves significantly. That's it.

---

## Guardrail Metrics

Metrics you're **not trying to move, but must not break.** They protect against winning on the OEC by destroying something else.

Think of them as: *"Even if OTD goes up, we won't ship if any of these degrade."*

**For the same experiment:**

| Guardrail | Why it matters |
|---|---|
| Seller defect rate | A shipping change might improve buyer OTD but push cost/complexity to sellers, causing more defects |
| Buyer contact rate for shipping issues | If contacts go up, something's broken even if delivery was on time |
| Label creation completion rate | Did the feature make label creation harder for sellers? |

---

## Concrete Example

Say you're testing a **new carrier recommendation algorithm** — it suggests the cheapest carrier to sellers at checkout.

- **OEC:** On-Time Delivery Rate → you want this to go up (cheaper carrier should still be reliable)
- **Guardrail 1:** Seller label creation rate → if sellers are confused and abandoning, you're losing GMV
- **Guardrail 2:** Shipping cost per transaction → you want this flat or down, not up
- **Guardrail 3:** Buyer CSAT on shipping → don't degrade trust even if OTD is technically met

**Result scenarios:**
- OTD ↑, all guardrails clean → **Ship**
- OTD ↑, but seller label completion ↓ → **Don't ship** — you're winning on delivery but breaking the seller funnel
- OTD flat, guardrails clean → **No win, don't ship**

---

The key interview signal: knowing that guardrails are **non-negotiable kill switches**, not just things you "keep an eye on."

**You:** explain

**Claude:** ## Unit of Randomization — The Marketplace Trap

### What it means

The "unit" is **who/what you split into control vs. treatment.** The trap is picking a unit that seems natural but causes the two groups to **contaminate each other.**

---

### The Classic Mistake

Say you're testing a **new shipping label UI** for sellers.

You randomize at the **buyer level** — 50% of buyers see "fast shipping" badge, 50% don't.

Sounds fine. But here's what actually happens:

> Seller A lists an item. Buyer 1 (treatment) sees the badge and buys. Buyer 2 (control) looks at the **same listing** — but the listing itself was influenced by the fact that Seller A got more sales from treatment buyers and maybe repriced or restocked.

The control group is now **contaminated by treatment activity.** Your measured effect is wrong.

---

### The Two-Sided Marketplace Problem Specifically

eBay has buyers AND sellers interacting on the same listings. Any feature that touches **supply** (seller behavior, pricing, inventory) or **shared infrastructure** (search ranking, shipping rates) will cause spillover if you randomize on the demand side only.

**Example — testing a discounted shipping rate for sellers:**

| Randomization unit | Problem |
|---|---|
| Buyer | Seller sees mixed signals — some buyers got discount, some didn't. Seller behavior changes for all buyers. Contamination. |
| Session | Same buyer can be in control in the morning, treatment in the afternoon. They notice inconsistency. Carryover effect. |
| **Seller** ✓ | Treatment sellers get the discount for all their buyers. No cross-contamination. Clean comparison. |

---

### What You Say in the Interview

*"For any feature that touches seller behavior, pricing, or inventory — I'd randomize at the seller level, not buyer. The risk with buyer-level randomization in a two-sided marketplace is interference: a seller adjusts their behavior based on the mix of buyers they're seeing, and that bleeds into the control group. You end up measuring noise."*

Then show you know the trade-off:

> **Seller-level randomization = less statistical power.** You have ~10M buyers but far fewer sellers. Smaller N means wider confidence intervals, longer experiment duration. That's the cost of doing it right.

---

### The Spectrum of Solutions

| Situation | Right unit |
|---|---|
| Buyer-facing UI, no seller interaction | Buyer |
| Seller tool / seller economics | Seller |
| Search ranking (affects both sides) | Geographic cluster or switchback |
| Pricing / promotions platform-wide | Market-level holdout |

The interviewer wants to see that you **ask this question first**, before thinking about sample size or metrics. Getting the unit wrong makes everything else meaningless.

**You:** what is switchback?
what is market level holdout?
i do get geo level cluster

**Claude:** ## Switchback Tests

### The idea
Instead of splitting *who* gets treatment, you split *time.* You alternate the feature on and off in fixed time windows and compare periods.

```
Hour 1: Treatment (feature ON)
Hour 2: Control (feature OFF)
Hour 3: Treatment
Hour 4: Control
...
```

Everyone experiences both — but at different times.

---

### When to use it
When you **can't split users cleanly** because they all share the same system.

Classic eBay shipping example: **testing a new carrier routing algorithm.**

The algorithm decides which carrier to assign for *all* shipments — you can't give half the sellers "algorithm A" and half "algorithm B" simultaneously because they're competing for the same carrier capacity. Giving treatment sellers access to cheaper carrier slots affects what's left for control sellers. The supply is shared.

Switchback solves this — run algorithm A for 2 hours, algorithm B for 2 hours, repeat.

---

### The catch
**Carryover effects.** What happened in hour 1 bleeds into hour 2 — a shipment created in the treatment window is still in-flight during the control window. You need a **washout period** between switches (a gap where you collect no data) to let the system settle.

Also: you need enough switches to get statistical power. Too few switches = too few "observations."

---

## Market-Level Holdout

### The idea
Pick **entire geographic markets** (cities, states, countries) and assign them wholesale to treatment or control. No user-level split at all.

```
Treatment markets: Mumbai, Bengaluru, Hyderabad
Control markets:   Delhi, Pune, Chennai
```

---

### When to use it
When the feature is so **platform-wide** that any user-level or seller-level split will contaminate.

Example: **eBay changes its base shipping rate structure** — a blanket discount on all labels.

- You can't give some sellers the discount and not others — they talk to each other, they'll notice, and search ranking effects will spill across
- You can't do switchback — the rate change needs time to affect behavior (sellers reprice, relist, change volume), so short windows won't capture the real effect
- Solution: roll it out in select markets, keep others as holdout, measure GMV / OTD / seller activity difference between market groups

---

### The catch
**Markets aren't identical.** Mumbai and Delhi have different buyer demographics, seller density, seasonal patterns. You need to:
- Match markets carefully before assignment (on pre-experiment baselines)
- Use **Difference-in-Differences (DiD)** to control for the fact that markets were already trending differently

This is also why it's expensive — you're sacrificing entire markets from the feature, which has real revenue cost.

---

## How These Three Relate

| Method | You split... | Use when... | Main risk |
|---|---|---|---|
| Geo cluster | Geography | Search/ranking, network effects, regional features | Markets aren't comparable |
| Switchback | Time windows | Shared supply/infrastructure, can't split users | Carryover between periods |
| Market holdout | Entire markets | Platform-wide pricing/policy changes | Small N of markets, high cost |

---

The interviewer signal from knowing all three: *"This person understands that the unit of randomization isn't always a person — sometimes it's a place or a time window, and they know why."*

**You:** explain these two in detail

* Power analysis — effect size you care about, baseline variance, duration. Mention that GMV/revenue are high-variance and require longer runs or variance reduction.
* Risks — novelty effect, cannibalization, seasonality (holiday shipping = don't launch experiments in Nov/Dec without holdout

**Claude:** ## Power Analysis

### What it is
Before you run an experiment, you calculate: **"How long do I need to run this, and how many users do I need, to reliably detect the effect I care about?"**

Running without this is the #1 mistake junior teams make — they run for 2 weeks, see nothing, and conclude the feature doesn't work. Maybe it doesn't. Or maybe they were never going to detect it with that sample size.

---

### The 4 inputs

**1. Effect size — "What lift do I actually care about?"**

Not "what would be nice to see" — what's the **minimum business-meaningful improvement.**

> Example: Shipping OTD is at 85%. Would a move to 85.1% matter? Probably not operationally. Would 87% matter? Yes — that's a measurable trust improvement.

So you set MDE (Minimum Detectable Effect) = 2 percentage points. Anything smaller than that, you don't care about detecting.

Key interview point: **MDE is a business decision, not a statistics decision.** You set it by asking "what improvement would actually change our roadmap priority?" — not by asking what's statistically convenient.

---

**2. Baseline variance — "How noisy is my metric?"**

High variance = you need more data to see the signal through the noise.

This is where **GMV and revenue are brutal.**

> A seller's weekly GMV might swing from ₹5,000 to ₹50,000 based on what they listed, whether a listing went viral, the day of week, etc. That variance is enormous. A 2% treatment effect is completely buried in that noise.

Compare to a binary metric like *"did the buyer complete the shipping flow? yes/no"* — much lower variance, much easier to detect effects on.

So for GMV-based experiments you either:
- Need **far more users / longer runtime** to average out the noise
- Or use **variance reduction techniques** (CUPED — use the seller's pre-experiment GMV as a covariate to explain away baseline noise)

---

**3. Significance level (α) and Power (1-β)**

Two thresholds you set upfront:

| Parameter | What it controls | Typical value |
|---|---|---|
| α (significance) | False positive rate — how often you ship something that doesn't work | 0.05 |
| Power (1-β) | True positive rate — how often you detect something that does work | 0.80 |

In plain English:
- α = 0.05 means you're okay being wrong 1 in 20 times when you say "this works"
- Power = 0.80 means if the effect is real, you'll detect it 80% of the time

For high-stakes shipping changes (carrier switches, cost changes), you'd tighten both — α=0.01, power=0.90. You want fewer false positives when the cost of being wrong is high.

---

**4. Duration — "How long do I run?"**

Sample size from the formula above ÷ daily traffic = days needed.

But duration has **its own constraints** beyond sample size:

- **Minimum 1–2 full weeks** regardless of sample size — you need to capture weekday vs. weekend behavior (shipping patterns differ hugely)
- **Cap at ~4 weeks** — beyond that, the world changes (competitor actions, seasonality) and your control group is no longer a valid counterfactual
- For seller-level randomization, you need **more weeks** because you have fewer units

---

### The formula (you don't need to derive it, just know the intuition)

```
Sample size ∝ (variance) / (effect size)²
```

This means:
- **Double the effect size you care about** → you need 4x fewer users ✓
- **Double the variance of your metric** → you need 2x more users ✗

This is why high-variance metrics (GMV) are so expensive to run experiments on. And why smart teams invest in variance reduction upfront.

---

## Risks: Novelty, Cannibalization, Seasonality

---

### Novelty Effect

**What it is:** Users behave differently just because something is *new* — not because it's actually better.

> You launch a new shipping tracker UI. Engagement spikes — buyers are clicking on it, checking status more. Looks like a big win. 3 weeks later, engagement drops back to baseline. The "lift" was curiosity, not genuine value.

**Why it's dangerous:** If you read the experiment in week 1, you'll ship something that doesn't actually improve steady-state behavior. Your metrics will look great and then regress after launch.

**How to handle it:**
- Run long enough that the novelty wears off — usually **2–3 weeks minimum** for UX changes
- Look at the **trend within the experiment** — is the treatment effect stable or decaying over time? Decaying = novelty
- For features with high novelty risk, use a **pre-registered fixed horizon** (don't peek at results early)

**Interview signal:** *"For any new UI or workflow change, I explicitly check whether the treatment effect is stable across the experiment window. A decaying effect is a red flag I won't ignore."*

---

### Cannibalization

**What it is:** Your treatment wins by **stealing from elsewhere in your own system**, not by creating new value.

> You test a "Guaranteed 2-day delivery" badge on certain listings. Treatment listings see a conversion lift. Looks great. But buyers who would have bought a different listing on eBay are now buying these specific listings instead. Total eBay GMV is flat or down. You cannibalized your own platform.

This is extremely common in marketplace experiments because users have a fixed budget/intent — you're often just reshuffling demand, not growing it.

**How to detect it:**
- Always measure at the **platform level**, not just the feature level. If you're running a seller-level experiment, check whether control sellers' metrics degraded (they lost buyers to treatment sellers)
- Use a **holdout group** — a set of users completely outside the experiment — and compare total platform metrics against them

**Why it matters for shipping specifically:** A shipping cost reduction might drive more purchases on eBay but cannibalize from higher-margin categories. Or faster shipping options might cannibalize standard shipping GMV without growing total.

**Interview signal:** *"I always ask — is this net new value or are we moving demand around? I check platform-level metrics, not just in-experiment metrics."*

---

### Seasonality

**What it is:** External time-based patterns that **corrupt your control vs. treatment comparison** if you're not careful.

The eBay shipping version is acute — shipping behavior is **massively seasonal:**

- **Nov–Dec (holiday):** Volume spikes 3–5x, carrier capacity tightens, OTD degrades industry-wide, buyer tolerance changes
- **Post-holiday (Jan):** Returns spike, reshaping shipping patterns
- **Sale events (eBay's own promotions):** Spike in certain seller categories

**Why it breaks experiments:**

If you launch a treatment on Nov 15 and the control period was Oct 15, you're not comparing apples to apples — you're comparing pre-holiday to peak-holiday. Any difference you see is seasonality, not your feature.

Even within a single experiment, if treatment ramps up over 2 weeks straddling a sale event, treatment users experience the sale differently than control.

**How to handle it:**
- **Never launch new experiments during peak seasons** — results are uninterpretable
- If you must measure something during peak, use a **pre-registered holdout** that ran continuously before, during, and after the peak
- Use **year-over-year comparisons** as a sanity check — did the control group behave consistently with the same period last year?
- For annual patterns, **DiD (difference-in-differences)** with historical data as the counterfactual

**Interview signal:** *"At eBay, shipping experiments during November would be on hold by default. The carrier network behavior alone makes OTD uninterpretable as an experiment metric during peak."*

---

## How These Three Connect in One Answer

If an interviewer asks *"What risks do you watch for in your experiments?"* — tie them together:

> "Three things I always check. First, novelty — I look at whether the treatment effect is stable or decaying within the window, because a decaying curve tells me users are just reacting to change, not genuinely benefiting. Second, cannibalization — I measure platform-level impact alongside feature-level impact, because in a marketplace you can win locally and lose globally. Third, seasonality — I maintain a shipping experiment calendar and treat November-December as a blackout period by default. All three can give you a false positive that you ship and later regret."

That answer at manager level will land very well.

**You:** got to know that the team i am interviewing for is pricing/promotions. works on seller take rate, elasticity modeling, rate card changes.
help me with cases related to problem statements for this team -

**Claude:** Great context. This changes the prep significantly — pricing and promotions analytics is much more **causal inference + elasticity heavy** than pure experimentation. Let me build the key problem statements you'll likely face.

---

## The Domain in Plain Terms

**Seller take rate** = the fee eBay charges sellers (% of GMV). eBay's core revenue lever.

**Rate card** = the fee structure — category-specific rates, volume tiers, promotional discounts.

**Elasticity** = if eBay raises/lowers fees, how does seller behavior change? Do they list more, list less, move to a competitor?

The team's job: **optimize fee structures to maximize platform GMV and revenue without killing seller supply.**

This is a classic two-sided marketplace pricing problem.

---

## Case 1: "How would you measure the impact of a take rate change?"

This is the #1 question for this team. The trap: **you cannot A/B test a price change easily.**

Why? Sellers talk to each other. If seller A is paying 8% and seller B is paying 10% for the same category, seller B finds out and churns. Price discrimination at seller level is operationally and legally messy.

**So how do you measure it?**

**Option 1: Geographic holdout (market-level)**
- Roll out the new rate card in select markets (e.g., 3 cities or countries)
- Keep other comparable markets at old rates
- Measure using **DiD** — compare treatment vs. control markets before and after the change
- Control for market-level trends using pre-period baseline

**Option 2: Category-level rollout**
- Change rates in select categories (e.g., Electronics) while keeping others flat
- Categories are more separable than geographies — less spillover
- Use other categories as synthetic control

**Option 3: Time-based (pre/post with synthetic control)**
- If you have to change rates globally, construct a **synthetic control** from historical patterns
- "What would GMV have been without the change?" — built from weighted combination of pre-period trends

**What you say:**
> *"A/B at seller level is off the table for price changes — the interference and fairness risks are too high. My default would be a category or geo rollout with DiD. The key is ensuring pre-period parallel trends hold between treatment and control before I trust the estimate."*

---

## Case 2: "How do you model seller fee elasticity?"

**What they're asking:** If we change take rate by 1%, how much does seller GMV / listing volume / seller count change?

**The core challenge:** Endogeneity. eBay doesn't change rates randomly — it changes them in response to competitive pressure, seller churn signals, category performance. So naive regression of "GMV vs. fee rate" is confounded.

**The right approach:**

**Step 1: Define what you're measuring elasticity of**
- Listing volume elasticity (do sellers list less if fees go up?)
- GMV elasticity (do sellers sell less, or just list less?)
- Seller retention elasticity (do sellers churn?)
- These can diverge — a seller might stay but downgrade listing quality

**Step 2: Use quasi-experimental variation**
- Historical rate card changes are your natural experiments
- Find instances where eBay changed rates in one category but not another → use as instrument
- Or use **regression discontinuity** if rate changes happened at a threshold (e.g., sellers above $X GMV/month got a new rate)

**Step 3: Segment the elasticity**
- Elasticity is not uniform. Small/casual sellers are more elastic (they'll leave). Power sellers with established buyer bases are inelastic (they're stuck on eBay).
- Model elasticity by seller segment — this is what makes the rate card optimization non-trivial

**What you say:**
> *"I'd start by segmenting sellers — casual, growing, and power sellers will have very different elasticities. For estimation, I'd look for natural experiments in historical rate changes and use DiD or RD design rather than naive regression, because eBay's rate decisions are endogenous to platform conditions."*

---

## Case 3: "A rate card change went live. How do you evaluate whether it worked?"

**The "worked" question is a trap** — worked by what definition?

Push back and clarify:
1. Revenue up? (eBay take)
2. Seller GMV up? (platform health)
3. Seller count stable? (supply health)
4. Net revenue = take rate × GMV — these can move in opposite directions

**Framework to evaluate:**

```
Short term (0-4 weeks):   Listing volume, seller activity rate
Medium term (1-3 months): GMV per seller, take rate revenue
Long term (3-12 months):  Seller retention, new seller acquisition, competitive positioning
```

**Red flags to watch:**
- GMV goes up but seller count drops → you're extracting from remaining sellers, not growing
- Revenue goes up but listing quality drops → sellers are gaming (listing at higher prices to offset fees)
- Competitor listing volume spikes → sellers are migrating supply

**What you say:**
> *"I'd resist a single 'success' metric here. A rate change that boosts short-term revenue but accelerates seller churn is a bad decision that looks good for one quarter. I'd want a dashboard that shows revenue, GMV, seller health, and competitive signals simultaneously — with pre-agreed thresholds for what triggers a rollback."*

---

## Case 4: "How would you design a promotional discount for sellers?"

e.g., "Sellers who list 50+ items this month get 2% fee reduction."

**The measurement problem:** Sellers who hit the threshold are systematically different from those who don't. You can't just compare them.

**The right design:**

**Before launch — use RD (Regression Discontinuity):**
- If the threshold is 50 listings, sellers just above and just below 50 are similar in all ways except treatment
- Compare sellers at 48–50 listings (control) vs. 50–52 listings (treatment)
- The discontinuity in outcomes at the threshold = causal effect of the promotion

**During design — watch for threshold gaming:**
- Sellers will bunch just above 50 to get the discount
- This is both a measurement problem (the RD assumption breaks) and a business problem (you're rewarding artificial listing inflation)
- Solution: use a range-based promotion instead of a hard threshold, or audit listing quality in the treatment group

**ROI framework:**
```
Promo ROI = (Incremental GMV × baseline take rate) - Cost of discount
```
- "Incremental" is the hard part — you need the counterfactual (what would seller have done without promo?)
- Additionality rate: what % of treatment sellers were going to hit 50 listings anyway? Those are wasted discount dollars.

**What you say:**
> *"The biggest risk in promo design is paying for behavior that would have happened anyway. I'd want to estimate additionality — the share of sellers who genuinely changed behavior because of the promo — using RD or a holdout group. Without that, your ROI calculation is inflated."*

---

## Case 5: "Seller GMV dropped 8% after a rate card change. What do you do?"

This is a **root cause analysis** case dressed as a pricing question.

**Step 1: Is this real or measurement artifact?**
- Did the rate card change affect how GMV is reported? (definitional change)
- Is this seasonally adjusted? (8% drop in January post-holiday is normal)
- Is it category-specific or platform-wide?

**Step 2: Decompose the drop**
```
GMV = Active sellers × Listings per seller × Conversion rate × ASP
```
Which of these moved?
- Active sellers ↓ → churn problem, rate was too high
- Listings per seller ↓ → sellers are reducing supply but staying
- Conversion ↓ → sellers raised prices to offset fees, buyers aren't converting
- ASP ↓ → sellers are discounting to move volume despite higher fees

Each diagnosis leads to a different intervention.

**Step 3: Check competitive signal**
- Did competitor platforms see a spike in new seller registrations in the same period?
- This is the smoking gun for rate-driven migration

**What you say:**
> *"My first move is decomposition — I want to know whether we lost sellers or whether existing sellers changed behavior. Those are very different problems. Losing sellers means the rate change crossed an elasticity threshold. Sellers staying but listing less means they're hedging. I'd pull the competitor signal in parallel as an external validity check."*

---

## The Meta-Skill They're Testing

Across all these cases, the HM is checking one thing:

> **"Does this person think about second-order effects, or do they optimize the obvious metric?"**

Always show:
- Short-term vs. long-term tension (revenue vs. seller health)
- Supply-side effects of demand-side decisions
- You won't declare success without a valid counterfactual

Want me to do a mock run on any of these — I play HM, you answer?

**You:** in case 2 - how do we measure elasticity? say listing vol elasticity or gmv elasticity

**Claude:** ## Measuring Elasticity — Concretely

### The Definition First

**Listing volume elasticity of fee rate =**
```
% change in listing volume / % change in take rate
```

e.g., elasticity = -0.6 means a 10% increase in fees → 6% drop in listings.

Negative is expected. The question is **how negative**, and **for which sellers.**

---

## The Core Problem: You Can't Just Run a Regression

The naive approach:

```python
listing_volume ~ take_rate + controls
```

**Why this is wrong:** eBay doesn't change rates randomly. It cuts rates when sellers are churning, raises them when a category is hot. So take_rate and listing_volume are **simultaneously determined** — the fee is reacting to the same forces that drive listings. Your regression coefficient is garbage.

This is **endogeneity.** You need a source of fee variation that is **external to seller behavior.**

---

## Method 1: Use Historical Rate Card Changes as Natural Experiments

Every time eBay changed rates in a specific category, that's a quasi-experiment.

**Setup:**
- Find a historical moment: "eBay raised Electronics take rate from 8% → 10% in March 2023"
- Find a comparable category that didn't change: "Collectibles stayed at 8%"
- Run DiD:

```
Elasticity estimate =
  (ΔListing volume in Electronics) - (ΔListing volume in Collectibles)
  ÷ % change in Electronics take rate
```

The Collectibles trend is your counterfactual — it controls for anything else that happened in March 2023 (macro, seasonality, platform changes).

**What you need for this to be valid:**
- **Parallel trends pre-change** — Electronics and Collectibles were trending similarly before March. If they weren't, the counterfactual is wrong.
- **No spillover** — Electronics sellers aren't also Collectibles sellers (check this — cross-category sellers are a real issue on eBay)
- **Multiple events** — one rate change gives you one data point. You want 5–10 historical changes across categories to get a stable elasticity estimate.

---

## Method 2: Regression Discontinuity on Volume Tiers

eBay's rate cards often have **volume-based tiers** — sellers above a GMV threshold get a lower rate.

e.g.:
```
< $1,000 GMV/month  → 10% take rate
≥ $1,000 GMV/month  → 8% take rate
```

Sellers just below $1,000 and just above $1,000 are nearly identical in every way — **except their fee rate.**

**RD setup:**
- Running variable: seller GMV last month
- Cutoff: $1,000
- Treatment: 2% lower rate for sellers just above
- Outcome: listing volume this month

The jump in listing volume at the $1,000 threshold = **causal effect of the 2% rate reduction.**

Convert to elasticity:
```
Elasticity = (% jump in listings at threshold) / (% change in fee rate at threshold)
           = (jump in listings / avg listings) / (2% / 10%)
```

**Validity check:** Plot seller density around $1,000. If there's a suspicious spike just above $1,000, sellers are gaming the threshold — the RD assumption breaks because assignment is no longer as-good-as-random near the cutoff.

---

## Method 3: Instrumental Variables (IV)

If you don't have clean natural experiments, find an **instrument** — something that:
1. Affects take rate (relevance)
2. Has no direct effect on listing volume except through take rate (exclusion restriction)

**Candidate instruments for eBay:**
- **Competitor fee changes** — if Amazon or Etsy raised fees in a category, eBay may have responded. Amazon's fee change is exogenous to eBay seller behavior.
- **Regulatory changes** — VAT/tax rule changes in certain markets forced rate card adjustments
- **Cost shocks** — payment processing cost increases that eBay passed through

**How it works:**
```
Stage 1: take_rate ~ instrument + controls  (predict fee from instrument)
Stage 2: listing_volume ~ predicted_take_rate + controls  (use only the exogenous variation)
```

The elasticity comes from stage 2. You've isolated only the fee variation that was driven by an external shock — not by eBay's endogenous pricing decisions.

**This is the most rigorous method but hardest to defend** — the exclusion restriction (instrument affects listings ONLY through fees) is always an assumption you have to argue for, not prove.

---

## Putting It Together — What You'd Actually Do

In practice you'd do all three and triangulate:

| Method | What it gives you | Limitation |
|---|---|---|
| DiD on historical changes | Category-level elasticity over time | Need parallel trends, limited events |
| RD on tier thresholds | Clean local estimate near threshold | Only valid for sellers near the cutoff — may not generalize |
| IV | Addresses endogeneity most rigorously | Instrument validity is always debatable |

If DiD gives you -0.5, RD gives you -0.6, IV gives you -0.55 — you're confident the true elasticity is in that range. If they diverge wildly, you dig into why.

---

## Segmenting the Elasticity (This Is the Insight That Matters)

A single platform-wide elasticity number is almost useless for rate card design. You need it **by seller segment:**

```
Casual sellers (< $500 GMV/month):   elasticity = -1.2  (very sensitive, will leave)
Growing sellers ($500–$5K/month):    elasticity = -0.7  (moderately sensitive)
Power sellers (> $5K/month):         elasticity = -0.2  (sticky, captive audience)
```

This tells you: **you can raise rates on power sellers with minimal volume loss. Raising rates on casual sellers risks collapsing the long tail of supply.**

The rate card optimization is then:
> Maximize (take rate × GMV) subject to seller retention constraints — solved separately for each segment using their elasticity curves.

---

## What to Say in the Interview

> *"I'd triangulate across three methods — DiD using historical category-level rate changes, RD at volume tier thresholds, and IV if I can find a clean instrument like a competitor fee shock. Each has limitations so I wouldn't rely on any one alone. More importantly, I'd run this by seller segment — a single elasticity number hides the fact that casual sellers are far more price-sensitive than power sellers, and that segmentation is what actually drives rate card design decisions."*

That answer shows technical depth + business judgment. The segmentation point at the end is what separates a manager-level answer from an analyst-level one.

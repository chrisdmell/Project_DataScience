# eBay Analytics Manager interview preparation

**You:** ebay JD is this - help me prepare -

**Location:** Bangalore
**Experience:** 6–9 years

**About the Role**
We are looking for an Analytics Manager to drive data-driven decision-making for eBay's Incentives Strategy, focusing on Promotions and Special Pricing. This role sits at the intersection of analytics, product, and business strategy, and is critical in optimizing how incentives are designed, targeted, and evaluated at scale.

**Key Responsibilities**
- Drive analytics for promotion sizing, targeting, and overall incentives strategy.
- Build scalable frameworks to measure and automate promo ROI and performance tracking.
- Analyze seller behavior and inventory patterns, including cross-platform overlap, to inform pricing and incentive decisions.
- Apply advanced analytics and machine learning techniques for segmentation, targeting, and impact measurement.
- Partner with cross-functional teams to translate insights into actionable business strategies.

**Basic Qualifications**
- 6–9 years of experience in analytics, data science, or related roles.
- Strong problem-solving and analytical skills with a business-first mindset.
- Proficiency in SQL and Python/R for data analysis.
- Experience with experimentation (A/B testing) and statistical methods.
- Strong data visualization and storytelling skills.

**Preferred Qualifications**
- Exposure to applied machine learning (segmentation, prediction models, causal inference).
- Experience working on pricing, promotions, or marketplace/e-commerce problems.
- Familiarity with large-scale data environments (e.g., Spark, Hive, BigQuery).
- Exposure to AI tools, automation frameworks, or agentic AI workflows.
- Experience working with cross-functional global teams.

**What We're Looking For**
- Ability to translate ambiguous business problems into structured analytical frameworks.
- Strong ownership mindset and ability to drive end-to-end impact.
- Curiosity to explore new techniques, especially in AI and automation.
- Balance of technical depth and business acumen.

**Why Join Us**
- Opportunity to work on high-impact, revenue-driving problems.
- Exposure to cutting-edge analytics and AI applications in e-commerce.
- Collaborative environment with strong cross-functional learning.

**Claude:** To give you the best prep plan, let me know a bit about where you're starting from.

*[Claude asked: current background; weakest area relative to the JD; time to prep]*

**You:**
- Background: Analytics / data science
- Weakest area: Promotions / pricing domain
- Time: 1–2 days

**Claude:** *[Claude generated an interactive prep plan, "ebay_analytics_manager_prep", reproduced below as text.]*

## Interactive plan: eBay analytics manager prep

### Priority focus — what to spend your 1–2 days on

- **Day 1 morning — Promotions & incentives domain.** Your weakest area — go here first. Learn: promo ROI framework, buyer vs seller incentives, GMV vs margin tradeoffs, incrementality (would the buyer have bought anyway?). eBay-specific: seller promotions, Promoted Listings, price floor mechanics.
- **Day 1 afternoon — Measurement framework: promo lift & incrementality.** Must know: A/B testing for promos, holdout groups, difference-in-differences, synthetic control. eBay interviewers will probe whether you can design a test where randomization is hard (e.g. a seller-level promo affecting buyer feed).
- **Day 2 morning — Segmentation & targeting ML angle.** They want applied ML, not research. Focus on: RFM segmentation, propensity to redeem, uplift modeling (treated vs control response), budget allocation across segments. Frame past work in these terms.
- **Day 2 afternoon — Story bank + eBay research.** Lock in 4–5 STAR stories. Research: eBay's Seller Hub, Promoted Listings, eBay's Q1/Q2 2025 earnings commentary on seller incentives, any recent eBay Ads news.

### Domain crash course — promotions & pricing

- **Promo ROI anatomy.** Gross ROI = (incremental GMV × take rate) − promo cost. Incremental GMV = total GMV from promo cohort − what they would have spent anyway (the counterfactual). Key risk: *subsidizing existing intent* — giving a coupon to someone who'd buy regardless. This is the core incrementality problem.
- **Types of incentives on a marketplace.**
  - Buyer-side: coupons, cashback, free shipping thresholds, loyalty points
  - Seller-side: fee discounts, promoted listing credits, special pricing for top sellers, volume bonuses
  - Two-sided: events like Flash Deals — platform funds discount split between buyer experience and seller acquisition
- **Cross-platform overlap (eBay-specific signal).** JD explicitly mentions this. eBay competes with Amazon, Walmart, Poshmark etc. Key questions: Are sellers listing the same SKUs cheaper elsewhere? How does cross-platform pricing affect conversion? How do you build a data product to detect and act on this?
- **Promo targeting logic.** Best practice: target buyers/sellers with high *uplift probability*, not just high spend. Uplift model outputs: always-buyers (waste), never-buyers (waste), persuadables (target), sleeping dogs (avoid — promo may backfire). Mention Qini curves / uplift modeling if ML angle comes up.

### Likely questions

**Domain — expect this**
- *Problem framing:* "How would you build a framework to decide which sellers to give a promotional discount to, and how much?" — Hit: segmentation → uplift modeling → budget optimization → measurement. Mention ROI guardrails.
- *Measurement design:* "A promo ran last quarter. How do you measure whether it actually drove incremental GMV?" — Structure: define incrementality, identify counterfactual, discuss A/B vs holdout vs DiD depending on how promo was rolled out.

**Technical**
- *Experimentation:* "How do you A/B test a seller promotion where both test and control sellers compete for the same buyers?" — Network effects / SUTVA violation. Solutions: geo-based holdout, time-based switching, switchback experiments.
- *ML application:* "How would you build a model to predict which buyers are most likely to redeem a coupon and make an additional purchase they wouldn't have otherwise?" — Uplift model vs response model — know the difference. Features: recency, frequency, category affinity, past promo behavior.

**Behavioral**
- *Ambiguity handling:* "Tell me about a time you had to define your own problem and build an analytical framework from scratch."
- *Cross-functional:* "Give an example of influencing a product or business decision with data when there was resistance."

### Story prep — 4 slots to fill

- **Must have — Ambiguous → structured:** A time you turned a vague business question into a rigorous analytical framework. Show: how you scoped it, what you measured, what decision it drove.
- **Must have — Experiment design:** A/B test or quasi-experiment you designed or improved. Emphasize: why the design matters, what bias you avoided, how you communicated results.
- **Strong signal — ML / segmentation impact:** A model or segmentation that drove a business outcome. Tie to revenue, cost savings, or targeting efficiency — not just model accuracy.
- **Strong signal — Cross-functional influence:** When your insight changed a product/business decision. Show: how you communicated uncertainty, handled pushback, and tracked downstream impact.

---

**Claude:** **The core insight for this role:** eBay wants someone who can close the loop between *designing* a promo, *targeting* it intelligently, and *proving* it worked — not just running SQL dashboards. The incrementality measurement angle is the highest-leverage thing to sharpen given your weak spot.

**Biggest risk in the interview:** Sounding like a reporting analyst. Every answer should connect to a decision made or revenue/cost outcome, not just "I built a dashboard" or "I ran a model."

**One thing to know cold before walking in:** The difference between a *response model* (predicts who will buy) and an *uplift model* (predicts who will buy *because of* the promo). If they ask any targeting question, leading with that distinction signals you understand incentives analytics specifically, not just generic ML.

**You:** Explain eBay promotions and incentives strategy — how promo ROI is measured, incrementality, and seller vs buyer incentive tradeoffs

**Claude:** *[Claude ran two web searches: "eBay promotions incentives strategy seller buyer 2024 2025" and "eBay incentives strategy GMV enthusiast buyers incrementality 2025 earnings".]*

Good context from the real earnings data — this makes the answer much more grounded. Here's the full picture:

---

## eBay promotions & incentives — what you need to know

### The business context (know this cold)

eBay's core incentives problem is a **two-sided marketplace tension**: they need enough good inventory (sellers) and enough engaged buyers, but the levers that attract one side can hurt the other.

The key metric eBay obsesses over is **Enthusiast Buyers** — buyers with at least 6 purchase days and $800+ annual spend, measured on a trailing 12-month basis. The top ~20% of "enthusiast" buyers generate roughly 75% of GMV. Incentives strategy is essentially: how do you grow and retain this cohort cost-efficiently?

---

### eBay's actual promo toolkit

**Seller-side tools:**

Promoted Listings Standard is commission-based — the seller only pays if a promoted listing results in a sale. Promoted Listings Advanced works on a CPC model, placing listings at the top of search results with the seller paying per click.

Seller Hub Promotions let sellers run bulk discounts, custom coupon codes, and category-wide price drops.

eBay also runs **platform-funded seller incentives** — fee-free selling in the UK across most categories and 0% fee promotions in some categories for business sellers — to attract or retain sellers, especially against competitors like Vinted.

**Buyer-side tools:**

Tiered discount offers designed to incentivize buyers to use BNPL on higher-ticket items (e.g. Klarna partnership coupons). Platform-funded coupons with spend thresholds (e.g. $50 off $125+). Shipping investments using tiered buyer-facing incentives to reduce all-in purchase costs, particularly important for lower-ASP fashion items, driving increased conversion and customer acquisition.

---

### How promo ROI is measured — the framework

This is the core of what you'll be tested on. Think in three layers:

**Layer 1: Gross metrics** (what leadership sees)
- GMV uplift from promo cohort
- Conversion rate lift
- New buyer acquisition count

**Layer 2: Net metrics** (what the analytics team argues about)
- Incremental GMV = GMV from promo cohort − counterfactual GMV (what they'd have spent without the promo)
- Net margin impact = incremental GMV × take rate − promo cost
- CAC (customer acquisition cost) for new buyers sourced via promo

**Layer 3: Long-term metrics** (what makes or breaks the strategy)
- Retention curve post-promo: do buyers return at higher rates?
- LTV of promo-acquired vs. organic buyers
- Repeat purchase rate — did the promo change behavior or just timing?

**The eBay-specific trap to know:** eBay defines GMV as the total value of all paid transactions inclusive of shipping fees and taxes — meaning when shipping prices rise, eBay gets an automatic GMV bump without actually increasing sales. An analyst who conflates GMV lift with promo ROI without stripping out these effects looks naive. Always ask: *what's driving the numerator?*

---

### Incrementality — the hardest and most important concept

**The core problem:** If you give a coupon to someone who was going to buy anyway, you've wasted money. Incrementality measures how much of the observed outcome *wouldn't have happened* without the promo.

**The eBay-specific complication:** Once buyers get used to receiving discounts, they'll often wait for a sale before making a purchase, creating "one and done" or only occasional buying patterns. This is a real risk eBay has lived through — their previous CEO used heavy discounting, the current CEO criticized it, then ended up doing the same thing. You can reference this as a concrete example of *negative incrementality at the cohort level*.

**How to measure it:**

| Method | When to use | eBay application |
|---|---|---|
| A/B holdout | Best — randomize who gets the promo | Buyer-level coupons where spillover is low |
| Geo holdout | When buyer/seller markets overlap | Seller fee promotions that affect entire category |
| Diff-in-differences | Pre/post with matched control group | Policy changes (e.g. fee-free UK rollout) |
| Synthetic control | No clean control exists | Platform-wide events or seasonal promos |

The reason A/B is hard at eBay: a seller-side promo (e.g. fee discount) changes what a seller lists, which changes what buyers see in search — so control group buyers are *contaminated* by the treatment. This is the SUTVA violation (Stable Unit Treatment Value Assumption). Know this term.

---

### Seller vs. buyer incentive tradeoffs

This is the strategic tension the role sits at. Map it clearly:

**Buyer incentives (coupons, cashback, free shipping):**
- Pros: direct conversion lift, measurable short-term GMV, can be targeted precisely
- Cons: platform-funded cost, trains price sensitivity, subsidizes existing intent, low LTV if buyer doesn't return
- eBay's version: eBay offered a $50 coupon requiring a $125+ purchase to drive AOV and activate lapsed buyers

**Seller incentives (fee discounts, promoted listing credits):**
- Pros: improves supply quality and quantity, better listings → better buyer experience → flywheel
- Cons: hard to attribute GMV lift (is it the fee discount or the better listings?), sellers may pocket the margin not pass it to buyers
- eBay's version: ad fee discounts for Promoted Listings to get more sellers onto the ad platform — first-party advertising revenue grew nearly 23% to $496 million in Q3 2025, suggesting the strategy of subsidizing sellers to adopt ads is working

**The right answer in an interview when asked to choose:** *It depends on the bottleneck.* If conversion is fine but inventory is thin, invest seller-side. If supply is healthy but buyers aren't finding or trusting listings, invest buyer-side. eBay's actual problem (stalled Enthusiast Buyers at 16M for ~3 years) suggests the bottleneck is buyer engagement, not seller supply.

---

### One sharp observation to use in the interview

eBay Live buyers spend 70% more than comparable non-live buyers, with roughly half of that incremental spend occurring outside of live events — creating a strong halo effect for the core marketplace. This is a live example of *durable incrementality* — the promo or activation (live shopping) changes downstream behavior, not just the immediate transaction. If asked about what good incentive design looks like, use this: incentives that change the buyer's relationship with the platform, not just their next purchase.

**You:** What are the latest developments in eBay seller promotions and incentives strategy in 2025?

**Claude:** I already pulled the freshest eBay earnings data in my last search — let me synthesize what's relevant from those results rather than re-searching.

---

## eBay incentives strategy: what actually happened in 2025

### The arc of the year

eBay entered 2025 still struggling with stalled Enthusiast Buyer growth — the metric had been stuck at 16M since Q4 2022, despite significant discounting aimed specifically at trying to move it. The strategy for most of the year was essentially: spend more on incentives, hope the cohort grows.

By year-end, it worked — partially. Enthusiast buyers reached 16 million at end of 2025 with spend per enthusiast exceeding $3,300, and US active buyers grew 6% and enthusiast buyers grew 9% year-over-year by Q2 2026 — suggesting the 2025 investments finally compounded.

---

### Key moves on the seller side

**Fee discounts as adoption lever for ads:**
eBay offered ad fee discounts to entice sellers to try Promoted Listings, and it worked at scale. First-party advertising revenue reached $517 million in Q4 2025, with nearly 1.2 billion of 2.5 billion listings using Promoted Listings.

**Fee-free selling to hold supply:**
eBay introduced fee-free selling in the UK across most categories and 0% fee promotions through year-end in some categories for business sellers, to quell backlash from C2C initiatives and keep sellers from defecting to Vinted Pro.

---

### Key moves on the buyer side

**Coupon escalation:**
eBay upped the ante on buyer coupons — moving from a $15 discount to a $50 coupon requiring a $125+ purchase, targeted at boosting average order value.

**BNPL-linked incentives:**
Tiered discount offers were designed to incentivize buyers to use BNPL on higher-ticket items via the Klarna partnership.

**Shipping as an incentive lever:**
Shipping investments used tiered buyer-facing incentives to reduce all-in purchase costs, particularly important for lower-ASP fashion items, driving increased conversion and customer acquisition.

**eBay Live:**
eBay Live buyers spent 70% more than comparable non-live buyers, with roughly half of that incremental spend occurring outside of live events — creating a strong halo effect for the core marketplace. This became one of their most cited examples of durable incrementality.

---

### The underlying tension — useful for your interview

The return to heavy discounting was notable because CEO Jamie Iannone had been highly critical of previous CEO Devin Wenig's frequent platform-funded discounts in 2018–2019. Those 15–20% off flash sales proved to be a double-edged sword — once buyers get used to receiving discounts, they'll often wait for a sale before making a purchase, creating occasional buying patterns.

This is live evidence of the **discount dependency trap** — exactly the incrementality problem you'd be hired to solve. A sharp interview answer: *"eBay's own history shows why measuring true incrementality matters — the 2018 discount cycle showed that GMV lift during a promo can mask deteriorating baseline behavior. The analytics challenge is separating genuine behavior change from pull-forward."*

---

**Bottom line for your prep:** eBay's 2025 incentives story is one of escalating spend to move a single stubborn metric (Enthusiast Buyers), with mixed efficiency. The role you're interviewing for exists precisely because they need rigorous ROI measurement and smarter targeting — not just more discount volume.

**You:** To give you the best prep plan, let me know a bit about where you're starting from.

**Claude:** It looks like that was the onboarding question from the start of our session — you've already answered it and we're deep into prep mode.

What would you like to work on next? Some options:

- **Mock interview** — I ask you a question, you answer, I give feedback
- **Story structuring** — pick one of your real experiences and we tighten it for this role
- **Technical deep dive** — uplift modeling, experiment design under network effects, causal inference
- **eBay-specific Q&A** — anything else about their business, competitors, or strategy

**You:** ask that Q to me again

**Claude:** Here it is:

---

**"How would you build a framework to decide which sellers to give a promotional discount to, and how much?"**

Take your time — answer as you would in the interview. I'll give feedback after.

**You:** no the initial Q.

**Claude:** Got it — you want to restart the prep flow from scratch?

*[Claude asked again: current background; weakest area; time to prep]*

**You:**
- Background: Analytics / data science
- Weakest area: ML / causal inference
- Time: 1 day

**Claude:** *[Claude generated a second interactive plan, "ebay_ml_causal_prep_1day", reproduced below as text.]*

## Interactive plan: eBay ML & causal inference — 1 day

### 1-day schedule

- **Morning (2–3 hrs) — Uplift modeling vs response modeling.** The single most important ML concept for this role. Know the four quadrant model cold: always-buyers, never-buyers, persuadables, sleeping dogs. Be able to explain why response models waste budget.
- **Late morning (1–2 hrs) — Causal inference methods.** DiD, synthetic control, propensity score matching. Know when to use each. eBay will ask about measuring seller fee discount impact — a classic quasi-experiment setup.
- **Afternoon (1–2 hrs) — Experimentation under network effects.** SUTVA violations, geo holdouts, switchback experiments. eBay's two-sided marketplace makes clean A/B hard — this is a high-signal topic to know.
- **Evening (1 hr) — Story mapping + eBay context.** Map your actual ML/analytics work to these concepts. You don't need to have done uplift modeling — you need to be able to discuss how you'd approach it.

### ML concepts

- **Uplift modeling (most important).** Response model asks "who will buy?" — wrong for promos. Uplift model asks "who will buy *because of* the promo?" — right. Four segments: Persuadables → target; Always-buyers → waste to target; Never-buyers → waste to target; Sleeping dogs → avoid (promo backfires). Model output: individual treatment effect estimate. Rank by uplift, allocate budget top-down.
- **Segmentation for incentives (important).** RFM is the baseline — know it but don't lead with it. More sophisticated: behavioral clustering (categories, price bands, time-of-day), propensity-based tiers, LTV-based segments. For eBay: seller segmentation by listing volume, category mix, cross-platform presence, fee sensitivity.
- **Budget allocation across segments (important).** Once you have uplift scores, allocate budget to maximize expected incremental GMV subject to a cost constraint. Constrained optimization — sort by ROI, fund top cohorts until budget exhausted. Marginal ROI framework: keep allocating until marginal return = marginal cost.
- **Causal ML: double ML / DML (good to know).** When you can't randomize but have rich observational data. Residualizes both treatment and outcome on controls, then regresses residuals. More robust than naive OLS for estimating treatment effects. Mention this if asked about "going beyond A/B testing" — signals ML depth.

### Causal inference

- **Difference-in-differences (must know).** Treated vs control, before vs after. Estimate = (treated post − treated pre) − (control post − control pre). Key assumption: parallel trends. eBay application: UK fee-free selling rollout — compare UK seller behavior vs comparable non-UK sellers before/after.
  ```
  ATT = (Y_treated_post - Y_treated_pre)
      - (Y_control_post - Y_control_pre)
  ```
- **Synthetic control (must know).** When no clean control group exists. Build a weighted combination of control units that mimics the treated unit pre-intervention, then extrapolate. Gap post-intervention = causal effect. eBay application: platform-wide promo events where every user is treated.
- **Propensity score matching (important).** Estimate P(treatment | covariates) with logistic regression. Match treated units to similar untreated units on propensity score. eBay application: sellers who opted into a fee discount vs those who didn't — match on seller size, category, listing volume.
- **SUTVA & network effects (important).** Violated when treatment of one unit affects outcomes of another — common in marketplaces. Example: give seller A a fee discount → they list more → buyers in control group now see better inventory → control group is contaminated. Solutions: geo-based randomization, time-based switchback experiments, cluster randomization by seller category.

### Likely ML/causal questions

- **Very likely —** "How would you decide which sellers to target with a fee discount?" Lead with: response model vs uplift model distinction → build uplift model → features (listing velocity, cross-platform overlap, price elasticity signals) → evaluate with Qini/AUUC curve → allocate budget by expected incremental GMV per dollar spent.
- **Very likely —** "eBay ran a platform-wide promo. How do you measure if it worked?" No holdout possible (everyone got it). Options: synthetic control using pre-period, comparable time windows, or similar markets. Walk through parallel trends assumption. Flag: eBay GMV includes shipping — strip that out before attributing promo lift.
- **Likely —** "You want to A/B test a seller incentive but sellers and buyers overlap. How do you design it?" Name the SUTVA violation. Propose: geo holdout (randomize by city/region), cluster randomization by category, or switchback (time-based). Tradeoffs: geo holdout loses power, switchback assumes no carryover effects.
- **Likely —** "Walk me through a model you'd build for promo targeting." Structure: problem framing → data (recency, frequency, category affinity, past promo behavior, price sensitivity) → model choice (uplift/two-model approach) → evaluation (Qini curve, incremental revenue per dollar) → deployment (scoring, threshold, budget allocation) → monitoring (post-promo lift vs predicted).
- **Possible —** "How would you measure long-term LTV impact of giving a new buyer a coupon?" Short-term: immediate redemption and purchase. Long-term: retention curve at 30/60/90 days, repeat purchase rate, category expansion. Challenge: attribution — use matched cohort or instrument. Flag discount dependency risk.

---

**Claude:** With only 1 day, the single highest-leverage thing is getting the **uplift model vs response model** distinction fully internalized — it's the concept that separates someone who's "done ML" from someone who understands ML *for incentives specifically*. That one distinction will land well in almost every technical question they ask.

The "likely questions" tab gives you the 5 most probable ML/causal questions to rehearse out loud. Use the ↗ buttons to go deeper on anything that feels shaky.

**You:** lets do both
Uplift modeling vs response modeling

Causal inference methods

**Claude:** Let's go one at a time so you can actually absorb it. Starting with the more important one:

---

## Uplift modeling vs response modeling

### The core problem with response models for promos

A response model predicts: *"Will this person buy?"*

That sounds useful, but it's the wrong question for promotions. The people most likely to buy are often people who were going to buy anyway. If you give them a coupon, you've just subsidized a purchase that would have happened regardless — pure cost, zero incremental revenue.

### The right question

An uplift model predicts: *"Will this person buy **because of** the promo?"*

The difference is a counterfactual: what would have happened without the intervention?

### The four segments — know these cold

Every person in your target population falls into one of four buckets:

| Segment | Without promo | With promo | Action |
|---|---|---|---|
| Persuadables | Won't buy | Will buy | **Target these** |
| Always-buyers | Will buy | Will buy | Waste — skip |
| Never-buyers | Won't buy | Won't buy | Waste — skip |
| Sleeping dogs | Will buy | Won't buy | Actively avoid |

Sleeping dogs are real — some buyers resent being marketed to, or a promo signals low quality and pushes them away. A response model would happily target always-buyers (high predicted P(buy)) while missing persuadables entirely.

### How uplift models are built — the two-model approach

The most common practical method:

1. Train a model on the **treated group** (got promo) → predicts P(buy | treated)
2. Train a model on the **control group** (no promo) → predicts P(buy | not treated)
3. Uplift score = P(buy | treated) − P(buy | not treated)
4. Rank everyone by uplift score, allocate budget top-down

You need a randomized experiment (past A/B test) to generate the training data — one group got the promo, one didn't, you have outcomes for both.

### Features for eBay promo uplift model

- Recency of last purchase, purchase frequency
- Past promo redemption rate (high redeemer → might be always-buyer)
- Category affinity and price band (are they price-sensitive in this category?)
- Time since last visit vs last purchase (browsing without buying = persuadable signal)
- Cross-platform behavior if available (shopping elsewhere = competitive pressure = higher uplift potential)

### How to evaluate it — the Qini curve

You can't use standard accuracy metrics because you never observe both outcomes for the same person (the fundamental problem of causal inference). Instead:

Plot cumulative incremental gains as you target more people in order of their uplift score. A good model curves up steeply early (highest-uplift people targeted first), then flattens. The area under this curve (AUUC) is your metric. A random targeting policy is the baseline — your model should beat it substantially.

### The interview answer structure

If asked *"how would you target sellers/buyers for a promo"*, your opening line should be:

*"The key distinction I'd start with is response modeling vs uplift modeling — a response model predicts who's likely to convert, but for promotions we want to predict who converts **because of** the promo. Those are different populations, and optimizing for the wrong one wastes budget on always-buyers."*

That one sentence signals you understand incentives analytics specifically, not just generic ML.

---

Ready to move to causal inference methods? Or want to drill this with a practice question first?

**You:**
1. Train a model on the treated group (got promo) → predicts P(buy | treated)
2. Train a model on the control group (no promo) → predicts P(buy | not treated)
3. Uplift score = P(buy | treated) − P(buy | not treated)
4. Rank everyone by uplift score, allocate budget top-down

**Claude:** Good to pause here — this is worth understanding deeply because interviewers often probe exactly this.

### What you're actually doing in steps 1 & 2

You train **two separate models** on the same features (recency, frequency, category affinity, etc.), but on different subsets of your historical data:

- Model T: trained only on rows where `treatment = 1` → learns "given someone got the promo, what predicts purchase?"
- Model C: trained only on rows where `treatment = 0` → learns "given someone didn't get the promo, what predicts purchase?"

Then for a **new person** (not in training data), you run their features through **both** models and subtract:

```
uplift = Model_T.predict(features) - Model_C.predict(features)
```

This is their estimated individual treatment effect — how much the promo moves the needle for them specifically.

### Why you need a past A/B test

This only works if treatment was **randomly assigned** historically. If sellers who got the fee discount were specifically chosen (e.g. top sellers), then Model T learns "top seller behavior" not "promo effect." The two models become incomparable and the subtraction is meaningless.

If you don't have a clean past experiment, you need causal inference methods instead — which is exactly what we'll cover next.

### The practical limitation to mention in interviews

The two-model approach has high variance — you're subtracting two noisy estimates, so errors compound. More sophisticated alternatives:

- **X-learner**: better when treatment/control group sizes are very unequal
- **R-learner**: directly minimizes a causal loss function, generally more stable
- **Causal forests**: non-parametric, handles heterogeneous effects well

You don't need to implement these — just knowing they exist and why (variance reduction) signals depth.

### The one thing interviewers check

They'll ask: *"How do you evaluate whether your uplift model is good?"*

Wrong answer: accuracy, AUC, precision/recall.

Right answer: **Qini curve / AUUC** — because you never observe both outcomes for the same person, standard metrics don't apply. You evaluate by sorting people by predicted uplift, targeting them top-down, and measuring *actual* incremental lift in each decile. If your model is good, the top decile should show large positive lift and the bottom decile near-zero or negative.

---

Ready for causal inference methods now?

**You:** wait, we had made a model to predict probability of users to churn out (and not return) in the festive window - so that using highest probable churners we spend some marketing budget on those. we used a lightGBM model. help me see this in the interview

**Claude:** This is a great story — but as stated, it's a **response model**, not an uplift model. That's actually fine, but you need to frame it correctly and show you understand the limitation, because that's what separates a good answer from a great one.

---

### What you actually built

A churn propensity model: P(churn) for each user → rank by churn probability → target top churners with marketing spend.

The implicit assumption: *high churn probability = high uplift from intervention.* That may or may not be true.

---

### The limitation an interviewer will probe

Some of those high-churn-probability users were going to churn regardless of what you did (never-buyers equivalent). Others would have come back on their own. You were targeting *predicted churners*, not *persuadable churners*.

**The right answer isn't to apologize for this — it's to show you see it.**

---

### How to tell this story in the interview

Structure it as: what we did → what it achieved → what I'd do differently now.

> *"We built a LightGBM churn propensity model ahead of the festive window to prioritize marketing spend. Features included recency, purchase frequency, category engagement drop-off, and session activity signals. We scored the user base, targeted the top decile of predicted churners with re-engagement offers, and saw [X]% improvement in festive retention for that cohort.*
>
> *In retrospect, the model identified likely churners well, but it was a response model — it didn't separate persuadable churners from those who'd either return anyway or were genuinely lost regardless of spend. If I were doing this now, I'd layer in an uplift model on top: use the churn score to filter the at-risk population, then within that population estimate who actually responds to the marketing intervention. That would tighten budget allocation significantly."*

---

### Why this framing works

It shows three things at once:

- You shipped a real ML model with business impact (credibility)
- You understand the conceptual gap between response and uplift (depth)
- You know what better looks like and can articulate the path (growth mindset)

That's a stronger answer than someone who claims they built a perfect uplift model — because it's honest, grounded, and shows genuine understanding of the tradeoff.

---

What was the actual outcome / lift you saw? I can help you sharpen the numbers into the story.

**You:** dont even remember now. but we were measuring how many of them came back, how many made txns , and worth how much

**Claude:** Perfect — those are exactly the right metrics. You don't need exact numbers, you can frame it as directional impact.

---

### How to handle "what was the result?" without exact numbers

Two honest options:

**Option 1 — directional framing:**
> *"We tracked three things: re-activation rate (did they return to the platform), transaction rate (did they transact), and GMV contribution from the reactivated cohort. The targeted group outperformed the untargeted baseline on all three — I don't have the exact figures in front of me but the directional result justified continuing the program into the next festive cycle."*

**Option 2 — flip to methodology:**
> *"The more interesting measurement challenge was defining the counterfactual — we had to establish what 'would have happened anyway' to isolate true reactivation lift. We used [holdout group / matched cohort / prior festive window as baseline] for that."*

Option 2 is stronger if they press — it pivots from "I don't remember the number" to "here's the harder analytical question I was thinking about."

---

### One thing to nail down before the interview

Do you remember roughly: did you have a holdout group (users you didn't market to, to compare against)? Or did you measure lift some other way?

That detail matters — it's the difference between "we measured outcomes" and "we measured incremental outcomes." The latter is what eBay cares about.

**You:** we kept a holdout by randomly assigning our at-risk users into test and control

**Claude:** That's the detail that elevates the whole story. You didn't just build a model — you ran a proper experiment. That's exactly what eBay wants.

---

### Your story, fully assembled

> *"Ahead of the festive window, we identified at-risk users likely to churn using a LightGBM propensity model — features included recency, purchase frequency, category engagement drop-off, and session activity. We randomly split the at-risk cohort into test and control, marketed only to the test group, and measured three things: re-activation rate, transaction rate, and GMV from the reactivated cohort. The holdout let us isolate true incremental lift rather than just observed recovery.*
>
> *In retrospect, the model was a response model — it identified likely churners but didn't distinguish persuadable churners from those who'd return anyway or were genuinely lost. If I were building this today, I'd layer uplift modeling within the at-risk population to tighten budget allocation — targeting the persuadables, not just the highest churn-probability users."*

---

That's a complete, honest, technically sophisticated answer. The holdout group is what makes it — without it you'd just have "we sent offers and people came back." With it, you have an experiment with a counterfactual.

One line to memorize: **"the holdout let us isolate true incremental lift."** That phrase alone signals you think causally, not just descriptively.

Ready to move to causal inference methods?

**You:** how do i even do an uplift model in this case??
suppose i have identifies at-risk users and kept them in deciles. if i pick say top 3 deciles and want to do further uplift modeling on them - how will it work? wont it require certain pre-requsites

**Claude:** Great question — and yes, there are prerequisites. Let me be direct about what's actually feasible here.

---

### What uplift modeling requires

To train an uplift model you need **historical data where treatment was randomized** — meaning a past experiment where some at-risk users got the intervention and some didn't, and you recorded outcomes for both.

Specifically you need rows that look like:

```
user_id | features | treatment (0/1) | outcome (returned? transacted?)
```

With random assignment across both 0 and 1.

---

### In your case — you already have this

Your holdout experiment generated exactly this dataset:

- `treatment = 1` → got the marketing offer
- `treatment = 0` → holdout, got nothing
- Outcome → returned, transacted, GMV

So you *can* train an uplift model retrospectively on that data, then use it to score future at-risk cohorts.

---

### How it would work, step by step

**Step 1 — Filter to your at-risk population**
Churn model scores everyone → take top 3 deciles. This is your universe. Uplift modeling happens entirely within this group.

**Step 2 — Use your past experiment data to train the uplift model**
Two-model approach:
```
Model_T: train on (top 3 deciles ∩ treatment=1), predict P(return)
Model_C: train on (top 3 deciles ∩ control=0), predict P(return)

uplift_score = Model_T.predict(user) - Model_C.predict(user)
```

**Step 3 — Score next festive cycle's at-risk users**
Run this festive season's top-3-decile users through both models, compute uplift score, rank them.

**Step 4 — Allocate budget by uplift score**
Top uplift → spend here. Low or negative uplift → skip even if churn probability is high.

---

### The prerequisites honestly

| Prerequisite | Do you have it? |
|---|---|
| Past randomized experiment | Yes — your holdout |
| Sufficient sample size in both arms | Depends — need enough users in test & control within top 3 deciles |
| Outcome recorded at user level | Yes — return, transaction, GMV |
| Features available at prediction time | Likely yes — same signals as churn model |

The one real risk: **sample size**. If your top-3-decile holdout group is small (say a few thousand), the two-model subtraction gets noisy. That's when you'd consider X-learner or causal forests which handle small samples better.

---

### The interview punchline

> *"Our holdout experiment actually generated the labeled data needed to train an uplift model. The churn model is a first-stage filter — narrows to at-risk users. The uplift model is a second-stage ranker — within that population, who actually responds to the intervention? The two work together: churn model for eligibility, uplift model for prioritization."*

That two-stage framing is clean, practical, and directly applicable to eBay's incentives targeting problem.

# Expedia DS Role

**You:** help me prepare for this role at expedia - here's the JD

**Designation: Senior Data Scientist, Loyalty Analytics**

**About Expedia Group**

Expedia Group powers travel for millions of travellers worldwide. Our loyalty ecosystem helps members receive greater value, more relevant experiences, and stronger engagement across our global brands.

**The opportunity**

We are looking for a Senior Data Scientist to help shape the next generation of loyalty experiences through advanced analytics, experimentation, and machine learning. You will partner with product, marketing, engineering, and analytics teams to turn complex loyalty data into measurable business impact.

The role will work with loyalty data products including member profiles, balances, and tier information, while helping stakeholders use trusted, well-governed data products effectively.

**What you'll do**

- Develop analytical and machine-learning solutions to improve member acquisition, engagement, retention, and lifetime value.
- Build segmentation, propensity, recommendation, uplift, and optimisation models for loyalty use cases.
- Design and analyse experiments, including test-and-control frameworks and causal-impact measurement.
- Translate business questions into rigorous analytical approaches and actionable recommendations.
- Partner with product managers, engineers, analysts, marketers, and other data scientists to define priorities and deliver production-ready solutions.
- Establish success metrics and measurement frameworks for loyalty initiatives.
- Communicate findings clearly to technical and non-technical audiences, including senior stakeholders.
- Promote high standards for data quality, reproducibility, model governance, and responsible use of customer data.
- Contribute to the evolution of Expedia Group's loyalty data platform and data products.

**What you'll bring**

- Significant experience in data science, advanced analytics, or a closely related quantitative field.
- Strong programming skills in Python and SQL.
- Practical experience with statistical modelling, machine learning, experimentation, and causal inference.
- Experience working with customer, marketing, CRM, membership, rewards, or personalisation data.
- Ability to work with large-scale, complex, and evolving data environments.
- Strong product sense and the ability to connect analytical outputs to customer and commercial outcomes.
- Excellent written and verbal communication skills.
- A collaborative, pragmatic approach, and a track record of delivering outcomes through cross-functional partnerships.

**Preferred qualifications**

- Experience with loyalty, travel, marketplaces, subscriptions, rewards, or customer lifecycle analytics.
- 8+ years experience in a similar analytical role
- Experience developing models that influence customer journeys or marketing decisions.
- Experience taking models from prototyping through deployment, monitoring, and iteration.
- Graduate degree in statistics, computer science, operations research, economics, mathematics, or a related quantitative discipline.

---

**Claude:** *[Claude generated an interactive prep guide, "expedia_loyalty_ds_prep". Its content is reproduced below as text.]*

## Interactive guide: Expedia loyalty DS prep

### Role overview

**What this role actually is**

- **Core mandate:** Build ML + analytics solutions that drive loyalty member acquisition, engagement, retention, and LTV across Expedia's brand portfolio. You're an embedded scientist partnering with product, marketing, and engineering — not a pure research role.
- **What they'll test hardest:** Experimentation/causal · Loyalty/LTV modelling · Stakeholder comms · ML in production
- **Differentiator signals:** Uplift / incrementality · Propensity + segmentation · Data governance · Cross-functional delivery
- **Loyalty domain keywords to weave in:** Member lifetime value · tier progression · churn prediction · redemption behaviour · earn/burn rates · incremental bookings · member acquisition cost · engagement propensity · personalisation at scale · test-and-control

### Likely interview questions

**ML & modelling**
- *Walk me through how you'd build a member churn propensity model for a loyalty program.* — Cover: feature eng from transaction/engagement data, label definition, class imbalance, evaluation metrics, business calibration
- *How have you approached uplift/incrementality modelling? When would you use it over a standard propensity model?* — They care about this — loyalty promotions need incrementality, not just response rate
- *Describe how you'd design a recommendation system for loyalty rewards or offers.* — Collaborative filtering vs content-based vs contextual bandits; cold-start problem for new members

**Experimentation & causal**
- *How would you design an A/B test to measure the impact of a new loyalty tier benefit?* — Network effects, spillover, novelty effect, power calculation, guardrail metrics
- *When can't you run a randomised experiment? How do you measure causal impact then?* — DiD, synthetic control, regression discontinuity, propensity score matching — pick what fits the scenario
- *How do you handle p-hacking and multiple testing concerns in a high-velocity experimentation environment?* — Bonferroni, FDR, sequential testing, pre-registration

**Stakeholder & product sense**
- *Tell me about a time you influenced a major product decision with data.* — STAR format — emphasise the "so what", not the methodology
- *A PM wants to move fast and skip the experiment. How do you handle it?* — Show pragmatism: offer a lighter quasi-experiment or pre/post with guardrails, not just "no"
- *How do you define success metrics for a new loyalty feature?* — Primary (engagement/tier) + guardrails (revenue, satisfaction) + leading indicators

**Production & governance**
- *Describe your experience taking a model from prototype to production. What broke?* — Training-serving skew, monitoring, retraining triggers, feature store, rollback plan
- *How do you ensure responsible use of customer data in your modelling work?* — Fairness, privacy (PII handling), model cards, auditability — they mentioned governance explicitly

### Story bank — map your experience

1. **Loyalty/retention model:** Find a project where you modelled churn, retention, or engagement. Structure: context → what you built → business outcome (in $, %, or points). If from a different domain, bridge explicitly: "analogous to loyalty because…"
2. **Experiment design + causal inference:** A test you designed end-to-end, or a causal question you answered without clean randomisation. Emphasise: how you handled confounders, what you'd do differently, and what decision it drove.
3. **Cross-functional influence:** A time you changed a PM's or leadership's mind, navigated conflicting priorities, or had to say "the data doesn't support this." Show you can operate without full authority.
4. **Model in production:** Something you shipped that ran in a live system. What monitoring did you build? What broke after launch? How did you iterate? This covers the "8+ years" bar indirectly.
5. **Data quality / governance:** A time you caught a data problem, improved a pipeline, or established standards. They mention governance + reproducibility explicitly — have something ready.

### Potential gaps to address

*These aren't blockers — but prepare a bridging statement for each red/amber area.*

| Area | Priority |
|---|---|
| Loyalty/travel domain experience | High priority |
| Uplift / incrementality modelling | High priority |
| Causal inference (DiD, syn control) | Medium |
| Model production + MLOps | Medium |
| Python + SQL proficiency | Likely strong |
| Experimentation design | Likely strong |
| Stakeholder communication | Likely strong |

**Bridging script for loyalty gap:** "While I haven't worked directly in loyalty programs, the core problems map closely to [what I've done]: retention/churn modelling, reward optimisation, and segmentation of engaged vs dormant customers. I've spent time familiarising myself with loyalty-specific dynamics like earn/burn ratios and tier elasticity to get up to speed quickly."

### Your pitch (2 min)

**Structure**
- **Hook** — one line on what you do and why loyalty/travel excites you
- **Evidence** — two concrete projects that map to the JD (modelling + experimentation)
- **Why Expedia** — specific: the loyalty ecosystem, global member scale, or the platform/data product angle mentioned in the JD
- **Transition** — "I'd love to dig into whichever area is most relevant to where the team is right now"

**Questions to ask them**
- What does the experimentation infrastructure look like — do scientists own test design end-to-end?
- How does the loyalty data platform handle member identity across Expedia's brands?
- What's the biggest modelling challenge the team is working on right now?
- How embedded are data scientists in product squads vs centralised?

---

**Claude:** Five tabs cover everything you need:

**Role overview** — what they're actually hiring for and the keywords that signal domain fluency.

**Interview questions** — grouped by theme (ML, experimentation, stakeholder, production). The ↗ buttons let you drill into any question for a coached answer.

**Story bank** — five story slots mapped to JD requirements. The hardest gap to close is loyalty domain experience — have a bridging narrative ready.

**Skill gaps** — honest traffic-light assessment. Uplift/incrementality modelling is the highest-signal technical area they'll probe that many candidates won't have explicitly done.

**Your pitch** — structure + good questions to ask them.

Want me to mock interview you on any section, or help draft your opening pitch once you share your background?

**You:** Help me structure a strong answer to: Walk me through how you'd build a member churn propensity model for a loyalty program. I'm interviewing at Expedia Loyalty Analytics.

**Claude:** Here's a structured answer you can adapt — designed to show both technical depth and product thinking, which is exactly what a Senior DS role at Expedia will test.

---

## The framework: problem → data → model → deployment → impact

---

### 1. Frame the business problem first (30 sec)

Don't jump into features. Open with:

> "I'd start by clarifying what churn means in this context — is it a member who hasn't transacted in 90 days? One who's let points expire? Dropped a tier? The definition changes the label, the time horizon, and what 'fixing' it looks like."

This alone signals senior-level thinking. Then anchor to business value:

> "Once defined, I'd want to know the intervention — because the model only matters if we can act on it. If the action is an email campaign, we need a propensity score 2–4 weeks before the churn window. If it's a tier-save offer, earlier. The deployment constraint shapes everything upstream."

---

### 2. Data and feature engineering

Group features into categories — shows structured thinking:

| Category | Examples |
|---|---|
| **Recency / activity** | Days since last booking, days since last login, redemption recency |
| **Engagement depth** | Earn/burn ratio, points balance (high balance = at-risk if never redeemed), tier history |
| **Behavioural trajectory** | Booking frequency trend (accelerating vs decelerating over 6/12/24m), channel shifts |
| **Product exposure** | Number of brands used, hotel vs flight vs package mix |
| **Lifecycle signals** | Tenure, tier anniversary proximity, recent tier downgrade |
| **External** | Seasonality, competitive offers (if available) |

Key thing to mention: **label construction**. Define churn as a binary outcome 90 days out, and be explicit about the training window — you can't leak post-prediction-date features.

---

### 3. Modelling approach

> "I'd start with a gradient boosted tree (XGBoost/LightGBM) as the baseline — they handle mixed feature types, missing data, and nonlinear interactions well without heavy preprocessing. Interpretability via SHAP is straightforward, which matters for stakeholder trust."

Mention the class imbalance problem: churners are typically a small fraction. Strategies: class weighting, threshold tuning, or SMOTE — but note that calibration matters more than raw AUC if scores are used to rank interventions.

**Evaluation**: Don't just say AUC. Say:

> "I'd evaluate with AUC-ROC for discrimination, but focus on precision/recall at the top decile — because we can only contact N members, so we need to know how good the top-N are. I'd also check calibration if the score is used to estimate true churn probability for expected-value calculations."

---

### 4. The uplift angle (this is the differentiator)

This is where strong candidates separate themselves:

> "One thing I'd flag early: a high churn propensity score doesn't mean an intervention will help. A member who's going to churn regardless, or one who'd have retained anyway, wastes budget. Ideally I'd layer in an uplift model — train on past campaign data to estimate the incremental effect of outreach. That way we're targeting the 'persuadables', not just the most likely churners."

Even if you haven't built uplift models, showing you know this distinction is a significant signal.

---

### 5. Deployment and monitoring

> "I'd want a weekly scoring pipeline — not daily, given booking cadence — with scores written to a feature store the CRM team can consume. Monitoring would track: score distribution drift, feature drift (especially recency features which are sensitive to seasonality), and outcome feedback loop — were the members we scored as high-risk actually churning at the predicted rate 90 days later?"

Mention retraining trigger: drift threshold or calendar-based (quarterly), not ad hoc.

---

### 6. Close with business impact framing

> "I'd define success not just as model accuracy, but as lift over the current rule-based approach — reduction in churn rate within the treated segment, incremental bookings retained, and ROI on the intervention cost vs saved LTV."

---

## What to avoid saying

- "I'd try several models and pick the best one" — too vague
- Jumping straight to neural nets — overkill for tabular loyalty data, raises eyebrows
- Ignoring the intervention — treating it as a pure prediction problem
- AUC as the only metric

---

## One-line version if they ask you to summarise

> "Define churn operationally, engineer features across recency, engagement depth, and lifecycle signals, train a gradient boosted model evaluated on top-decile precision, layer in uplift scoring to target persuadables, and monitor for drift and business outcome feedback."

---

Want me to mock-interview you on this — I'll play the interviewer and push back on your answers?

**You:** can we get precision recall only for the top decile as compared to the overall users?

**Claude:** Yes — here's the math.

**Top-decile precision/recall** means you sort all members by predicted churn score descending, take the top 10%, and compute metrics only within that slice.

```python
import numpy as np
from sklearn.metrics import precision_score, recall_score

def top_decile_metrics(y_true, y_scores, decile=0.1):
    n = len(y_scores)
    top_n = int(n * decile)

    # Sort by score descending, take top 10%
    top_idx = np.argsort(y_scores)[::-1][:top_n]

    y_top = y_true[top_idx]

    # In the top decile: predicted = 1 for all (we chose them), actual = y_true
    y_pred_top = np.ones(len(y_top), dtype=int)

    precision = precision_score(y_top, y_pred_top)  # TP / (TP + FP) in slice
    recall = recall_score(y_true, np.isin(np.arange(n), top_idx).astype(int))  # TP / all actual churners

    return precision, recall

# Example
from sklearn.datasets import make_classification
from sklearn.ensemble import GradientBoostingClassifier

X, y = make_classification(n_samples=10000, weights=[0.85, 0.15], random_state=42)
model = GradientBoostingClassifier().fit(X, y)
scores = model.predict_proba(X)[:, 1]

p_top, r_top = top_decile_metrics(np.array(y), scores)
p_all = precision_score(y, (scores > 0.5).astype(int))
r_all = recall_score(y, (scores > 0.5).astype(int))

print(f"Top decile — Precision: {p_top:.3f}, Recall: {r_top:.3f}")
print(f"Overall     — Precision: {p_all:.3f}, Recall: {r_all:.3f}")
```

**Key distinction:**

- **Top-decile precision** = of the members we'd actually contact (top 10% by score), what fraction are true churners. This is the operational metric — maps directly to campaign efficiency.
- **Top-decile recall** = of *all* churners in the dataset, how many did we catch in our top 10%. Denominator is still the full population.
- **Overall precision/recall** uses a 0.5 threshold, which is arbitrary and usually wrong on imbalanced data — less meaningful for a loyalty intervention use case.

Typical pattern you'd see: top-decile precision 3–5× higher than overall, recall lower (you're only contacting 10% of members). The tradeoff you tune based on campaign budget.

**You:** Help me answer: How have you approached uplift or incrementality modelling, and when would you use it over a standard propensity model? Context: Expedia Loyalty Data Scientist interview.

**Claude:** ## The core distinction (lead with this)

> "A propensity model answers *who is likely to churn* (or convert). An uplift model answers *who will change their behaviour because of my intervention*. For loyalty campaigns, propensity alone is dangerous — you end up spending budget on members who'd have retained anyway, or worse, on 'sure churners' you can't save."

This framing immediately signals you understand the business problem, not just the ML.

---

## The four quadrants (draw this on a whiteboard if given the chance)

| | **Would retain anyway** | **Would churn anyway** |
|---|---|---|
| **Responds to outreach** | "Sleeping dogs" — you waste money | **Persuadables** ← target these |
| **Doesn't respond** | Safe to ignore | Lost causes |

Uplift modelling identifies the persuadables. Propensity modelling conflates them with the other three groups.

---

## Approaches, in order of complexity

### 1. Two-model (T-learner) — simplest, good starting point
Train two separate models: one on the treatment group, one on control. Uplift score = predicted probability (treatment) − predicted probability (control).

```python
# T-learner
model_t = LGBMClassifier().fit(X_treatment, y_treatment)
model_c = LGBMClassifier().fit(X_control, y_control)

uplift = model_t.predict_proba(X_new)[:, 1] - model_c.predict_proba(X_new)[:, 1]
```

**Weakness**: each model optimises its own prediction, not the *difference*. Noisy when treatment/control split is small.

---

### 2. S-learner — single model with treatment as a feature
```python
# Add treatment indicator as a feature
X_with_t = X.copy()
X_with_t['treatment'] = treatment_flag

model = LGBMClassifier().fit(X_with_t, y)

X_as_treated = X_new.copy(); X_as_treated['treatment'] = 1
X_as_control = X_new.copy(); X_as_control['treatment'] = 0

uplift = model.predict_proba(X_as_treated)[:, 1] - model.predict_proba(X_as_control)[:, 1]
```

**Weakness**: model may under-weight the treatment feature if it's less predictive than member features overall. Common in loyalty where engagement history dominates.

---

### 3. X-learner — best when treatment/control are imbalanced
Good when you have far more control observations than treated (common in loyalty — most members don't get a campaign).

Fits residuals from the opposite group's model, which makes better use of the larger control pool. The `causalml` library implements this cleanly:

```python
from causalml.inference.meta import XGBTClassifier
learner = XGBTClassifier()
uplift = learner.fit_predict(X_train, treatment_train, y_train, X_test)
```

---

### 4. Direct uplift trees (class transformation method)
Reframes the problem as a single classification task. Transform labels:
- Treatment + outcome=1 → class 1
- Control + outcome=0 → class 1
- Treatment + outcome=0 → class 0
- Control + outcome=1 → class 0

Then `P(class=1) - 0.5` ∝ uplift. Elegant, but requires equal treatment/control sizes or reweighting.

---

## Evaluation — this trips people up

You **can't use AUC** directly because you never observe the counterfactual. Instead:

**Qini curve / Uplift curve**: rank by predicted uplift, measure cumulative incremental conversions vs a random policy. Area under Qini (AUUC) is the standard metric.

**AUUC in plain English**: if you contact the top N% ranked by your uplift model, how many *incremental* retentions do you get vs contacting N% randomly?

```python
from causalml.metrics import plot_qini, qini_score
qini_score(y_true, uplift_scores, treatment)
```

---

## When to use uplift vs propensity

| Situation | Use |
|---|---|
| No historical campaign data, launching first retention push | Propensity (you have no treatment/control to train on) |
| Have A/B test history with outcome labels | Uplift — you have the counterfactual signal |
| Budget-constrained campaign, need to prioritise contacts | Uplift — ROI maximisation |
| Regulatory/compliance use case needing simple explainability | Propensity (simpler to audit) |
| Broad awareness campaign, everyone gets it | Neither — no targeting needed |

**For Expedia specifically**: loyalty programs run promotions constantly, so historical test-and-control data almost certainly exists. That's the setup where uplift pays off most — and what they'd expect a senior DS to reach for.

---

## One-line interview summary

> "I'd use propensity when I need to identify *who* is at risk and have no campaign history to learn from. I'd use uplift when I have historical treatment/control data and the goal is ROI-efficient targeting — finding the members where my intervention actually moves the needle, not just the ones most likely to churn."

---

Want me to drill into evaluation (Qini curves) in more detail, or run a mock interview question on this topic?

**You:** how does a T- learner model work, explain in detail who will be trained, who will be tested. how the final scoring will happen. how does that score correspond to a uplift score

**Claude:** ## T-learner: complete walkthrough

### The setup — what data you have

Assume you ran a loyalty campaign. Your dataset has:

```
member_id | features (X) | treatment (T) | outcome (Y)
   001    |   [...]      |      1        |     1       ← got email, retained
   002    |   [...]      |      1        |     0       ← got email, churned
   003    |   [...]      |      0        |     1       ← no email, retained
   004    |   [...]      |      0        |     0       ← no email, churned
```

`T=1` = received intervention (email, offer, push notification)
`T=0` = control group, received nothing
`Y=1` = retained (didn't churn), `Y=0` = churned

---

### Step 1 — Split by treatment flag

```python
X_t = X[T == 1]   # treated members' features
y_t = y[T == 1]   # their outcomes

X_c = X[T == 0]   # control members' features
y_c = y[T == 0]   # their outcomes
```

You now have two completely separate datasets. The treatment group and control group never mix during training.

---

### Step 2 — Train two independent models

```python
from lightgbm import LGBMClassifier

model_t = LGBMClassifier().fit(X_t, y_t)
# Learns: given a member's features, what's P(retain | they received the campaign)?

model_c = LGBMClassifier().fit(X_c, y_c)
# Learns: given a member's features, what's P(retain | they received nothing)?
```

Each model is a standard binary classifier. Nothing exotic. `model_t` has never seen a control member. `model_c` has never seen a treated member.

---

### Step 3 — Scoring on new members (the key step)

For every new member you want to score, you run them through **both models**, regardless of whether they were in treatment or control:

```python
# Same member X_new goes into BOTH models
p_retain_if_treated  = model_t.predict_proba(X_new)[:, 1]
# "If we send this member a campaign, model_t predicts P(retain)"

p_retain_if_control  = model_c.predict_proba(X_new)[:, 1]
# "If we send nothing, model_c predicts P(retain)"

uplift = p_retain_if_treated - p_retain_if_control
```

This is the counterfactual comparison. You're asking both models: *"what would happen to this specific member under each world?"*

---

### Step 4 — Interpreting the uplift score

```
uplift = P(Y=1 | T=1, X) - P(Y=1 | T=0, X)
```

| Uplift value | Meaning | Action |
|---|---|---|
| `+0.3` | Campaign raises retention prob by 30pp | **Target — persuadable** |
| `+0.05` | Marginal lift | Low priority |
| `~0.0` | No effect | Ignore — safe either way |
| `-0.1` | Campaign actually hurts retention | **Do not contact** — sleeping dog |

Negative uplift is real and important. Some members respond negatively to promotional pressure — contacting them accelerates churn. Propensity models are blind to this entirely.

---

### Concrete numerical example

Say you have member A with features: frequent flyer, Gold tier, hasn't booked in 45 days.

```
model_t predicts:  P(retain | campaign) = 0.82
model_c predicts:  P(retain | no campaign) = 0.55

uplift = 0.82 - 0.55 = +0.27  ← strong persuadable, target them
```

Member B: infrequent, Silver tier, last booked 10 days ago.

```
model_t predicts:  P(retain | campaign) = 0.91
model_c predicts:  P(retain | no campaign) = 0.89

uplift = 0.91 - 0.89 = +0.02  ← would retain anyway, skip
```

Member B has high propensity to retain — a propensity model would rank them highly. The T-learner correctly identifies them as a waste of budget.

---

### The fundamental assumption — and its weakness

The T-learner assumes:

> Members in the treatment group are exchangeable with members in the control group, conditional on features X.

In other words: `model_t` trained on treated members generalises to predicting what would happen to *any* member if treated. This holds if the experiment was properly randomised.

**Where it breaks**: if treatment/control groups are small or unbalanced, each model has high variance. The *difference* of two noisy estimates is noisier still. That's exactly why X-learner exists — it corrects for this by fitting residuals from the opposite group's predictions rather than raw outcomes.

---

### Full pipeline in one block

```python
import numpy as np
from lightgbm import LGBMClassifier

# --- Training ---
mask_t = (T_train == 1)
model_t = LGBMClassifier().fit(X_train[mask_t], y_train[mask_t])
model_c = LGBMClassifier().fit(X_train[~mask_t], y_train[~mask_t])

# --- Scoring new members ---
p_t = model_t.predict_proba(X_new)[:, 1]  # P(retain | treated)
p_c = model_c.predict_proba(X_new)[:, 1]  # P(retain | control)
uplift_scores = p_t - p_c                  # range: [-1, 1]

# --- Rank and target top persuadables ---
ranked_idx = np.argsort(uplift_scores)[::-1]
top_20pct = ranked_idx[:int(len(ranked_idx) * 0.2)]
# Contact only these members
```

---

The score is an estimate of individual treatment effect (ITE) — the causal effect of the intervention on that specific member. It's not a probability itself, it's a *difference of probabilities*, which is why it can go negative and why it's far more actionable for campaign targeting than any single model's output.

**You:** Help me answer: How would you design an A/B test to measure the impact of a new loyalty tier benefit? Expedia Loyalty Senior Data Scientist interview.

**Claude:** ## Designing an A/B test for a new loyalty tier benefit

### Step 1 — Clarify before designing (say this out loud in the interview)

> "Before I design anything, I'd want to nail down a few things: What's the benefit — a bonus points multiplier, a free upgrade, early access to deals? Which tier are we targeting — Gold, Platinum? And what's the hypothesis — are we trying to drive more bookings, reduce churn, or increase tier upgrade rate? The answers change the metric, the unit of randomisation, and the required sample size."

This is the senior move. Junior candidates jump straight to "50/50 split."

---

### Step 2 — Define metrics upfront

Never let metrics be an afterthought. Structure them in three layers:

| Layer | Metric | Why |
|---|---|---|
| **Primary** | Incremental bookings per member (or booking rate) | Direct revenue signal |
| **Secondary** | Points redemption rate, tier retention rate, engagement frequency | Validate the mechanism |
| **Guardrails** | Revenue per booking, cancellation rate, customer support contacts | Ensure no harm elsewhere |

**Important**: commit to primary metric before running. Post-hoc metric switching is p-hacking.

For a tier benefit specifically, **tier retention rate** may actually be your primary — depends on whether the goal is to prevent tier downgrade or drive incremental spend. Clarify with the PM.

---

### Step 3 — Unit of randomisation

This is where most candidates go wrong.

> "The natural unit is the member, not the session or the booking. Loyalty benefits are member-level constructs — randomising at session level would mean the same member sees different treatments across visits, which contaminates the experiment and your measurements."

**Complication to raise**: Expedia operates across multiple brands (Hotels.com, Vrbo, Expedia.com). A member might book on one brand in treatment and another in control-equivalent behaviour. You need to:

- Randomise at member ID level across the entire loyalty ecosystem
- Ensure your outcome tracking captures cross-brand activity, not just single-brand

---

### Step 4 — Handle the network/spillover problem

> "One thing I'd flag: loyalty tier benefits can have social spillover. If a Gold member gets a visible perk — lounge access, priority boarding — it may influence their travel companions' behaviour or their own referral activity. Standard A/B assumes SUTVA (no interference between units). I'd check whether that's a realistic assumption here."

If spillover is a real concern: cluster randomisation by household or travel group rather than individual member.

---

### Step 5 — Power calculation

Walk through it explicitly — this is a senior signal:

```python
from statsmodels.stats.power import NormalIndPower

analysis = NormalIndPower()

n = analysis.solve_power(
    effect_size=0.02 / 0.15,  # MDE = 2pp lift on 15% baseline booking rate
    alpha=0.05,                # false positive rate
    power=0.80,                # 80% chance of detecting true effect
    ratio=1.0                  # equal treatment/control
)
print(f"Required per group: {n:.0f}")
```

Things to specify:
- **Baseline metric**: e.g. 15% of Gold members book in any 30-day window
- **MDE (minimum detectable effect)**: what lift is commercially meaningful? Agree with PM/finance first — don't let stats decide this
- **Alpha**: 0.05 standard, consider 0.01 if this is a high-stakes rollout
- **Power**: 0.8 minimum, 0.9 if the cost of a miss is high

Then back-calculate runtime: if you need 50,000 per group and Gold tier has 200,000 members, you need ~2 weeks at 50/50 split assuming daily booking rate.

---

### Step 6 — Design choices

**Split ratio**: 50/50 is optimal for power. Only deviate if:
- The benefit has a real cost (e.g. free upgrade has unit economics) → smaller treatment group
- You want a staged rollout for safety → 10/90 initially, ramp up

**Holdout vs full rollout**: consider a permanent holdout (5–10%) even post-launch. Loyalty effects compound over time — you want to measure long-term LTV impact, not just the first-booking spike.

**Stratified randomisation**: randomise within strata of tenure, tier age, and historical booking frequency. This reduces variance and ensures balance on the variables most predictive of your outcome.

```python
# Stratified assignment
df['stratum'] = pd.cut(df['bookings_last_12m'], bins=[0,1,3,10,999])
df['treatment'] = df.groupby('stratum')['member_id'] \
                    .transform(lambda x: np.random.binomial(1, 0.5, len(x)))
```

---

### Step 7 — Novelty effect and duration

> "Loyalty benefits have a strong novelty effect — members engage heavily at first just because something changed, then settle. I'd run the experiment long enough to see at least two full booking cycles for the target tier. For frequent travellers that might be 4–6 weeks; for leisure travellers it could be 3 months."

Also: avoid launching during peak travel periods (summer, holidays) unless that's the target context — seasonality inflates variance and can mask or amplify the true effect.

---

### Step 8 — Analysis

```python
from scipy import stats

# Primary metric: booking rate per member
rate_t = bookings_treatment / n_treatment
rate_c = bookings_control / n_control

# Two-proportion z-test
z, p = stats.proportions_ztest(
    [bookings_treatment, bookings_control],
    [n_treatment, n_control]
)

# Confidence interval on lift
lift = rate_t - rate_c
se = np.sqrt(rate_t*(1-rate_t)/n_treatment + rate_c*(1-rate_c)/n_control)
ci = (lift - 1.96*se, lift + 1.96*se)
```

But don't stop at significance. Report:

- **Absolute lift** (more actionable than relative)
- **95% CI** — if the lower bound is commercially meaningful, ship it
- **Segmented results**: does the benefit work better for high-tenure vs new Gold members? For flight-heavy vs hotel-heavy members?
- **Revenue impact estimate**: lift × members in tier × average booking value

---

### Step 9 — The causal inference caveat

> "One thing I'd watch: if members self-select into higher engagement after seeing the benefit, that's not a clean causal signal — it's post-treatment conditioning. I'd analyse on intent-to-treat (ITT) basis — compare treatment vs control regardless of whether treatment members actually used the benefit — to preserve the randomisation and get an unbiased estimate."

---

### What not to say

- "I'd run it for a week and see" — no power calculation, no understanding of booking cycles
- "I'd use 70/30 to be safe" — wrong direction; smaller treatment group *reduces* power, doesn't increase safety
- "If p < 0.05 we ship it" — ignores effect size, CI, and guardrail metrics

---

### One-line summary

> "Randomise at member level within tier, stratified by booking history. Pre-register primary metric and MDE with the PM. Run for two booking cycles minimum. Analyse on ITT basis, report absolute lift with CI, and always check guardrails before shipping."

---

Want me to drill into any specific part — power calculation, handling the novelty effect, or how to present results to a non-technical PM?

**You:** When can't you run a randomised experiment? How do you measure causal impact then?
DiD, synthetic control, regression discontinuity, propensity score matching — pick what fits the scenario

**Claude:** ## When randomisation isn't possible

Four common situations in a loyalty context:

| Situation | Why you can't randomise |
|---|---|
| Benefit rolled out to all Gold members simultaneously | No control group exists post-launch |
| Tier qualification has a fixed threshold (e.g. 10 nights) | Can't randomly assign who qualifies — it's earned |
| Regulatory / legal constraint | Can't withhold a benefit from members in the same jurisdiction |
| Small population | Only 500 Platinum members — too few to split |
| Competitive response needed | Can't wait 6 weeks for a test; benefit launched immediately |

---

## The four methods — when each fits

### 1. Difference-in-Differences (DiD)
**Use when**: you have a natural treated/untreated group and pre/post data for both.

**Loyalty scenario**: Expedia adds a bonus multiplier for Gold members only. Silver members didn't get it. You observe both groups before and after.

**The assumption**: in the absence of treatment, Gold and Silver members would have trended similarly. Called **parallel trends**.

```
Causal effect = (Gold_post - Gold_pre) - (Silver_post - Silver_pre)
```

```python
import statsmodels.formula.api as smf

# post = 1 after launch, treated = 1 for Gold members
df['did'] = df['treated'] * df['post']

model = smf.ols('bookings ~ treated + post + did + controls', data=df).fit()
# Coefficient on 'did' is the DiD estimate
print(model.params['did'])
```

**What to check**: plot pre-period trends for both groups. If they were diverging before treatment, parallel trends is violated and DiD is biased.

**Expedia wrinkle**: members upgrade tiers over time — composition of Gold vs Silver shifts. Use member fixed effects to control for this:

```python
model = smf.ols('bookings ~ did + C(member_id) + C(month)', data=df).fit()
# Two-way fixed effects: absorbs member-level and time-level confounders
```

---

### 2. Regression Discontinuity (RD)
**Use when**: treatment is assigned by crossing a hard threshold.

**Loyalty scenario**: Platinum status requires 50 nights/year. Members just above (51 nights) vs just below (49 nights) are nearly identical in every way except tier status. That discontinuity is your experiment.

```
Causal effect ≈ outcome(51 nights) - outcome(49 nights)
```

**Sharp RD**: everyone above threshold gets treatment (hard cutoff).
**Fuzzy RD**: crossing threshold raises *probability* of treatment but doesn't guarantee it (e.g. manual overrides exist). Use IV in this case.

```python
import numpy as np
import statsmodels.formula.api as smf

# Centre the running variable at the threshold
df['nights_centred'] = df['nights'] - 50
df['above'] = (df['nights_centred'] >= 0).astype(int)

# Local linear regression on both sides of cutoff
bandwidth = 5  # members with 45–55 nights only
local = df[df['nights_centred'].abs() <= bandwidth]

model = smf.ols(
    'bookings_next_year ~ above + nights_centred + above:nights_centred',
    data=local
).fit()

print(model.params['above'])  # RD estimate
```

**What to check**:
- **Density test (McCrary)**: if members are manipulating their night count to just cross 50, the running variable bunches at 51. That invalidates the design
- **Covariate smoothness**: demographics, tenure, booking value should be smooth through the threshold — if not, something else changed at that point

**This is the cleanest quasi-experimental design when it applies** — it's close to a local randomised experiment. But it only estimates the effect *at the threshold*, not for your average Gold member.

---

### 3. Synthetic Control
**Use when**: one unit (a market, a country, a tier) got treated. You have no clean comparison group but have pre-period data on many potential controls.

**Loyalty scenario**: Expedia launches One Key (unified loyalty) in the US only. You want to measure its impact on booking rate. You can't use Europe as DiD because trends differ. Instead, construct a synthetic US from a weighted combination of other markets that best matched US pre-period behaviour.

```python
from sklearn.linear_model import ElasticNet

# Pre-period: find weights on control markets that replicate US trend
pre = df[df['period'] < launch_date]

X_donors = pre[control_markets].values   # e.g. UK, DE, AU, CA
y_us = pre['US'].values

model = ElasticNet(positive=True, fit_intercept=False)
model.fit(X_donors, y_us)
weights = model.coef_  # synthetic US weights

# Post-period: apply same weights, compare to actual US
post = df[df['period'] >= launch_date]
synthetic_us = post[control_markets].values @ weights
actual_us = post['US'].values

effect = actual_us - synthetic_us  # causal gap
```

**What to check**:
- Pre-period fit — if synthetic doesn't track actual US well before launch, it won't be credible after
- Placebo tests — apply the same method to each donor market as if *they* were treated. Your US effect should be an outlier. If every market shows a similar gap, you have noise, not signal

**Weakness**: purely data-driven weight selection can overfit the pre-period. Requires long pre-period (ideally 2–3× the post-period length).

---

### 4. Propensity Score Matching (PSM)
**Use when**: you have observational data, no threshold, no clean control group — but you can model who *would have* been treated based on pre-treatment characteristics.

**Loyalty scenario**: a retention email was sent to members flagged as at-risk (non-randomly). You want to know if it worked. You match each treated member to an untreated member with similar propensity to have been selected.

```python
from sklearn.linear_model import LogisticRegression
from sklearn.neighbors import NearestNeighbors
import pandas as pd

# Step 1: estimate propensity score P(T=1 | X)
ps_model = LogisticRegression().fit(X, T)
df['propensity'] = ps_model.predict_proba(X)[:, 1]

# Step 2: match treated to nearest control on propensity score
treated = df[df['T'] == 1][['member_id', 'propensity', 'outcome']]
control = df[df['T'] == 0][['member_id', 'propensity', 'outcome']]

nn = NearestNeighbors(n_neighbors=1)
nn.fit(control[['propensity']])
distances, indices = nn.kneighbors(treated[['propensity']])

matched_control = control.iloc[indices.flatten()].reset_index(drop=True)
matched_treated = treated.reset_index(drop=True)

# Step 3: ATT estimate
att = (matched_treated['outcome'] - matched_control['outcome']).mean()
print(f"Average treatment effect on treated: {att:.4f}")
```

**What to check**:
- **Covariate balance after matching**: treated and matched controls should look similar on all features. Check standardised mean differences — target < 0.1
- **Common support**: members with very high propensity (almost certainly treated) have no good matches. Trim them or acknowledge the limitation
- **Unobserved confounders**: PSM only controls for what's in X. If there's an unmeasured variable that drove both selection and outcome (e.g. a member's intent to churn, which you can't observe), PSM is still biased. This is its fundamental weakness vs RD or DiD

---

## How to pick in the interview

```
Is there a hard threshold for treatment?
  └─ Yes → Regression Discontinuity

Did one group get treated, another didn't, and you have pre/post data?
  └─ Yes → DiD (check parallel trends)

Was it a single market / policy with no clean control group?
  └─ Yes → Synthetic Control

None of the above — purely observational, non-random selection?
  └─ PSM (weakest, but sometimes the only option)
```

---

## The answer they want to hear at senior level

> "I'd first ask why we can't randomise — the reason usually points to the right method. A threshold → RD, which is the closest to an experiment. A phased rollout across groups → DiD. A single-market launch → synthetic control. Observational data with selection bias → PSM, but I'd be upfront that it can't handle unobserved confounders, and I'd run a sensitivity analysis to bound how large that bias could be."

The last part — acknowledging PSM's weakness and offering a sensitivity analysis — is what separates a senior answer from a textbook one.

**You:** Help me write a 2-minute opening pitch for a Senior Data Scientist, Loyalty Analytics role at Expedia. I'll tell you my background and you can help tailor it.

**Claude:** Tell me about your background and I'll craft the pitch around it.

A few things that'll make the biggest difference:

*[Claude asked: domain worked in most; which of churn/retention modelling, A/B experimentation, uplift/causal inference, recommendation systems, model deployment/MLOps, segmentation you've done hands-on; years of DS experience and grad degree]*

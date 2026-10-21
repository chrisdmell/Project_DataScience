# Preparing for Ethos Life case study round

**You:** i have a round 2 - case study with ethos life - the hiring manager round went well where they asked me about my CV and all my impact projects. now they want to probe my problem solving skills and thinking thru problems via this round - i believe. help me prepare.
let me also share JD

**Claude:** The JD didn't come through. Please paste it as text.

To tailor the prep, tell me:
1. **Role**: product, analytics, ops, growth, something else?
2. **Case format**: live with a whiteboard or doc, or a take-home with a presentation? Do you know the duration?
3. **Case type**: did they hint at anything (metrics drop, market sizing, product design, process improvement)?
4. **Your background**: a one-liner on your current role and years of experience.

Until then, this applies to almost any problem-solving case:

- **Clarify**: restate the problem, ask about goal, constraints, and success metric. Spend 2-3 minutes here.
- **Structure**: lay out a framework out loud before diving in (e.g., funnel stages, segments, or drivers).
- **Hypothesize**: lead with a hypothesis and say what data would confirm or kill it.
- **Prioritize**: pick the highest-impact branch and explain why.
- **Quantify**: use rough numbers and state assumptions explicitly.
- **Recommend**: give a clear answer, the risks, and next steps.
- **Think aloud**: they are grading your reasoning more than the final answer.

For Ethos specifically (online life insurance), expect context like the application funnel (quote → application → underwriting → policy issued), conversion and drop-off, instant-decision vs. medical-exam flows, and acquisition channels/CAC. I'd verify the details against the JD once you share it.

**You:** About the role

We are looking for an ambitious, highly analytical self-starter to step into a high-visibility role within our Agent (Partnerships) business. Partnerships is our high-velocity business line that provides insurance agents with a digital-first platform, automated underwriting infrastructure, insurance products, and specialized services to help them sell more life insurance, faster.

Working as an elite individual contributor, you will sit squarely at the intersection of product mechanics, data science, and operational strategy. You will partner directly with our business leaders to solve unstructured data puzzles, proactively flag macro financial risks, and define the behavioral milestones that turn new agents into long-term platform advocates. If you are a big-picture thinker who loves digging into the data weeds to write the strategic story of enterprise growth, let's talk.

Duties and Responsibilities:

Strategic Partnerships Data Lead: Serve as an analytics thought partner and data expert for the Partnerships leadership team, spearheading strategic decisions around agent acquisition, growth, retention, persistency, and more.
Core Product Analytics: Track, evaluate, and optimize the agent-facing platform experience. Define precision usability metrics for new product features to ensure engineering sprint cycles drive positive user actions.
Operational Risk & Commission Debt Architecture: Build diagnostic data models to analyze, track, and mitigate backend financial exposure. Slice historical operational datasets to pinpoint risk concentration hotspots within external agencies and design targeted debt recovery frameworks.
Strategic Input Modeling: Isolate critical growth levers across the agent journey to define the definitive onboarding metric (the "aha moment") that yields a positive snowball effect on platform retention and aggregate revenue generation.
Funnel Optimization: Manage performance frameworks and monitor conversion steps for our emerging annuities business lines using a classic Direct-to-Consumer (D2C) funnel approach.
Data Democratization & Infrastructure: Collaborate with data engineers and broader analytics teams to maintain scalable business logic, deploy clean tracking dashboards, and enable self-service analytics across the organization.
Tooling Innovation: Actively build, test, and integrate advanced generative AI tools to automate internal analytics processes and maximize delivery speed.
Team Mentorship: Provide ongoing guidance, peer code reviews, and tactical leadership training to distributed junior analytics resources across our global offices.

**Claude:** ## Likely case themes (mapped to the JD)

Most probable: **aha moment**, **commission debt**, **agent retention**. Prep those first.

### 1. Find the "aha moment" for new agents
- **Define the outcome first**: 90/180-day active agent, or cumulative premium. Pick one and justify it.
- **Define cohorts**: agents by signup month, split by source (agency vs. independent), experience, and product mix.
- **Candidate early actions**: first quote, first application submitted, first policy issued, first instant-decision approval, number of quotes in week 1, time-to-first-app.
- **Method**: compare retained vs. churned agents on each action and timeframe (e.g., "submitted ≥1 app in 14 days"). Use a threshold/lift analysis or a simple logistic regression or decision tree.
- **Caveats**: correlation ≠ causation (motivated agents do everything). Validate with an experiment, such as nudges or onboarding changes that push the action.
- **Output**: one metric, one threshold, one time window. Example: "≥2 apps submitted in the first 21 days → 3x 6-month retention."

### 2. Commission debt / risk concentration
- **Mechanics to state**: agents are paid advance commissions. If a policy lapses or cancels early, the commission is clawed back. If the agent doesn't repay, it becomes debt.
- **Exposure** = advanced commission on policies still in the chargeback window × probability of lapse × probability agent can't repay.
- **Slice by**: agency, agent tenure, product, carrier, premium band, payment method, state, acquisition channel.
- **Look for**: concentration (Pareto: what % of agencies drive 80% of debt), early lapse rate vs. benchmark, debt aging, repayment velocity.
- **Leading indicators**: first-premium failure, non-payment in the first 60 days, application quality signals, a spike in volume from one agency.
- **Actions**: tiered advance rates by agency risk, holdbacks or reserves, a recovery waterfall (offset against future commissions first, then collections), and a watchlist dashboard with alert thresholds.
- **Tradeoff**: tightening risk controls hurts agent growth, so quantify both sides.

### 3. Retention / persistency
- Separate **agent retention** (agents still selling) from **policy persistency** (policies still in force).
- Diagnose with cohort retention curves, then find where they break (week 1, month 3?).
- Segment, form hypotheses (onboarding friction, product fit, payout speed, support), then prioritize by size × fixability.

### 4. Annuities D2C funnel
- Stages: visit → quote → application → underwriting/suitability → funded → issued.
- Find the biggest drop, segment it (channel, device, age, premium size), and propose a hypothesis plus an A/B test.
- Metrics: conversion per step, time between steps, CAC, funded rate, average premium.
- Annuities have a longer consideration cycle than term life, so expect lower conversion and multi-touch behavior.

### 5. Feature usability metrics
- Per feature: **adoption** (% of eligible agents using it), **depth/frequency**, **task success**, **time-to-complete**, **error rate**, and **downstream impact** (apps submitted, retention).
- Define the metric before launch, with a counter-metric to catch harm (e.g., more submissions but a higher decline rate).

### 6. Generic "metric dropped" case
Check data quality/tracking first → timing (sudden vs. gradual) → segment cuts → funnel step → external factors (carrier changes, seasonality, pricing) → root cause → action.

## How to run the case
1. Clarify the goal, decision-maker, timeline, and data available (2-3 min).
2. State the metric tree out loud.
3. Give a hypothesis before analyzing.
4. Say what query or cut you'd run, and what result would change your mind.
5. End with a recommendation, the risks, and the next experiment.

## Differentiators for this role
- Show the **business tradeoff** (growth vs. risk), not just analysis.
- Mention **self-serve dashboards and data definitions** (the democratization bullet).
- Have a concrete GenAI automation example ready (e.g., natural-language SQL, auto-generated weekly insights, anomaly narration).
- Have one mentorship story ready (code review, a junior you grew).
- Tie in your past impact projects, using the same structure: problem → approach → quantified result.

## Next step
Tell me the case format (live or take-home, duration) and your background, and I can run a mock case with you, starting with aha moment or commission debt.

**You:** what are the typical variables Ethos might have for their consumers - so that they can make decisions?

**Claude:** Ethos likely has these variables. This is inferred from the standard life-insurance and digital-funnel data model, not from Ethos itself.

**Applicant demographics and application data**
- Age, gender, state, marital status, dependents
- Income, occupation, net worth
- Coverage amount, term length, product type (term, whole life, final expense, annuity), riders
- Beneficiary details

**Health and underwriting**
- Height/weight (BMI), tobacco/nicotine use
- Medical history and conditions, medications
- Family history
- Driving record, criminal record, hazardous activities, travel
- Third-party data: MIB, Rx history, MVR, credit-based insurance score, EHR/lab data
- Underwriting outputs: risk class (Preferred Plus to Standard/Substandard), decision (instant, accelerated, full exam), decline reason, time to decision
- Exam flags: paramedical exam required, labs, APS

**Pricing and policy**
- Quoted premium, final premium, premium mode (monthly/annual)
- Carrier, rate class, commission schedule
- Policy status: issued, in force, lapsed, cancelled, free-look return
- Persistency at month 1, 3, 6, 12, 24
- Payment method, first-premium success, failed payments
- Claims

**Funnel and behavioral**
- Acquisition source, channel, campaign, referring agent/agency, device
- Quote requests, quote-to-app time, app completion %, drop-off step, return visits
- Sessions, pages viewed, calculator use, coverage changes mid-flow
- Time to accept an offer, abandonment reason, call or chat contacts

**Agent and agency (the Partnerships angle)**
- Agent tenure, licenses and states, agency affiliation, book size
- Apps submitted, placement rate, average premium, product mix
- Early lapse/chargeback rate, advance commission outstanding, debt balance and aging, repayment history
- Platform activity: logins, quotes run, feature usage, time-to-first-app, support tickets
- Lead source (agent-sourced vs. Ethos-provided)

**Decisions they drive**
- **Pricing and approval:** health, age, coverage, and third-party data decide instant approval vs. exam.
- **Funnel:** behavioral data and drop-off steps decide where to simplify.
- **Risk:** early lapse, first-payment failure, and agency concentration decide advance rates and recovery.
- **Retention:** onboarding actions and platform usage predict which agents stay.

**For your case:** name the variables you'd pull before analyzing. Example for commission debt: "agency, policy lapse month, advance amount, repayment history, first-premium failure."

**You:** Leading indicators: first-premium failure, non-payment in the first 60 days, application quality signals, a spike in volume from one agency.
what would be quality of application here? what would it mean and how willl we quantify

**Claude:** **Meaning:** how likely an application is to become a policy that stays in force past the chargeback window. A low-quality app is one likely to be declined, never paid for, or lapsed early, leaving Ethos with an unrecoverable advance.

**Signals (at submission, before the advance is paid)**

| Signal | Red flag |
|---|---|
| Data integrity | Duplicate or shared phone, email, address, or bank account across apps; invalid or disposable contact info |
| Applicant-agent link | Applicant is the agent, a relative, or lives far from the agent's state; agent is licensed in a different state |
| Affordability | Premium too high for stated income; coverage far above income-multiple norms |
| Payment | Prepaid card, new bank account, failed account verification, draft date far from application date |
| Disclosure | Mismatch between stated and third-party data (Rx, MIB, MVR), such as undisclosed tobacco or conditions |
| Speed and pattern | Unusually fast completion, copy-paste patterns, same IP or device across many applicants, bulk submissions at odd hours |
| Product-fit | Coverage or product mismatched to age and needs; minimum-premium clustering |
| Outcome-based (lagging) | High decline rate, high not-taken rate, free-look cancellations |

**How to quantify**

1. **Define the outcome label.** Bad app = lapsed or cancelled within N months (match the chargeback window, e.g. 12) OR first premium failed OR not taken. Good = in force past N.
2. **Single-signal lift.** For each signal, compute bad rate with the flag vs. without. Keep those with high lift and enough volume.
3. **Composite quality score.** Fit logistic regression or gradient-boosted trees on historical apps, with features above and the outcome label. The output is P(bad) per app. Bucket into deciles and check calibration.
4. **Agent/agency-level metric.** Aggregate to quality rate = % of apps in the bottom score bucket, or a weighted average P(bad). Also track actual early-lapse rate and first-premium failure rate vs. portfolio benchmark, with confidence intervals for small agencies.
5. **Dollarize.** Expected loss per app = advance × P(bad) × P(unrecovered | bad). Sum by agency to get the risk-weighted exposure.
6. **Validate.** Back-test on a holdout cohort, check precision/recall at the alert threshold, and watch for score drift.

**Actions from the score:** tier advance rates by score, hold commissions on high-risk apps until the first premium clears, route flagged apps to manual review.

**Caveat to mention in the interview:** don't penalize agents on correlation alone. Check that signals aren't just proxies for a legitimate segment (e.g., final-expense buyers with lower income), and track false-positive cost, since blocking good apps hurts growth.

**You:** do these insurance companies also decline applications? and why?

**Claude:** **Yes.** Carriers decline a meaningful share of applications, and Ethos-style platforms route applicants to whichever carrier will accept them.

**Why applications get declined**

| Category | Examples |
|---|---|
| Health/medical | Serious conditions (recent cancer, heart failure, organ disease), uncontrolled diabetes, recent hospitalization, high-risk Rx history |
| Lifestyle/risk | Recent DUI or poor MVR, hazardous occupation or hobbies (aviation, diving), felony record, high-risk travel |
| Financial/insurability | Coverage far above income or net worth (no insurable interest), bankruptcy, premium unaffordable |
| Non-disclosure | Stated answers conflict with MIB, Rx, or MVR data (e.g., undisclosed tobacco) |
| Eligibility | Age or state outside product limits, agent not licensed in state, non-resident or immigration rules |
| Fraud/data issues | Identity mismatch, duplicate applications, suspicious payment info |
| Product rules | Product-specific cutoffs (e.g., no-exam products cap coverage amount, exclude certain conditions) |

**Related outcomes (not the same as decline)**
- **Rated/substandard offer:** approved at a higher premium.
- **Modified offer:** lower coverage or a different product (e.g., graded-benefit final expense).
- **Postponed:** revisit after a condition stabilizes.
- **Not taken:** approved, but the applicant never pays or accepts.
- **Incomplete:** abandoned during underwriting or the exam.

**Why it matters for your case**
- Decline rate is a **funnel step** (app → decision), and a **quality signal** by agent/agency (high decline means poor pre-screening).
- Declines carry **no advance risk**, since no policy is issued. The commission risk sits in **approved-but-not-taken** and **early lapse**.
- Counter-metric when optimizing submissions: more apps with a higher decline rate means wasted underwriting cost and agent frustration.
- Product lever: instant-decision flows reduce time-to-decline and fall-through, and better pre-qualification questions steer agents to the right carrier or product first.

**You:** the round went well, the interviewer used to work at trip advisor earlier - and gave me a case for how should the platform think about increasing more paid listings on the platform - what would be the trade offs.
and how do they calculate that and so on.

now the case study round today is with an interviewer who cofounded Playo- the app to book courts to play. they might ask something related to that. help me prepare accordingly

**Claude:** ## Playo lens: marketplace liquidity and disintermediation

Playo is a multi-sided marketplace: **players**, **venues/academies** (supply), and **coaches/hosts**. Revenue is mainly commission or convenience fees on bookings, plus venue SaaS, events and ads. Ethos Partnerships is the same shape, with agents as supply. Use that parallel to link your answers to the JD.

### Likely cases

| Case | Core approach |
|---|---|
| **Aha moment for new venues or players** | Retained vs. churned cohorts. Venue: first booking within X days, calendar sync done, a utilization threshold. Player: first booking within 7 days, second booking within 30 days, joined a game. Pick one metric, one threshold, one window, then validate with a nudge experiment. |
| **Booking drop or low conversion** | Funnel: search → venue view → slot select → payment → confirmed. Cut by city, sport, time slot, device. Check supply availability first, since "no slots" looks like a conversion problem. |
| **Low venue utilization** | Utilization = booked slots / available slots, by hour and day. Peak slots are full and off-peak is empty. Levers: dynamic or off-peak pricing, discounts, bundles, memberships, and coaching or events to fill gaps. |
| **Platform leakage (disintermediation)** | Repeat players book with the venue directly, off-platform. Detect: repeat-pair rate, a drop in repeat bookings per player-venue pair, venue-level take-rate decline. Levers: payment protection, loyalty or credits, venue SaaS lock-in, discovery and game-matching value they can't replicate. |
| **Supply vs. demand imbalance** | Diagnose per city and sport: unfilled search demand (demand-side) or empty slots (supply-side). Fix the constraint side first. |
| **Cancellations and no-shows** | Rate by venue, slot, lead time and payment type. Levers: cancellation fees, prepayment, reminders, waitlists to refill slots. |
| **Monetization** | Commission rate vs. venue churn and leakage (same tradeoff as the TripAdvisor paid-listings case). Test tiering and SaaS subscriptions. |
| **Pricing or new city expansion** | City selection by search density, venue count and sports mix. Metrics: liquidity, repeat rate, CAC payback. |

### Core metrics to speak fluently
- **Liquidity:** % of searches that end in a booking, and slot fill rate.
- **Repeat rate:** players with 2+ bookings in 30/60 days, and cohort retention curves.
- **Take rate:** net revenue / GMV.
- **Unit economics:** CAC, contribution margin per booking, LTV by cohort.
- **Supply health:** active venues, utilization, cancellation rate, response time.
- **Network effects:** games with enough players to confirm, since a game needs N players to happen.

### Framework to run any marketplace case
1. Clarify the goal and which side is the constraint.
2. Split into supply, demand and matching.
3. Build the metric tree: GMV = active players × bookings per player × avg booking value.
4. Hypothesis first, then the cut you'd run and what would change your mind.
5. Show the tradeoff (growth vs. margin, supply quality vs. quantity).
6. Recommend, name the risks, propose the experiment.

### Tie it back to Ethos
- Venues map to agents/agencies, and bookings map to apps and policies.
- Aha moment: first booking maps to first app submitted.
- Leakage maps to agents selling through other carriers or platforms.
- Cancellations map to lapses, and venue quality maps to application quality.
- Say the parallel out loud. It shows you can transfer marketplace thinking.

### Expect follow-ups
- "How would you know it's causal?" → experiment or holdout, plus selection-bias caveat.
- "What data would you need?" → name tables and fields.
- "How would you prioritize?" → impact × confidence ÷ effort.
- "What would you build first?" → one dashboard or metric definition.

Want a mock? Tell me whether you'd like to start with venue utilization or the leakage case.

**You:** start with venue utilization

**Claude:** **Mock case: venue utilization**

**Interviewer:** "Playo works with ~2,000 venues in a city. Average utilization is 35%. Leadership wants it higher. How would you approach this?"

**Rules**
- Answer as you would live: clarify, structure, hypothesize, quantify, recommend.
- I'll reply as the interviewer with follow-ups and data when you ask.
- Afterward I'll score you on structure, quantification, tradeoffs, and communication, and share a model answer.

**Your turn.** Start with clarifying questions, or go straight to your structure.

**You:** so we want the utilization to be higher. i.e slots booked to be higher.

what does the utilization look like by sport type, venue type (academies, schools, small venues), area of city wise?
because we would want to prioritise what to fix first. and maybe even learn from the places where its already high.

so i'll first look at the current setup & scenario with stats.

some of the things i think would help increase utilization - could be - offering bundles offers to folks esp for non peak hours , so that we go from 0 revenue to some revenue , it would be bet positive only to us.
also, asking members to ask fellow players to join the app - the more members - higher the bookings eventually.

**Claude:** **Interviewer data (illustrative, not real Playo numbers)**

| Cut | Utilization |
|---|---|
| Badminton / Football turf / Cricket nets / Tennis / Swimming | 52% / 41% / 30% / 28% / 22% |
| Academies / Small venues / Schools | 48% / 33% / 18% |
| Central / Suburbs / Outskirts | 45% / 30% / 18% |
| **Peak (weekday 6-9am, 6-10pm, weekends)** | **78%** |
| **Off-peak (weekday 10am-4pm)** | **8%** |

The time-of-day cut explains most of the gap. Peak is near capacity, so the growth is in off-peak.

**Feedback**

Good:
- Diagnose before fixing.
- Segment to prioritize.
- Learn from high-utilization pockets.
- Off-peak bundles target the right problem.

Gaps:
1. **You skipped time-of-day, the most important cut.** Always split peak vs. off-peak first.
2. **Define utilization.** Booked slots / available slots, but who sets availability? Slots blocked for offline or walk-in bookings distort it. Say the denominator out loud.
3. **"Net positive" needs proof.**
   - Cannibalization: do peak users shift to discounted off-peak slots?
   - Who funds the discount, venue or Playo?
   - Is the incremental revenue larger than the lost peak revenue? Test with a holdout.
4. **Referrals mostly add peak demand.** New players want 6-9pm, which is already full. They don't fix off-peak. Ask first whether demand or supply/matching is the constraint.
5. **Name a success metric and a counter-metric.** Success: off-peak fill rate. Counter: peak revenue per slot, margin, venue satisfaction.

**Missing lever:** find who is free at 10am-4pm (students, WFH, retirees, corporate wellness, school and coaching programs, women-only or senior batches) and build off-peak supply for them.

**Follow-up for you:** Off-peak is 8% at 78% peak. Who is your off-peak customer, and how would you test whether the bundle works without hurting peak?

**You:** right, so looks like the most scope is in off peak hours. we would want to increase utilization there at the same time ensurung that it is not being cannibalised, i.e gmv per slot for peak hour isn't being affected.

now who would be the right TG to target?
we could target >
students / children
retirees
non-working folks (housewives?, )

target our marketing towards those - target them with discounts,
also add other things like coaching facility, mentorship, even tournaments?
that would peak interest of the folks

**Claude:** **Feedback**

Good:
- Naming cannibalization guard (peak GMV per slot) as the constraint.
- Segmenting TG by who is free at 10am-4pm.
- Coaching as a demand driver.

Gaps:
1. **Rank, don't list.** Score each TG on size × time availability × willingness to pay × sport fit × reachability. Pick 1-2 for the pilot.
2. **Wrong channel for some TGs.** Kids and students are reached through schools, colleges and parents, i.e. B2B/partnership deals, not ads. Retirees want walking, yoga, swimming, badminton, so check that sport/venue supply matches.
3. **Missing TGs:** WFH and freelancers, shift workers, corporate wellness (weekday lunch slots), and women-only or senior batches.
4. **Tournaments mostly land on weekends (peak).** Run weekday-daytime leagues instead (corporate, college).
5. **Coaching is your strongest idea.** Cohorts book fixed recurring weekly slots, so utilization is predictable and sticky. Say that.
6. **Don't give blanket discounts.** Fence them: off-peak slots only, prepaid packs or memberships, first-time users. Fences limit peak users from migrating.

**Quick TG ranking (illustrative)**

| TG | Free daytime | Pay | Reach | Verdict |
|---|---|---|---|---|
| School/college programs | Medium (PE hours) | Low per head, high volume | B2B deal | Pilot |
| Retirees | High | Medium | Hard, offline | Later |
| WFH/freelancers | Medium | High | Easy, in-app | Pilot |
| Corporate wellness | Medium | High | B2B sales | Later |
| Homemakers | High | Medium | Community | Test |

**Measuring without cannibalization**
- Randomize at venue level: treatment gets off-peak offer, control doesn't.
- Success: off-peak fill rate, incremental GMV.
- Guardrails: peak GMV per slot, share of peak users who shift to off-peak, venue margin.
- Net impact = incremental off-peak GMV − peak GMV lost.

**Follow-up for you:** You have budget for one TG and a 4-week pilot in 50 venues. Which TG do you pick, what is the offer, and what result would make you scale or kill it?

**You:** i would pick freelancers / WFH folks - they will have waller share and willingness to pay. time wise they can take 1 or 1.5 hr from their schedule - they can be reached via digital marketing ads - we might not need community partnerships or B2B tie ups for those.
so will choose those and will give them bundles offers like 10 sessions for say 90% of the price. and then do A/B testing (easy since digital ads) to see whether the intervention is net positive or not.

**Claude:** **Feedback**

Good:
- Clear pick with a reason (wallet share, flexible time, in-app reach).
- A/B test is feasible with digital channels.
- Prepaid pack is a proper fence.

Gaps:
1. **10% off is likely too weak for an 8%-utilization slot.** Marginal cost of an empty slot is near zero, so you can discount deeper (20-30%) off-peak. Test 2-3 depths, don't guess.
2. **Fence the bundle:** valid only 10am-4pm weekdays, expiry (e.g. 60 days) to force usage, non-transferable. Without this, peak users buy it.
3. **Randomization unit.** Ad-level A/B tests user response, not venue effects. Pilot is 50 venues, so do venue-level treatment vs. control, or geo split, and use ads for targeting inside treatment venues.
4. **Sport-fit gap.** WFH folks want 1 hr badminton, turf football with friends, swimming, gym-like use. Cricket nets or tennis may not fit. Pick the pilot venues by sport.
5. **Sell-through risk.** Packs are prepaid, so measure redemption. Unredeemed sessions are breakage (revenue for Playo, but a retention red flag).
6. **Define pass/fail before launch.**

**Pilot design (4 weeks, 50 venues)**
- 25 treatment, 25 control, matched by city zone, sport, baseline off-peak utilization.
- Offer: 10-session pack, 20-25% off, weekday 10am-4pm, 60-day validity.
- Success: off-peak fill rate lift (e.g. +8-10 pts), incremental GMV net of discount, pack purchasers who redeem 3+ sessions in 4 weeks.
- Guardrails: peak GMV per slot flat (within noise), peak-user migration < X%, venue margin and payout intact.
- Leading read at week 2: pack purchase conversion and first-session redemption.

**Scale / kill rules**
- **Scale:** off-peak lift hits target, net incremental GMV positive after discount and ad CAC, guardrails hold, and repeat purchase of a second pack ≥ threshold.
- **Iterate:** purchases are high but redemption low (wrong time or sport), or the discount is too deep.
- **Kill:** CAC exceeds contribution margin, or peak GMV per slot drops measurably.

**Caveat to say aloud:** 4 weeks is short for a 10-session, 60-day pack. Read early signals (purchase, redemption pace) and plan a follow-up on 60-day retention and second-pack rate.

**Follow-up for you:** The pilot works. Ad CAC is ₹600 per pack buyer, pack price is ₹4,000 after discount, platform take rate is 15%. Does the unit economics work? Walk me through it.

**You:** if platform take rate is 15% of 4k that's 600 and ad CAC is also 600 so it balances off.
at the moment. however, once the customer is acquired, there will be some LTV - they will continue to come onto the platform - that's the hope atleast - and we will ensure that happens.
so in the long term there will be net goodness that platform will see by this. so we are okay to scale at a 600 CAC. if take rate = CAC at the moment.

**Claude:** **Feedback**

Math is right: ₹600 take = ₹600 CAC, so first-pack breakeven on revenue. But "okay to scale" is premature.

**Gaps**
1. **Take rate is revenue, not contribution margin.** Subtract payment gateway (~2% = ₹80), support, refunds, and any Playo-funded discount. Real first-pack margin is roughly ₹500, so you're about -₹100 per buyer, not zero.
2. **CAC must be per incremental buyer.** Some pack buyers would have booked anyway (organic, or peak users migrating). If 30% are non-incremental, effective CAC is ~₹860.
3. **Average CAC ≠ marginal CAC.** Digital CAC rises as you scale into broader audiences. Test at 2-3x spend before committing.
4. **"Hope" isn't LTV.** Quantify it:
   - P(second pack) × margin per pack (net of retargeting cost, which is cheap)
   - Example: 40% repeat × (₹520 − ₹100) ≈ +₹170 per buyer in the next cycle
   - Payback = months until cumulative margin ≥ CAC
5. **Missing upside:** breakage (unredeemed sessions) and non-pack organic bookings by the same user.

**Better scale rule**
- Payback < 3-4 months, LTV:CAC ≥ 3 at 12 months, and second-pack rate ≥ target (e.g. 35-40%).
- Break-even on first pack is fine **only if** repeat is proven. Until the pilot shows repeat, say "scale in stages, gated on week 6-8 repeat data."
- Levers if the math is thin: raise pack price or take rate on off-peak, cut CAC via referrals or retargeting, or have venues co-fund, since they earn on slots that were empty.

**Say aloud:** "Breakeven on first pack is acceptable because off-peak slots have near-zero marginal cost, but I'd gate scale on repeat rate and incremental-adjusted CAC."

**Follow-up for you:** Pilot ends. Off-peak fill is up 9 pts, but peak GMV per slot dropped 3% (within noise, p = 0.2). Ship or not, and how do you decide?

**You:** what does the overall GMV look like for test v control?
peak gmv per slot was expected to fall as we scaled this up - so this is not something unexpected. i would look at overall gmv math - is the overall gmv from non peak + peak hours comping for peak gmv drop ? is yes, then we should be fine. if not than we shouldn't ship because we are effectovely we are cannibalising our own biz.

**Claude:** **Interviewer data (illustrative)**

Per venue per week, test vs. control:

| | Control | Test | Δ |
|---|---|---|---|
| Peak GMV | ₹1,00,000 | ₹97,000 | -₹3,000 |
| Off-peak GMV (net of discount) | ₹10,000 | ₹21,000 | +₹11,000 |
| **Total GMV** | ₹1,10,000 | ₹1,18,000 | **+₹8,000 (+7.3%)** |

**Feedback**

Right call: total GMV (net of discount) is the decision metric, not peak per slot alone.

**Gaps**
1. **Use net incremental revenue, not GMV.** Playo earns take rate on GMV, so net = 15% × ₹8,000 = ₹1,200 per venue/week, before ad CAC and costs. Check whether the discount is Playo- or venue-funded.
2. **p = 0.2 means the -3% is inconclusive, not zero.** Give a range: if the true drop is -8%, the gain shrinks to ~₹3,000. Compute the confidence interval on *total* GMV lift, not just on peak.
3. **Four weeks understates the cost.** Peak users may migrate to discounted slots gradually. Check the trend of the peak drop by week, and the share of pack buyers who were previously peak users.
4. **Pull forward vs. incremental.** Check whether off-peak gain came from new demand or from users shifting sessions. Look at those users' total bookings before vs. after.
5. **Venue view.** Venues must net positive too, or they'll drop the offer. Check per-venue payout and which venues lost.

**Decision**
- **Ship in stages** if the CI on total net lift excludes zero, the peak drop isn't worsening weekly, and unit economics hold after CAC.
- **Do not ship** if the lower bound of total lift is negative or peak decline grows with time.
- Next step: extend to 8 weeks on a subset, plus a larger venue sample for power.

**Say aloud:** "The decision is the sign and confidence interval of total net incremental contribution, with peak decline as a guardrail, not a standalone veto."

**Follow-up for you:** The CEO asks, "Why not just discount everything and grow utilization faster?" How do you respond?

**You:** if we end up discounting peak slots too - slots that anyways gonna be filled, we are reducing our bottom line only. those anyways have enough demand. we should go by supply-demand principle and only discount slots where organic demand is not seen at the moment - to creare user behavior, to create demand, and get new users, make them stick or retained on the platform.

**Claude:** **Feedback**

Right core logic: discounting slots that already fill gives away margin for no incremental volume. Price follows demand.

**Gaps**
1. **Quantify the leak.** Peak is 78% utilized. A 20% blanket discount cuts revenue on every slot that would have sold anyway. Example: peak GMV ₹1,00,000/week × 20% = ₹20,000 lost, versus the +₹11,000 off-peak gain. Net negative.
2. **Name the economics.** Discounts pay off only where elasticity is high and marginal cost is near zero (empty slots). Peak has low elasticity and a capacity constraint.
3. **Go beyond "discount": dynamic pricing.** Peak can carry a premium or smaller discounts. Price by hour using utilization, lead time and day. The discount becomes a targeted lever, not a blanket one.
4. **Add the training risk.** Blanket discounts teach users to wait for deals, lowering willingness to pay and hurting venues' perception of Playo.
5. **Venues set peak prices.** They will resist Playo discounting their best slots. Off-peak offers are easier to sell because they monetize empty inventory.
6. **Give a middle path to the CEO.** "Where would broader discounting make sense?" Shoulder hours (4-6pm weekdays, Sunday afternoons) at 50-65% utilization, tested the same way.

**Say aloud:** "Discount where marginal cost is near zero and demand is slack. At peak we're capacity-constrained, so the discount only transfers margin. I'd rather test pricing by hour and let data set the depth."

**Follow-up for you:** The CEO agrees, but asks for a one-slide summary of the utilization strategy. What's on it?

**You:** lets move to another case here . thanks

**Claude:** **Mock case: platform leakage (disintermediation)**

**Interviewer:** "Playo's repeat bookings per player-venue pair have been falling for 3 quarters, while venue count and new-player signups are growing. We suspect players are discovering venues on Playo, then booking directly with the venue the next time. How would you approach this?"

Same rules: clarify, structure, hypothesize, quantify, recommend. I'll answer as the interviewer when you ask for data, then give feedback and a model answer.

If you'd rather do a different case (booking-funnel drop, supply vs. demand imbalance, cancellations, monetization), say so.

**Your turn.**

**You:** got it, player to venue pair repeat bookkings are dropping.
hyppthesis : are playeres directly dealing with venues

2. : are players anyways getting less engaged in general
3. are more venues opening up and player bookings are distributed there - check if total bookings per player are also dropping or remaining the same
4. check whether venues are keeping more slots to themselves rather tahn listing all slots on playo - taht will give a sense of whether they are hiding something or dealing directly. are they restricting inventory - especially during peak hours.

**Claude:** **Interviewer data (illustrative)**

| Metric | 3 qtrs ago | Now |
|---|---|---|
| Bookings per active player / month | 3.1 | 3.0 |
| Distinct venues per player / quarter | 1.4 | 1.9 |
| Pair repeat rate (2nd booking within 60 days) | 42% | 31% |
| Repeat rate, venues with a contact number visible | 41% | 26% |
| Repeat rate, venues with no direct contact shown | 43% | 38% |
| Peak slots listed on Playo, top 15% venues | 90% | 74% |
| Peak slots listed on Playo, other venues | 88% | 87% |

**Feedback**

Good:
- Hypotheses are testable.
- Checking total bookings per player separates engagement from leakage.
- Peak inventory restriction is a sharp signal.

Gaps:
1. **Define the metric first.** Pair repeat rate is diluted by new signups and new venues. Use cohorts (first booking quarter), not a blended rate.
2. **Decompose the drop before testing causes.** Pair repeat decline = mix effect (new players/venues) + dispersion (players trying more venues) + leakage + engagement. Size each.
3. **Hypothesis 4 is a symptom of 1, not a separate cause.** Also add the *why*:
   - Venue side: commission, slow payouts, Playo-run discounts undercutting them.
   - Player side: venue offers better price or WhatsApp convenience.
   - Product side: cancellations, poor UX, no loyalty reason to rebook on Playo.
4. **Say how you'd detect leakage you can't see.** Offline bookings aren't in your data. Proxies:
   - Repeat-decay curve after the first booking, by venue.
   - Slots blocked or vanishing from the calendar with no Playo booking.
   - Contact-view/call clicks followed by no booking.
   - Venue's physical occupancy (mystery shopping, sensor or calendar sync) vs. Playo-booked slots.
5. **Quantify revenue at risk:** leaked repeat bookings × avg value × take rate, by venue tier.

**Reading the data**
- Engagement: no. Bookings per player are flat.
- Dispersion: partial. Venues per player rose 1.4 → 1.9, which mechanically lowers pair repeat.
- Leakage: likely, and concentrated. The repeat drop is largest where contact numbers are visible (41% → 26%), and the top 15% of venues are withholding peak slots (90% → 74%).
- Interpretation: top venues are pulling their best repeat customers off-platform.

**Say aloud:** "Pair repeat is the wrong headline. I'd track player-level repeat *across* venues, and use the contact-visibility and inventory-withholding cuts to isolate leakage."

**Follow-up for you:** Leakage is concentrated in the top 15% of venues, which produce ~40% of GMV. What do you do? Consider carrot vs. stick, the venue's incentive, and the risk of venues churning.

**You:** we would want to make it work for both Venues and us. show that we bring new customers to them and thus we are value providing platform - going solo wont be of use to them. give them guardrails that we want xy% of inventory listed on the platform - they can't withhold 20% of slots from peak hours.

basically show them long term value - that they will lose if they want to sever relationship - and thus make our strict points

**Claude:** **Feedback**

Good:
- Two-sided framing: the venue has to win too.
- Inventory guardrail is a concrete lever.
- Long-term value is the right pitch.

**Gaps**
1. **Top venues are 40% of GMV, so they hold leverage.** A stick alone risks churn, and you may lose them entirely. Lead with carrot, then enforce.
2. **Quantify their incentive.** Off-platform, a venue saves the commission (say 15%) on repeat players. Playo must beat that with value they can't replicate: new-player flow, no-show protection, payment guarantee, SaaS (calendar, billing, CRM).
3. **Segment before acting.** Top venues already have strong repeat bases, so "we bring new customers" is weak for them. Their real need is utilization of off-peak slots (ties to the earlier case) and fewer no-shows.
4. **Make the stick enforceable and fair:**
   - Tie it to perks: listing ≥ X% of peak inventory unlocks featured placement, lower take rate, priority payouts.
   - Non-compliance: reduced ranking, not a ban.
   - Don't use a flat "can't withhold 20%". Venues have genuine reasons (academy batches, member blocks), so allow declared blocks.
5. **Reduce leakage at the source:** hide direct contact until after the first booking, offer repeat-booking credits for players, in-app group games and leagues, and venue-facing loyalty tools that run on Playo.
6. **Add a tiered take rate:** lower commission on repeat bookings made via Playo. This removes the savings from going direct.
7. **Pilot first:** treat 20 top venues with a package (lower repeat commission + featured placement + inventory commitment), vs. control. Success: peak listing %, repeat rate, GMV, venue NPS.

**Say aloud:** "Venues leak when the commission exceeds the value we add on repeat bookings. I'd cut that gap with a lower repeat take rate and tools they need, and link the inventory commitment to rewards rather than only penalties."

**Ethos parallel:** top agencies placing business with other carriers or direct. Same fix: tiered commission, faster payouts, tooling, and exclusivity tied to perks.

**Follow-up for you:** One top venue refuses and threatens to leave with its 5,000 players. Do you let it go or renegotiate? What do you compute to decide?

**You:** so the second round of case study went well too. this was 3rd round overall.

**Claude:** Good progress. Three rounds cleared means they see you as a serious candidate.

**Likely next steps**
- Final round: leadership or cross-functional stakeholder (product, data science, or an exec). Expect a mix of behavioral, a deeper case, and culture fit.
- Possibly a technical screen: SQL, metric definitions, or a data-modeling exercise tied to the JD (commission debt, agent funnel).
- Reference checks and offer discussion after.

**Prep for the final round**
1. **Story bank (5 stories):** a high-impact project, a conflict or pushback, a failure, mentoring a junior, and a GenAI or automation example. Use problem → action → quantified result.
2. **"Why Ethos, why this role":** tie to Partnerships, commission-debt risk, the aha-moment problem, and the analytics-as-thought-partner angle.
3. **Questions for them:** how Partnerships leadership uses analytics today, what the biggest data gap is, how the team is structured across offices, what success looks like at 6 months.
4. **Practice the reps:** one more mock each on commission debt and the aha moment, since those map directly to the JD.
5. **Compensation and logistics:** know your range and notice period before the offer conversation.

Tell me who the next interviewer is and the format, and I can tailor the prep. Want to run a commission-debt mock next, or build your story bank?

**You:** now i have 4th and final technical round which a principal analyst will take - it should be around sql - how to use it and solve business problems using it

**Claude:** **SQL round prep (Principal Analyst)**

Expect business-framed questions: they state a problem, you clarify the schema, write the query, and explain the result. They grade the thinking more than the syntax.

## Topics to be fluent in
| Topic | Why it shows up |
|---|---|
| Joins (inner/left), fan-out and duplicate traps | Policies × payments × agents inflate counts |
| `GROUP BY`, `HAVING`, `COUNT(DISTINCT)` | Funnel and agency rollups |
| Window functions: `ROW_NUMBER`, `RANK`, `LAG/LEAD`, running `SUM`, `NTILE` | First app per agent, time between steps, Pareto |
| CTEs | Readable multi-step logic |
| Cohort and retention queries | Aha moment, persistency |
| Conditional aggregation (`SUM(CASE WHEN ...)`) | Funnel conversion, lapse rates |
| Date math (`DATE_TRUNC`, `DATEDIFF`) | Chargeback windows, time-to-first-app |
| NULL handling, `COALESCE` | Left-join gaps |
| Dedup and data-quality checks | They ask "how do you validate this?" |

## Likely problems and patterns

**1. Funnel conversion by step**
```sql
SELECT channel,
  COUNT(DISTINCT quote_id) quotes,
  COUNT(DISTINCT CASE WHEN app_id IS NOT NULL THEN quote_id END) apps,
  COUNT(DISTINCT CASE WHEN issued_at IS NOT NULL THEN quote_id END) issued
FROM quotes q LEFT JOIN applications a USING (quote_id)
GROUP BY 1;
```

**2. Aha moment: retained vs. churned by early action**
```sql
WITH early AS (
  SELECT a.agent_id,
    COUNT(*) FILTER (WHERE ap.submitted_at <= a.signup_at + INTERVAL '21 day') apps_21d
  FROM agents a LEFT JOIN applications ap USING (agent_id)
  GROUP BY 1
)
SELECT LEAST(apps_21d,3) bucket, COUNT(*) agents,
  AVG(CASE WHEN active_at_180d THEN 1 ELSE 0 END) retention
FROM early JOIN agent_status USING (agent_id)
GROUP BY 1 ORDER BY 1;
```

**3. Commission debt concentration (Pareto)**
```sql
WITH d AS (
  SELECT agency_id, SUM(debt_balance) debt FROM commission_ledger GROUP BY 1
), r AS (
  SELECT *, SUM(debt) OVER (ORDER BY debt DESC) / SUM(debt) OVER () cum_share
  FROM d
)
SELECT * FROM r WHERE cum_share <= 0.8;
```

**4. Cohort retention (month N)**
`DATE_TRUNC('month', signup_at)` as cohort, `DATEDIFF(month, cohort, activity_month)` as age, `COUNT(DISTINCT agent_id)` divided by cohort size.

**5. Early lapse rate by agency within the chargeback window**
Conditional aggregation: `AVG(CASE WHEN lapsed_at < issued_at + INTERVAL '12 month' THEN 1 ELSE 0 END)`. Add a minimum-volume `HAVING` and mention confidence intervals for small agencies.

**6. Other patterns to rehearse**
- First/latest event per user: `ROW_NUMBER() OVER (PARTITION BY agent_id ORDER BY ts)`.
- Time between funnel steps: `LEAD(ts) - ts`.
- Top N per group: `RANK()` in a CTE, then filter.
- Month-over-month growth: `LAG()`.
- Sessionization or gaps: `LAG` with a threshold flag.

## How to run each question
1. **Clarify:** grain of each table, primary keys, time zone, what counts as "active," and how late-arriving data is handled.
2. **State the approach** in one line before typing.
3. **Write the query in CTEs,** one idea per CTE.
4. **Sanity check aloud:** row counts after joins, a duplicate check, and NULLs.
5. **Interpret:** the number, the caveat (correlation, small sample), and the business action.
6. **Offer optimization:** filter early, avoid `SELECT *`, partition and index, and pre-aggregate in a data model for dashboards.

## Traps they test
- **Join fan-out:** a one-to-many join before `SUM` double-counts. Aggregate first, then join.
- **`COUNT(*)` vs. `COUNT(DISTINCT)`.**
- **Filtering a left-joined table in `WHERE`** turns it into an inner join. Put the condition in `ON`.
- **Denominators:** a cohort's rate should divide by all cohort members, not only those with activity.
- **Time-window leakage:** the feature window must end before the outcome window.

## JD tie-ins to mention
- Reusable business logic and metric definitions (dbt or views) for the self-serve bullet.
- Data tests (uniqueness, not-null, freshness) and peer code review.
- GenAI: text-to-SQL for analysts, with a schema-aware prompt and a validation step.

## Next
Tell me your SQL dialect if you know it (Snowflake, BigQuery, Postgres). I can run a live mock: I give a schema and a question, you write the query, and I review it for correctness and edge cases. Start with commission debt or the aha-moment cohort?

**You:** i work on hive sql, yeah lets do questions

**Claude:** **Mock SQL Q1: aha moment (Hive SQL)**

**Schema**
- `agents(agent_id, agency_id, signup_date, state)`: one row per agent
- `applications(app_id, agent_id, submitted_date, product, premium, status)`: one row per app; status ∈ submitted / approved / declined / issued
- `agent_activity(agent_id, activity_month)`: one row per agent per month they logged in or submitted an app

**Question:** For agents who signed up in 2025, find the share who were still active in months 4-6 after signup, split by how many apps they submitted in their first 21 days (0, 1, 2, 3+). Return bucket, agents, retained agents, retention rate.

**Rules**
- Write the query in CTEs, one idea per CTE.
- Before you type, state your definition of "active in months 4-6" and the denominator.
- After the query, give two sanity checks and one caveat on interpreting the result.

Hive notes: use `datediff(end, start)`, `add_months`, `date_add`, `trunc(date,'MM')`, and `count(distinct ...)`. No `FILTER` clause, so use `CASE WHEN`.

**Your turn.** Post your definitions and query. I'll review for correctness, join traps, and edge cases, then give a model answer and the next question.

**You:** answer to Q1 - how many of them are still active 4-6 months after signup, i have considred they should be active in each of month 4,5,6 post signup. one issue with query would be i am extracting month and using it to subtract, would need a bettter way

```sql
with agents_signedup_2025 as
(select distinct agent_id, month(signup_date) as mon_signup from agents where signup_date between '2025-01-01' and '2025-12-31'
)
,

--active in 4-6 months - active in each of 4-6 month after signup --
activity_month as
(select agent_id, activity_month from agent_activity
)
,
joined_date as

(select a.agent_id, a.activity_month, b.signup_month from
activity_month a
inner join
agents_signedup_2025
on a.agent_id = b.agent_id
)
,
month_diff as
(select agent_id, activity_month- signup_month as diff_month
from joined_date)
,
grouped_data as

(select agent_id , diff_month from month_diff where diff_month between 4 and 6)
,
select agent_id, sum(diff_month) from grouped_data
group by agent_id
having  sum(diff_month)  = 15
```

**Claude:** **Verdict:** the query won't run and doesn't answer the question. Your definition is fine; fix the execution.

**Bugs**
1. Aliases: `agents_signedup_2025` has no alias `b`, and it selects `mon_signup`, not `signup_month`.
2. Trailing comma before the final `select`.
3. `month()` / `activity_month - signup_month` breaks across years (Dec 2025 signup, active Apr 2026 → 4-12 = -8). Use month-start dates and `months_between`.
4. `sum(diff_month) = 15` is fragile: 4+5+6 = 15, but also 3 × 5 = 15. Use `count(distinct diff_month) = 3`.
5. The 21-day app buckets and final retention table are missing. The output is per agent, not per bucket.
6. Denominator: it must be all 2025 signups, including agents with zero activity or zero apps. An inner join drops them.

**Model answer (Hive)**

Definition: active = has an activity row in each of months 4, 5 and 6 after signup month. Denominator = all 2025 signups.

```sql
WITH s AS (
  SELECT agent_id, signup_date, trunc(signup_date,'MM') AS signup_m
  FROM agents
  WHERE signup_date BETWEEN '2025-01-01' AND '2025-12-31'
),
early AS (  -- apps in first 21 days; left join keeps 0-app agents
  SELECT s.agent_id,
         COUNT(DISTINCT a.app_id) AS apps_21d
  FROM s
  LEFT JOIN applications a
    ON a.agent_id = s.agent_id
   AND datediff(a.submitted_date, s.signup_date) BETWEEN 0 AND 20
  GROUP BY s.agent_id
),
act AS (  -- one row per agent per month 4-6
  SELECT s.agent_id,
         CAST(months_between(trunc(ag.activity_month,'MM'), s.signup_m) AS INT) AS m
  FROM s
  JOIN agent_activity ag ON ag.agent_id = s.agent_id
),
ret AS (
  SELECT agent_id
  FROM act
  WHERE m BETWEEN 4 AND 6
  GROUP BY agent_id
  HAVING COUNT(DISTINCT m) = 3
)
SELECT CASE WHEN e.apps_21d >= 3 THEN '3+' ELSE CAST(e.apps_21d AS STRING) END AS bucket,
       COUNT(*) AS agents,
       COUNT(r.agent_id) AS retained,
       ROUND(COUNT(r.agent_id) / COUNT(*), 3) AS retention_rate
FROM early e
LEFT JOIN ret r ON r.agent_id = e.agent_id
GROUP BY CASE WHEN e.apps_21d >= 3 THEN '3+' ELSE CAST(e.apps_21d AS STRING) END
ORDER BY bucket;
```

Why it works: the `early` CTE aggregates apps before joining, so there is no fan-out. Left joins keep zero-app and zero-activity agents in the denominator. `months_between` on month-start dates avoids the year-boundary bug.

**Sanity checks**
- `SUM(agents)` across buckets = count of 2025 signups.
- `retained <= agents` in every bucket, and no agent appears twice in `early`.

**Caveats**
- Right-censoring: agents signed up after ~June 2025 haven't reached month 6 yet. Restrict to signups ≤ 6 months before today, or the late cohorts look falsely churned.
- Correlation, not causation: motivated agents both submit early and stay. Validate with an onboarding nudge experiment.
- "Active in all of months 4, 5, 6" is strict. Say you'd also test "active in any of 4-6" and compare.

**Say aloud:** "I aggregate first, then join, and keep the full cohort as the denominator."

**Q2 (Commission debt, Hive)**

Schema:
- `commission_ledger(agency_id, agent_id, policy_id, advance_amount, advance_date, chargeback_amount, recovered_amount)`
- `policies(policy_id, issue_date, lapse_date, product)`

Question: for each agency, compute outstanding debt = chargeback − recovered, early-lapse rate (lapsed within 12 months of issue), and the cumulative share of total debt. Return only agencies that make up the top 80% of debt, with min 20 policies.

State your definitions first, then write the query.

**You:** what does this do
trunc(signup_date,'MM') AS signup_m

**Claude:** Truncates the date to the first day of its month.

`trunc('2025-03-17','MM')` → `2025-03-01`

Used here so `months_between(activity_month_start, signup_m)` returns clean whole months, regardless of the day of signup or the day format in `activity_month`. It also avoids the year-boundary bug from `month()` subtraction.

**You:** months_between(activity_month_start, signup_m)
does this give months as int?

**Claude:** No. In Hive, `months_between` returns a **double** (e.g. `4.0`, or `3.67` if the days differ).

When both dates are month-start (day 1), the result is a whole number as a double (`4.0`), so `CAST(... AS INT)` is safe. That's why I truncated both to `'MM'` first and then cast.

Without truncation, `months_between('2025-07-20','2025-03-17')` ≈ `4.1`, and the cast would floor it, which can misassign months.

**You:** for Q1 - i havew found retention rate like this

```sql
---how many of them are still active in months 4-6

with agents_signedup_2025 as
(select distinct agent_id, trunc(signup_date,'MM') as mon_signup from agents where signup_date between '2025-01-01' and '2025-12-31'
)
,

--active in 4-6 months - active in each of 4-6 month after signup --
activity_month as
(select agent_id, trunc(activity_month,'MM') as activity_month from agent_activity
)
,
joined_date as

(select a.agent_id, a.activity_month, b.mon_signup from
activity_month a
left join
agents_signedup_2025 b
on a.agent_id = b.agent_id
)
,
month_diff as
(select agent_id, cast(months_between(activity_month,signup_month) as int) as diff_month
from joined_date)
,
flags as
(select agent_id,
max(case when diff_month = 4 then 1 else 0 end) as 4_m_flag,
max(case when diff_month = 5 then 1 else 0 end) as 5_m_flag,
max(case when diff_month = 6 then 1 else 0 end) as 6_m_flag
from
month_diff
group by agent_id
)
,
final as(
select count(distinct agent_id) as total_2025_signups,
count(distinct case when4_m_flag = 1 and 5_m_flag=1 and 6_m_flag=1 then agent_id else null end)  as  active_4_6mon from flags
),

select active_4_6mon/total_2025_signups from final
```

**Claude:** **Verdict:** the logic is closer (flags are cleaner than the sum trick), but it won't run, and the denominator is still wrong.

**Bugs**
1. `joined_date`: `left join` from `activity_month` to signups keeps agents who aren't 2025 signups, so `mon_signup` is NULL. Those agents then inflate `total_2025_signups`. Start from signups and left join activity, or use an inner join.
2. `month_diff` selects `signup_month`, but the column is `mon_signup`.
3. Column names starting with a digit (`4_m_flag`) fail in Hive. Use `m4_flag`.
4. `when4_m_flag` is missing a space.
5. Trailing comma after `final as (...)`.
6. Denominator: agents with no activity rows never appear in `flags`, so they're excluded from the total. Take the denominator from the signup CTE.
7. Still missing the 21-day app buckets, so no split by 0/1/2/3+.

**Fix (replaces everything from `joined_date` down; keeps your flag idea)**
```sql
act AS (
  SELECT s.agent_id,
         CAST(months_between(trunc(ag.activity_month,'MM'), s.mon_signup) AS INT) AS diff_month
  FROM agents_signedup_2025 s
  JOIN agent_activity ag ON ag.agent_id = s.agent_id
),
flags AS (
  SELECT agent_id,
         MAX(CASE WHEN diff_month = 4 THEN 1 ELSE 0 END) AS m4_flag,
         MAX(CASE WHEN diff_month = 5 THEN 1 ELSE 0 END) AS m5_flag,
         MAX(CASE WHEN diff_month = 6 THEN 1 ELSE 0 END) AS m6_flag
  FROM act
  GROUP BY agent_id
)
SELECT COUNT(*) AS total_2025_signups,
       SUM(CASE WHEN f.m4_flag + f.m5_flag + f.m6_flag = 3 THEN 1 ELSE 0 END) AS active_4_6,
       SUM(CASE WHEN f.m4_flag + f.m5_flag + f.m6_flag = 3 THEN 1 ELSE 0 END) / COUNT(*) AS retention
FROM agents_signedup_2025 s
LEFT JOIN flags f ON f.agent_id = s.agent_id;
```
`COUNT(*)` over the signups CTE gives the full cohort; the left join keeps zero-activity agents (flags NULL → not counted as retained).

**To finish Q1:** add the `early` CTE from my model answer (left join applications, `datediff` between 0 and 20, `COUNT(DISTINCT app_id)`), join it to this, and `GROUP BY` the bucket.

Then Q2 (commission debt) when ready.

**You:**
```sql
with agents_signedup_2025 as
(select distinct agent_id, trunc(signup_date,'MM') as mon_signup from agents where signup_date between '2025-01-01' and '2025-12-31'
)
,

--active in 4-6 months - active in each of 4-6 month after signup --
activity_month as
(select agent_id, trunc(activity_month,'MM') as activity_month from agent_activity
)
,
joined_date as

(select a.agent_id, b.activity_month, a.mon_signup from
agents_signedup_2025 a
left join
activity_month b
on a.agent_id = b.agent_id
)
,
month_diff as
(select agent_id, cast(months_between(activity_month,mon_signup) as int) as diff_month
from joined_date)
,
flags as
(select agent_id,
max(case when diff_month = 4 then 1 else 0 end) as 4_m_flag,
max(case when diff_month = 5 then 1 else 0 end) as 5_m_flag,
max(case when diff_month = 6 then 1 else 0 end) as 6_m_flag
from
month_diff
group by agent_id
)
,
final as(
select count(distinct agent_id) as total_2025_signups,
count(distinct case when 4_m_flag = 1 and 5_m_flag=1 and 6_m_flag=1 then agent_id else null end)  as  active_4_6mon from flags
)

select active_4_6mon/total_2025_signups from final
```

**Claude:** **Verdict:** the logic is now correct. The denominator is fixed (left join from signups, so zero-activity agents stay in). One bug left, plus the missing bucket split.

**Bug**
- `4_m_flag`, `5_m_flag`, `6_m_flag`: Hive rejects identifiers starting with a digit. Rename to `m4_flag`, `m5_flag`, `m6_flag` (in `flags` and in `final`).

**Minor**
- `activity_month` CTE name shadows the column inside it. Rename the CTE to `act_m`.
- Alias the last column: `... AS retention`.
- Nothing wrong with `NULL` diff_month for zero-activity agents: `months_between(NULL, ...)` gives NULL, so all flags are 0. Correct.

**Still missing: the 21-day bucket split.** Add this CTE and swap the final select:

```sql
early AS (
  SELECT s.agent_id,
         COUNT(DISTINCT a.app_id) AS apps_21d
  FROM agents_signedup_2025 s
  LEFT JOIN applications a
    ON a.agent_id = s.agent_id
   AND datediff(a.submitted_date, s.signup_date) BETWEEN 0 AND 20
  GROUP BY s.agent_id
)
```
`agents_signedup_2025` must also carry the raw `signup_date` (add it to the select; `distinct` is fine).

```sql
SELECT CASE WHEN e.apps_21d >= 3 THEN '3+' ELSE CAST(e.apps_21d AS STRING) END AS bucket,
       COUNT(*) AS agents,
       SUM(CASE WHEN f.m4_flag + f.m5_flag + f.m6_flag = 3 THEN 1 ELSE 0 END) AS retained,
       SUM(CASE WHEN f.m4_flag + f.m5_flag + f.m6_flag = 3 THEN 1 ELSE 0 END) / COUNT(*) AS retention_rate
FROM early e
LEFT JOIN flags f ON f.agent_id = e.agent_id
GROUP BY CASE WHEN e.apps_21d >= 3 THEN '3+' ELSE CAST(e.apps_21d AS STRING) END
ORDER BY bucket;
```

Remember the caveat: restrict to signups at least 6 months old, or late 2025 cohorts look falsely churned.

**Q2 (commission debt, Hive)** when ready. Same schema as before: `commission_ledger`, `policies`. Compute per agency: outstanding debt (chargeback − recovered), early-lapse rate (lapse within 12 months of issue), cumulative share of total debt; return agencies in the top 80% of debt with at least 20 policies. State definitions first.

**You:**
```sql
with agency_policy_debt as
(select agency_id,policy_id, chargeback_amount-recovered_amount as outstanding_debt
from commission_ledger
group by agency_id, policy_id
)
,
early_lapse_agency_flag as
(select a.agency_id,a.policy_id, a.outstanding_debt ,
case when b.policy_id is null then 0 else 1 end as  lapsed_policy_flag
from agency_debt a
left join
(select distinct policy_id from policies
where (cast(trunc(lapse_date,'MM')as int), cast(trunc(issue_date,'MM') as int) <=12)
) b
on a.policy_id = b.policy_id

)
,
final_agg as
(select agency_id, count(distinct policy_id) as tot_policies,
sum(outstanding_debt) as tot_outstanding_debt,
sum(lapsed_policy_flag)/count(distinct policy_id) as early_lapse_rate
from early_lapse_agency_flag
group by agency_id
)
,
cumu_debt as
(select agency_id, tot_policies, tot_outstanding_debt,
early_lapse_rate,
sum(tot_outstanding_debt) over(order by tot_outstanding_debt desc) as total_overall_debt
from final_agg
)
,
agg as (
select agency_id, tot_policies, tot_outstanding_debt,
tot_outstanding_debt/total_overall_debt as per_debt

from cumu_debt
),
agg_2 as
(select agency_id, tot_policies, tot_outstanding_debt,
sum(per_debt) over(agency_id order by tot_outstanding_debt desc) as per_cumu_debt
from agg
)
select agency_id
from agg_2
where tot_policies >=20
and per_cumu_debt <=0.8
```

**Claude:** **Verdict:** the structure is right (policy-level debt → flag → agency agg → cumulative share), but it won't run and the Pareto step is wrong.

**Bugs**
1. `agency_policy_debt` is defined, but the next CTE reads `agency_debt`. Also `GROUP BY` there has no aggregate, so use `SUM(...)` or drop the group by.
2. Early-lapse filter: `cast(trunc(...) as int)` on a date returns NULL, and the tuple `(a, b <= 12)` is invalid. Use `months_between(lapse_date, issue_date) <= 12` (or `datediff(lapse_date, issue_date) <= 365`). Handle `lapse_date IS NULL` (not lapsed).
3. Policy-level debt can be NULL if `recovered_amount` is NULL. Use `COALESCE(recovered_amount, 0)`.
4. `cumu_debt`: `SUM(...) OVER (ORDER BY debt DESC)` is a running sum, not the total. For the denominator use `SUM(...) OVER ()`.
5. `agg_2`: `OVER (agency_id ORDER BY ...)` is invalid; it should be `OVER (ORDER BY tot_outstanding_debt DESC)`. Also it sums percentages of a mis-defined total.
6. **Filter order:** the `tot_policies >= 20` filter must be applied **before** the cumulative share, otherwise the 80% is computed over the wrong population (or small agencies break the cumulative).
7. Ties: add a tiebreaker (`agency_id`) in the window `ORDER BY` so cumulative is deterministic.
8. Output is missing `early_lapse_rate`, `tot_outstanding_debt`, and `per_cumu_debt`.
9. Negative debt (over-recovery) can distort the Pareto; decide whether to floor at 0. State your choice.

**Definitions**
- Outstanding debt per policy = `chargeback_amount − recovered_amount` (NULL → 0), floored at 0.
- Early lapse = `lapse_date` not null and within 12 months of `issue_date`.
- Denominator for share = total debt across qualifying agencies (≥ 20 policies).

**Model answer (Hive)**
```sql
WITH pol AS (  -- one row per policy; aggregate first to avoid fan-out
  SELECT l.agency_id,
         l.policy_id,
         GREATEST(SUM(COALESCE(l.chargeback_amount,0) - COALESCE(l.recovered_amount,0)), 0) AS debt,
         MAX(CASE WHEN p.lapse_date IS NOT NULL
                   AND months_between(p.lapse_date, p.issue_date) <= 12
                  THEN 1 ELSE 0 END) AS early_lapse
  FROM commission_ledger l
  JOIN policies p ON p.policy_id = l.policy_id
  GROUP BY l.agency_id, l.policy_id
),
agy AS (
  SELECT agency_id,
         COUNT(*) AS policies,
         SUM(debt) AS debt,
         SUM(early_lapse) / COUNT(*) AS early_lapse_rate
  FROM pol
  GROUP BY agency_id
  HAVING COUNT(*) >= 20
),
cum AS (
  SELECT agency_id, policies, debt, early_lapse_rate,
         SUM(debt) OVER (ORDER BY debt DESC, agency_id
                         ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
           / SUM(debt) OVER () AS cum_share
  FROM agy
)
SELECT *
FROM cum
WHERE cum_share <= 0.8
ORDER BY debt DESC;
```

**Subtle point:** `cum_share <= 0.8` drops the agency that crosses 80%. To include it, filter on `cum_share - debt/total <= 0.8` (share *before* this agency). Mention this aloud.

**Sanity checks**
- `SUM(policies)` equals the distinct policy count for qualifying agencies (no fan-out).
- Cumulative share is monotonic and ends at 1.0 before filtering.

**Caveats**
- Early lapse rate on young policies is right-censored. Restrict to policies issued ≥ 12 months ago.
- Small agencies give noisy rates; show counts alongside.

**Follow-up (Q3, window functions):** `applications(app_id, agent_id, submitted_date, status)`. For each agent, return the days between their first and second submitted app, and the 7-day rolling count of apps. Define what happens to agents with only one app.

**You:** above . is tis correct?
cum AS ( SELECT agency_id, policies, debt, early_lapse_rate, SUM(debt) OVER (ORDER BY debt DESC, agency_id ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) / SUM(debt) OVER () AS cum_share

**Claude:** Yes, it's correct.

- `SUM(debt) OVER (ORDER BY debt DESC, agency_id ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)` is the running total, largest debt first. `agency_id` breaks ties so the order is deterministic.
- `SUM(debt) OVER ()` is the grand total across all qualifying agencies.
- Dividing the two gives the cumulative share.

**Why I wrote the explicit `ROWS` frame:** with only `ORDER BY`, the default frame is `RANGE ... CURRENT ROW`, which treats tied rows as peers and gives them the same running total. The tiebreaker already prevents ties, but `ROWS` makes the intent explicit.

**Check:** it must be the last select item before `FROM agy`, with a comma after the previous column (you have that). Cumulative share should be monotonic and end at 1.0.

**You:** for Q3, this is how i am thinking ,currently stuck on the last cte and how to filter correctly to get only value for datediff

```sql
with submited_status as
(select app_id, agent_id, submitted_date
from applications
where status in ('submitted')
order by agent_id, submitted_date
)
,

agg as
( select agent_id, submitted_date,
datediff(submitted_date, lag(submitted_date)) as date_diff_apps,
count(distinct app_id) over(partition by agent_id order by submitted_date  rows between -6 and current row)
as rolling7d_apps

from submited_status
)

select agent_id, date_diff_apps , rolling7d_apps
from agg
where date_diff_apps is not null and
```

**Claude:** **Verdict:** right idea (lag + rolling window), but several fixes. Your stuck point: the filter is on the **row number**, not on `date_diff_apps`.

**Bugs**
1. `lag(submitted_date)` needs `OVER (PARTITION BY agent_id ORDER BY submitted_date)`, otherwise it's invalid.
2. `ROWS BETWEEN -6 ...` is invalid. Use `6 PRECEDING`. Also, rows ≠ days: 6 preceding rows is not a 7-day window. Use a date-based window (below).
3. `COUNT(DISTINCT ...) OVER` is not supported in Hive windows. `app_id` is unique per row, so use `COUNT(*)`.
4. `status IN ('submitted')` drops apps that later became approved, declined or issued. Status is the current state, so drop the filter (or define "submitted" explicitly).
5. `ORDER BY` inside a CTE is pointless. Remove it.
6. Trailing `AND` in the final WHERE.
7. Same-day apps tie in the ordering. Add `app_id` as a tiebreaker.

**Fix for "only the first-to-second gap":** `lag` gives the gap to the previous app for every row. You want just the 2nd app's row, so add `ROW_NUMBER()` and filter `rn = 2`.

**Rolling 7-day count (date-based):** a `RANGE` frame on dates is unreliable in Hive. Use a self-join on daily counts:

```sql
WITH daily AS (  -- one row per agent per day
  SELECT agent_id, submitted_date, COUNT(*) AS apps
  FROM applications
  GROUP BY agent_id, submitted_date
),
roll AS (
  SELECT a.agent_id, a.submitted_date,
         SUM(b.apps) AS rolling_7d_apps
  FROM daily a
  JOIN daily b
    ON b.agent_id = a.agent_id
   AND b.submitted_date BETWEEN date_sub(a.submitted_date, 6) AND a.submitted_date
  GROUP BY a.agent_id, a.submitted_date
),
ranked AS (
  SELECT agent_id, app_id, submitted_date,
         ROW_NUMBER() OVER (PARTITION BY agent_id ORDER BY submitted_date, app_id) AS rn,
         LAG(submitted_date) OVER (PARTITION BY agent_id ORDER BY submitted_date, app_id) AS prev_date
  FROM applications
),
gap AS (
  SELECT agent_id,
         datediff(submitted_date, prev_date) AS days_first_to_second
  FROM ranked
  WHERE rn = 2
)
SELECT a.agent_id,
       g.days_first_to_second,      -- NULL if only one app
       r.submitted_date,
       r.rolling_7d_apps
FROM (SELECT DISTINCT agent_id FROM applications) a
LEFT JOIN gap g  ON g.agent_id = a.agent_id
LEFT JOIN roll r ON r.agent_id = a.agent_id;
```

**Definitions to state**
- Gap = days between the 1st and 2nd app by `submitted_date` (same-day = 0).
- Agents with one app: gap is NULL (kept via left join, not dropped).
- Rolling window = the current day plus the 6 prior days.

**Simpler alternative (if the interviewer allows row-based):** `COUNT(*) OVER (PARTITION BY agent_id ORDER BY submitted_date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW)` counts the last 7 *apps*, not 7 days. Say that distinction aloud.

**Sanity checks**
- One row per agent in `gap` (`rn = 2` is unique).
- `rolling_7d_apps` ≥ that day's own count.

**Next (Q4, funnel + fan-out trap):** `quotes(quote_id, agent_id, quote_date)`, `applications(app_id, quote_id, submitted_date)`, `payments(payment_id, app_id, amount, paid_date)`. Compute quote → app → first-paid conversion by month, with one app possibly having many payments. Want to try it?

**You:** i have another couple case study round at Ethos life, one with staff PM and one with analytics manager. pls help me prepare

**Claude:** ## Staff PM round: product thinking with data

**Expect:** product sense and metrics for the agent platform, experiment design, prioritization, tradeoffs, and how you influence roadmap.

**Likely prompts**
| Prompt | Core answer |
|---|---|
| "Define success metrics for a new agent-facing feature (e.g., instant-decision quoting)" | Adoption, depth, task success, time-to-complete, downstream apps/issued policies. Counter-metric: decline rate, lapse rate. |
| "Agent activation is low. What do you do?" | Funnel, aha-moment analysis, friction vs. motivation, nudge experiment. |
| "How would you prioritize 5 feature requests?" | Impact × confidence ÷ effort, tied to one north star (e.g., issued premium per active agent). |
| "How do you know a feature worked?" | A/B at agent or agency level (spillover risk within an agency), pre-set success and guardrail metrics, sample size, novelty effect. |
| "Grow annuities D2C" | Funnel, biggest drop, hypothesis, test. Longer consideration cycle, suitability step. |
| "Speed vs. risk" | Faster advances or looser underwriting grow volume but raise commission debt. Quantify both sides. |

**How to show up**
- Frame every answer as: goal → user → metric tree → hypothesis → test → tradeoff → decision.
- Take a position. Staff PMs want a recommendation, not a list.
- Use your Playo-style reasoning: marketplace supply (agents), fences, cannibalization guardrails.
- Know the experiment traps: agency-level randomization, small samples, peeking, survivorship, and correlation vs. causation.
- Ask how analytics and product work together. Offer to define events and metrics *before* sprint start.

**Questions to ask them:** how metrics get defined before launches, biggest agent drop-off today, how roadmap tradeoffs between growth and risk get made.

## Analytics manager round: leadership, judgment, stakeholders

**Expect:** behavioral plus a case on ambiguity, prioritization, and how you run analytics.

**Likely prompts**
- "Leadership asks for a metric that's ambiguous (e.g., 'active agent'). What do you do?" → Clarify decision it supports, propose definition, document it, put it in a governed model/view, align stakeholders.
- "Two stakeholders want conflicting priorities." → Tie to business impact, make tradeoff explicit, escalate with a recommendation.
- "A dashboard number looks wrong." → Check definition, data freshness, joins/fan-out, upstream changes, then communicate early.
- "How do you mentor juniors across time zones?" → Code reviews with checklist, SQL standards, pairing, clear written specs, growth plan.
- "How would you use GenAI in analytics?" → Text-to-SQL with schema context and validation, auto-written weekly insights, anomaly narration. Mention guardrails: tested definitions, human review, no PII.
- "Walk through your biggest impact project." → Problem, your role, approach, quantified result, what you'd change.
- "Tell me about a failure or a disagreement."

**Story bank (prepare 5, each ~2 min):** high-impact project, pushback on a stakeholder, a mistake in analysis you caught or caused, mentoring a junior, automation or GenAI win. Use situation → action → quantified result → lesson.

**Signals they look for:** ownership, clear communication to non-technical leaders, prioritization, data quality discipline, and "so what" recommendations.

## Next step

Which should we practice first: a **Staff PM case** (e.g., define the aha moment and the feature metrics for the agent platform) or **behavioral/stakeholder questions** for the analytics manager? Also, do you know whether either round is live case, presentation, or discussion?

**You:** both of them are live today in a couple of hours

**Claude:** **Plan for the next 2 hours**

| Time | Do |
|---|---|
| 30 min | Staff PM: run 1 mock case with me |
| 30 min | Analytics manager: draft 4 stories (below) |
| 20 min | Revise your "Why Ethos" and questions to ask |
| 20 min | Skim the cheat sheets below |
| Rest | Break, water, setup check |

## Staff PM: one-page cheat sheet

**Universal answer skeleton:** Goal → user → metric tree → hypothesis → test → tradeoff → recommendation.

- **North star:** issued premium per active agent (or 6-month active agents). Inputs: activation, apps per agent, placement rate, persistency.
- **Feature success:** adoption, depth, task success, time-to-complete, downstream apps. Counter-metric: decline rate, early lapse, commission debt.
- **Experiments:** randomize at agency level (spillover within agencies). Fix the metric, guardrails and sample size before launch. Watch for peeking and novelty effects.
- **Prioritization:** impact × confidence ÷ effort, tied to the north star. Take a position.
- **Growth vs. risk:** faster advances or looser underwriting raise volume but also debt. Show both sides in numbers.
- **Marketplace parallel:** agents are supply. Cite your Playo-style reasoning: fences, cannibalization guardrails, leakage.
- **Offer:** "Analytics should define events and metrics before sprint start."

## Analytics manager: cheat sheet

**4 stories (situation → action → quantified result → lesson):**
1. Biggest impact project (your CV headline).
2. Pushback on a stakeholder or an ambiguous metric.
3. A mistake you caught or caused, and the process fix.
4. Mentoring a junior, or a GenAI/automation win.

**Quick answers**
- **Ambiguous metric ("active agent"):** ask what decision it supports, propose a definition, document it, put it in a governed view, align stakeholders.
- **Conflicting priorities:** tie to business impact, state the tradeoff, recommend, escalate if needed.
- **Dashboard looks wrong:** check definition → freshness → join fan-out → upstream changes. Tell stakeholders early.
- **Mentoring across time zones:** code review checklist, SQL standards, written specs, pairing, growth plan.
- **GenAI:** text-to-SQL with schema context and validation, auto-written weekly insights, anomaly narration. Guardrails: tested definitions, human review, no PII.

**Questions to ask:** biggest agent drop-off today? How are metrics defined before launches? Biggest data gap? What does success look like at 6 months?

## Start now

Mock Staff PM case:

**"Agent activation is low. A new agent signs up but many never submit an app. How would you approach this?"**

Reply with your structure. I'll give feedback in the same format as before. Then we do a behavioral rep on your biggest project.

**You:** Goal : increase agent activation || find out why it is low rn
user : agents who join the platform to sell
metric tree :
#agents joined
agents generated quotes in 7d

**Claude:** **Feedback**

Good:
- Goal has two parts: why it's low, then how to raise it.
- Quote generation is a sensible early signal.

**Gaps**
1. **Define "activation" first.** Quote in 7 days is a leading step, not activation. Pick one: first app submitted within 14-21 days, or first policy issued within 30 days. Say why. Quote-only activation can be gamed by agents browsing.
2. **The tree stops at two nodes.** Extend it to a full funnel with times and rates:
   signup → licensed/appointed (contracted with carriers) → first login → first quote → first app → first issued policy.
   Activation = joined × P(each step). The biggest drop shows where to focus.
3. **User needs segmenting.** "Agents who sell" is too broad. Split by new-to-insurance vs. experienced, captive agency vs. independent, source (agency-referred vs. self-signup), and licensed states. Activation drivers differ sharply.
4. **No hypotheses.** Say them out loud:
   - Friction: licensing/appointment delays, a long onboarding form, unclear first step.
   - Motivation: no leads, unsure of product fit or commissions, competing platforms.
   - Capability: doesn't know how to use quoting or underwriting flows.
5. **No diagnosis plan.** Name the cuts: step-wise drop-off by segment, time-to-step, session replays or agent interviews at the biggest drop, and retained vs. churned comparison for the aha moment.
6. **No action or test.** Examples: guided first-quote checklist, onboarding call within 48 hours, pre-filled demo quote, a nudge email/SMS at day 3. Test at agency level to avoid spillover, with a pre-set success metric and guardrail (decline rate, early lapse).

**Model structure to say aloud**
- **Goal:** raise the share of new agents who submit a first app within 21 days.
- **User:** segment by experience, source, and licensing status.
- **Metric tree:** signups → contracted → first quote → first app → first issued. Counter-metric: decline rate and early lapse (quality, not just volume).
- **Hypothesis:** the biggest drop is between contracting and first quote because agents don't know the next step. I'd check that first.
- **Test:** guided onboarding vs. control, randomized by agency.
- **Tradeoff:** pushing agents to submit faster may lower application quality and raise commission debt, so I'd watch that.

**Say aloud:** "I'd define activation by an outcome that predicts retention, then find the biggest funnel drop by segment before proposing any fix."

**Follow-up for you:** The data shows 60% of agents who get contracted never run a quote. What do you do next, and how do you tell whether it's friction or lack of motivation?

**You:** do they go thru the training videos , or do any activity on the platform which suggests they are interested or motivated. if yes, then we need to make training easier, more accessible, hand hold them because intent is not the issue for these guys.
or if they never even log in again, or do any activity - then its likely a motivation issue - poor quality agent onboarding - in that case we need to check where are these agents coming from - cuts of data - agency wise, state wise, new vs experienced agents,

**Claude:** **Feedback**

Good:
- Splitting friction vs. motivation by observed behavior (training, logins) is the right diagnostic.
- Different fixes per branch: hand-holding vs. source quality.
- Cuts (agency, state, new vs. experienced) are relevant.

**Gaps**
1. **Make it a 2x2, not two branches.** Intent signal (logged in, watched training, opened quote screen) vs. outcome (no quote). Four groups:
   - Engaged, no quote: friction or capability. Fix the product and onboarding.
   - Logged in once, nothing else: unclear next step or weak intent. Test a nudge.
   - Never logged in: contracting or activation-email issue, or poor source.
   - Engaged and quoted, no app: a different problem (pricing, underwriting, no client).
2. **Size each group first.** If 45% of the 60% are "never logged in," training fixes won't matter. Prioritize by size × fixability.
3. **Name the data.** Event logs: login, training video start/completion %, quote-screen opens, quote errors, abandoned quote steps, support tickets. Add time since contracting. Intent is graded, not binary: "watched 80% of training" vs. "opened it once."
4. **Don't assume intent is fine.** Training views can be compliance-driven (required for licensing), so they don't prove motivation. Validate with a stronger signal such as a quote started, or a call.
5. **Check upstream.** Many agents may be contracted but not appointed in their states, so they cannot quote even if motivated. Check licensing, state and carrier availability before blaming motivation.
6. **Add qualitative evidence.** Interview 10 agents per group, call non-starters, and review session replays at the quote step. Data says where, interviews say why.
7. **Close the loop with a test.** Group 1: guided first-quote flow or live onboarding call, randomized by agency. Group 3: source-quality scoring and reduced acquisition spend on poor sources. Success: first app in 21 days. Guardrails: decline rate, early lapse.
8. **Source quality is also a risk lens.** Low-quality sources can mean higher commission debt later. Tie this to the Partnerships risk work.

**Say aloud:** "I'd segment non-quoters by observed intent, size each group, then match the fix to the cause: product help for engaged agents, source and onboarding quality for disengaged ones."

**Follow-up for you:** You have one sprint. Group 1 (engaged, no quote) is 25% of contracted agents, and group 3 (never logged in) is 40%. Which do you tackle first, and why?

**You:** i'l guage the fixability of each group and assess impact that could happen once fixed. so for group 1 - will check if easier onboarding guides, videos etc can help them and what would be the potential lift (say 15% fols will start generating an app in 21 days instead of 10%) - if the product fix itself is easy i would prioritise this. 
vs

**Claude:** Your message cut off at "vs", so I'll finish the comparison.

**Feedback**

Good:
- Prioritizing by fixability × impact is the right frame.
- A concrete lift assumption (10% → 15%) makes it quantifiable.

**Gaps**
1. **Convert the lift to a common unit.** Use extra activated agents per 100 contracted:
   - Group 1: 25 agents × (15% - 10%) = **+1.25 activated per 100 contracted**.
   - Group 3: 40 agents × lift. At a 2% baseline doubling to 4%, that is **+0.8**. Even if it is a bit higher, the effort and time are far greater.
2. **State the effort and time side.** Group 1 fixes (guided first-quote flow, onboarding call) fit in one sprint, and you can measure them in 2-3 weeks. Group 3 needs source scoring, acquisition changes, and contracting or email fixes, which are cross-team and slow.
3. **Group 3 has a different payoff.** It may not be an activation lift. Cutting spend on poor sources saves CAC and reduces commission-debt risk. Quantify it as the cost per contracted agent × the share of dead agents.
4. **Don't ignore group 3.** Run a cheap parallel check this sprint: source and state cut, and the contracting or activation-email funnel. If one source drives most of the dead agents, that is a quick win.
5. **Caveat on the 15%.** It is an assumption, so say how you'd validate it: a small test, or the lift seen for similar guided-onboarding changes. Use a range (+3 to +7 pts).
6. **Guardrails:** decline rate and early lapse. Pushing agents faster can hurt application quality.

**Decision to say aloud:** "Group 1 first. It has the higher expected gain per unit of effort (+1.25 vs +0.8 per 100 contracted) and ships in one sprint. In parallel, I'd run a low-cost source-quality cut on group 3, because that fix saves CAC and reduces risk."

**Follow-up for you:** The Staff PM asks, "How do you know the guided onboarding caused the lift, and not that more motivated agents opted into it?" Answer in 2-3 sentences.

**You:** we will randomise the intervention group say at an agency level and do test v control . so will check what happens in holdout vs what happens in test and test v holdout is the actual lift

**Claude:** **Feedback**

Good: randomizing at agency level, holdout comparison, and lift = test minus control. That answers the opt-in selection bias.

**Gaps**
1. **Say why it kills the bias.** Assignment is random, not agent-chosen, so motivated agents are spread across both arms. Compare everyone assigned, not just those who used the guide (intention-to-treat). Comparing only users reintroduces the bias.
2. **Agency-level randomization has a power cost.** Agents cluster within agencies, so effective sample size is closer to the number of agencies. Check the agency count, and stratify or match by size, source and experience mix. If agencies are few or one is huge, use a pre-period baseline or difference-in-differences.
3. **Pre-set before launch:** primary metric (first app within 21 days), guardrails (decline rate, early lapse), minimum detectable effect, duration, and no peeking.
4. **Check balance:** pre-period activation, agent mix and source should look similar across arms.
5. **Contamination:** agents in one agency don't share an arm, but agents who work for multiple agencies or share content can leak. Mention it.
6. **Read results with a confidence interval**, e.g. +3 to +7 pts, not a single point estimate.

**Say aloud:** "I'd randomize by agency, analyze everyone assigned (intention-to-treat), check pre-period balance, and report lift with a confidence interval against pre-set guardrails."

**Follow-up for you:** The test shows +4 pts first-app activation, but decline rate rose from 18% to 24%. Ship or not?

You have about an hour and a half left. After your answer, we do one behavioral rep for the analytics manager round: tell me your biggest impact project in 2 minutes.

**You:** how can we do AB in this kind of setup when its not a user level split. it will be either agent level or agency level or geo split. how to choose the randomisation unit - and potential caveats with this appraoch.

**Claude:** **Choosing the unit: three questions**

1. **Where does spillover happen?** If treated agents affect control agents (share tips, same agency leader, shared leads), randomize at the level that contains the spillover.
2. **Where is the treatment delivered?** If an agency manager runs the onboarding call, the agency is the unit by design.
3. **Do you have enough units for power?**

| Unit | Use when | Pros | Cons |
|---|---|---|---|
| **Agent** | Treatment is self-contained (in-app checklist, email nudge) and agents in an agency rarely interact | Most power, simplest | Spillover inside agencies, and agents see each other's screens or hear about it |
| **Agency** | Treatment is shared (agency-level training, manager call, commission change) or spillover is likely | Clean from spillover | Few units, high variance, large agencies dominate |
| **Geo/state** | Market-level effects (pricing, carrier availability, ads) | Handles ad and brand effects | Very few units, regional differences, regulation differs by state |
| **Time (switchback)** | Platform-wide change that can't be split | Works with one population | Carryover and seasonality |

**Default for the guided-onboarding case:** agent-level if it is an in-app flow, but randomize at agency level if managers or agency leaders get involved.

**Caveats and fixes**

1. **Power loss from clustering.** Agents in the same agency behave alike, so effective sample size is closer to the number of agencies. The design effect is 1 + (m-1)×ICC, where m is agents per agency. Compute the ICC from history and size the test on agencies.
2. **Few or lopsided units.** One mega-agency can swing the result. Stratify or block by size, source, experience mix and baseline activation, then randomize within blocks. Or exclude or separately handle mega-agencies.
3. **Imbalance by chance.** With 40 agencies, a simple coin flip can give uneven arms. Use stratified or matched-pair randomization, and check pre-period balance.
4. **Variance reduction.** Use CUPED (adjust by pre-period metric) or difference-in-differences. Both shrink the confidence interval a lot when units are few.
5. **Analysis must match the design.** Use cluster-robust standard errors, or aggregate to the agency level. Treating agents as independent gives falsely small p-values.
6. **Contamination.** Agents working with multiple agencies, shared WhatsApp groups, or managers who copy the treatment. Mention it and measure it where possible.
7. **New agents arrive over time.** Define the cohort by signup date after launch, and assign by agency so late joiners inherit their agency's arm.
8. **Geo-specific:** use synthetic control or matched geos, and pre-period trends, because few regions means large noise.
9. **Compare everyone assigned (intention-to-treat),** not just those who used the feature.

**Say aloud:** "I'd pick the unit by where spillover lives. For an in-app flow I'd randomize at the agent level, but if managers are involved I'd randomize by agency, stratified by size and baseline, size the test on the number of agencies using the ICC, and use cluster-robust errors with CUPED."

**Follow-up for you (still pending):** the test shows +4 pts first-app activation, but decline rate rose from 18% to 24%. Ship or not?

**You:** what is decline rate here?

**Claude:** **Decline rate** = share of submitted applications that the carrier or underwriting rejects.

`declined apps / apps with a decision` (or / submitted apps, so state your denominator).

Example: 100 apps decided, 24 declined → 24%.

**Why it's the guardrail here:** guided onboarding pushes new agents to submit faster. If they submit poor-fit or unprepared apps (wrong product, health issues not pre-screened), declines rise. That means wasted underwriting cost, applicants who get frustrated, and agents who may churn. It's an application-quality signal.

**Definition choices to state**
- Denominator: decided apps, so pending apps don't dilute it.
- Cohort: apps from agents in the test, by signup date, within the same window for both arms.
- Compare test vs. control, not 18% vs. 24% across time (seasonality).

**On the follow-up:** raw 18% → 24% is across arms, so compute the cost. Extra apps are +4 pts activation, but more declines mean no policy and no revenue. Judge on the downstream metric: **issued policies per contracted agent**. If issued policies per agent still rise in test vs. control, ship (with pre-screening prompts to bring declines down). If they don't, iterate first.

**You:** before the start of experiment - how do we understand how long to run - what is MDE, what alpha and power to use, is there any tool which helps with this? what do we input vs what is the output

**Claude:** **MDE** = Minimum Detectable Effect: the smallest true lift your test can reliably detect. Smaller MDE needs more sample.

**Alpha and power (defaults)**
- **Alpha = 0.05:** 5% chance of a false positive (calling a lift that isn't real).
- **Power = 0.8:** 80% chance of detecting the lift if it is real (20% false-negative risk).
- Use alpha 0.01 or power 0.9 when the decision is costly (e.g., a risk change).

**Inputs → output**

| Input | Example |
|---|---|
| Baseline rate | 10% first-app in 21 days |
| MDE | +3 pts (10% → 13%), or relative +30%. Set it from the smallest lift worth shipping given effort and cost. |
| Alpha | 0.05 (two-sided) |
| Power | 0.8 |
| Split | 50/50 |
| Clustering (if agency-level) | ICC and avg agents per agency |
| **Output** | **Required sample per arm** → convert to duration |

**Duration** = required sample ÷ eligible new agents per day (or week). Example: 1,500 agents per arm needed, 100 new contracted agents per day → 3,000 total ÷ 100 = 30 days. Then adjust:
- Run at least 1-2 full weeks (weekday/weekend cycles), even if sample is reached sooner.
- Add the outcome window: first app within 21 days means the last enrolled agent needs 21 more days to mature. Total ≈ enrollment time + 21 days.
- Don't stop early on a good p-value (peeking).

**Clustered (agency) test:** multiply the required sample by the design effect, 1 + (m-1)×ICC. With m = 10 agents per agency and ICC = 0.1, the design effect is 1.9, so you need ~1.9x the sample. Size it on the number of agencies.

**Tools**
- Evan Miller's sample size calculator (online, simple, for conversion rates).
- Optimizely or VWO calculators.
- Python: `statsmodels.stats.power.NormalIndPower` with `proportion_effectsize`.
- Hive/SQL for the baseline and agents-per-day inputs.

```python
from statsmodels.stats.power import NormalIndPower
from statsmodels.stats.proportion import proportion_effectsize
es = proportion_effectsize(0.13, 0.10)
n = NormalIndPower().solve_power(es, alpha=0.05, power=0.8, ratio=1)  # per arm
```

**How to pick the MDE:** the smallest lift that justifies the cost of building and shipping. If it's unrealistically small for your traffic, either accept a longer test, raise the MDE, use CUPED to cut variance, or choose a more sensitive metric.

**Say aloud:** "I'd take the baseline from history, set the MDE from the smallest lift worth shipping, use alpha 0.05 and power 0.8, inflate for clustering, add the 21-day outcome window, and fix duration before launch."

You still owe the pending answer: the test shows +4 pts activation, but decline rate rose from 18% to 24%. Ship or not?

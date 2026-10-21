# Hike - Interview case preparation

**You:** help me prepare for the case studies for this interview - here's the JD

**Claude:** I'll help you prep for case studies tailored to this role. Let me first understand where you're coming from.

*[Claude asked: current background (Analytics / Data Science 5+ yrs, <5 yrs, Product / Growth, Other) and focus areas (Metrics definition & analytics strategy; A/B testing & experimentation; Funnel & retention analysis; Stakeholder communication & leadership)]*

**You:**
- Background: Analytics / Data Science (5+ yrs)
- Focus: A/B testing & experimentation, Funnel & retention analysis, Metrics definition & analytics strategy

**Claude:** Great. Here's a structured prep guide across all three areas, calibrated to what a Senior Analytics Manager at a consumer messaging app would actually face.

---

## Metrics Definition & Analytics Strategy

**Likely case prompt:** *"How would you define the north star metric for Hike Messenger?"*

**Framework to apply:**
- Start with the product loop: Hike is a messaging app → value is delivered when users communicate and come back
- North star candidate: **Daily Sending Users** (users who send ≥1 message in a day) — captures both activation and engagement better than DAU alone
- Then build a metric tree: NSM → DAU/MAU ratio, messages per session, D1/D7/D30 retention, group creation rate
- Call out what you'd *not* use and why (e.g., raw DAU is gameable; sessions alone miss quality)

**What they'll probe:**
- How do you get org alignment on metrics? (Answer: document definitions, lock them in dashboards, tie team goals to them)
- How do you handle metric conflicts between teams? (Growth wants installs; product wants retention — who wins?)
- How would you add Hike Cinema metrics without polluting Messenger metrics?

**Strong answer signal:** You distinguish between *input metrics* (levers teams can pull) vs *output metrics* (what leadership tracks), and you talk about instrumentation — what events need to be tracked to measure this.

---

## A/B Testing & Experimentation

**Likely case prompt:** *"We ran a test on a new onboarding flow. Treatment showed +8% D1 retention but -3% group creation in week 1. Do we ship it?"*

**Framework to apply:**
1. **Check validity first:** Sample size, runtime (≥1 full week minimum, avoid novelty effect), SRM check, p-value
2. **Interpret the tension:** D1 retention ↑ but group creation ↓ — onboarding may be skipping the "invite friends" step, creating solo users who churn later
3. **Look at downstream:** What's D7/D30 retention for treatment? What's messages sent per user?
4. **Decision:** Don't ship as-is. Likely a false trade-off — optimize onboarding to recover group creation without losing retention lift

**What they'll probe:**
- How do you set significance thresholds? (Don't just say 95% — talk about when you'd accept 90%, e.g., low-risk UI changes)
- How do you run experiments when you can't randomly assign users? (Network effects in messaging apps — friend A gets treatment, friend B doesn't → interference)
- How do you build experimentation *culture*, not just run tests? (PRDs require a measurement plan before build, not after)

**The network effects trap** is specific to messaging apps — flag it proactively. Clusters of friends should be randomized together (cluster/graph-based randomization), not individual users.

---

## Funnel & Retention Analysis

**Likely case prompt:** *"DAU dropped 12% over the last 3 weeks. Walk me through how you'd investigate."*

**Framework (structured drill-down):**

```
1. Segment the drop
   - New vs existing users? (acquisition problem vs retention problem)
   - Platform: Android vs iOS?
   - Geography / cohort?
   - Feature area: messaging, calls, Cinema?

2. Check the funnel
   - App opens → session start → message sent → replied to
   - Where does the drop appear first?

3. External factors
   - App store rating change, competitor launch, network issues, push notification policy change?

4. Cohort analysis
   - Is D1 retention flat but D30 collapsing? → engagement depth problem
   - Is D1 itself falling? → onboarding or acquisition quality problem

5. Form a hypothesis, validate with data, recommend action
```

**What they'll probe:**
- How do you distinguish a *real* drop from a *measurement* issue? (Always check pipeline health and event tracking first — a missing SDK event looks like a drop)
- What's the difference between resurrection and retention? (Resurrected users inflate MAU, mask churn — you want to separate them in cohort analysis)
- How do you define "active" for a messaging app? (Passive reader vs sender — they behave very differently in retention curves)

---

## Meta-advice for the interview

**Format every answer with:** Clarify → Structure → Analyze → Recommend → Measure success

**Things to say that signal seniority:**
- "Before I dive in, I'd check if this is a data quality issue or a real signal"
- "I'd align with the PM on what decision this analysis is actually informing"
- "Here's what I'd ship vs. what I'd investigate further"

**Things to avoid:**
- Jumping to SQL/tools before framing the problem
- Giving a recommendation without quantifying the trade-off
- Treating every metric movement as statistically significant

---

Want me to run you through a mock case with follow-up questions, or go deeper on any of these three areas?

**You:** lets talk more on funnel / retention analysis and similar case studies relevant for hike app

**Claude:** Let me run you through cases the way an interviewer actually would — progressively, with probes.

---

## Case 1: The DAU Drop

**Prompt:** *"Hike Messenger's DAU has dropped 12% over the past 3 weeks. Leadership wants answers by tomorrow. Walk me through your approach."*

Take a minute and tell me:
- How do you start?
- What's the first thing you rule out before doing any analysis?

*(Answer this like you're in the room — I'll probe based on what you say)*

**You:** things to rule out - is this YoY issue too? or just wow. could be seasonality - people are more active during festive season but then may drop.

2. is the pipeline fine? are we tracking all events?
3. was there any new app launch - which might have distorted tracking? or which might have actually caused the drop

**Claude:** Good start — you caught the three most important sanity checks. Let me probe each.

---

**On seasonality:** Good instinct. How would you actually confirm it's seasonality and not a real drop? What would you look at?

**On pipeline:** Good — this is the #1 thing most candidates skip. If you find a tracking gap, what do you do? Do you wait to fix it or proceed with the investigation in parallel?

**On new app launch / product change:** Smart. What specific changes would you look for in the changelog that could cause a *12% DAU drop* specifically — not just noise?

---

Take these one at a time — don't need a perfect answer, just think out loud.

**You:** 1. for seasonality - i would see YoY long term trends. for example - there might be a drop in Jan compared to Dec - and it would happen each year, if this case is like that then that's kinda expected. i would see how much is still unexplainable - if any
2. tracking gap needs to be fixed, still go ahead with the analysis if the drop seems higher than what the tracking alone might have caused
3. android v ios. if drop is only in one because of the new app version that clears things. will see if the app size has increased. where in the funnel are users experiencing a bad experience

**Claude:** Solid. A few quick probes, then we move forward:

**On seasonality:** Good. One thing to add — also compare the *rate of drop* not just absolute levels. A 12% drop in Jan is expected; a 12% drop in August is not. You'd also look at competitor DAU trends if available (App Store rankings, Sensor Tower data) to see if it's category-wide.

**On tracking gap:** Right call — parallel track. One thing to pin down: how do you estimate the *magnitude* of the gap? You'd cross-check server-side events (messages sent hits your backend) vs client-side events (SDK fires on open). If server-side is flat but client-side dropped, it's instrumentation. If both dropped, it's real.

**On platform split:** Good instinct. Beyond Android vs iOS — what else would you segment by?

---

*Here's a hint: think about the types of users, not just the types of devices.*

**You:** yeah now i will come to the main part - if DAU has been dropping

look at new v existing users - is there a disproportinate drop in new? then its a acquaition problem. if drop in existing users , then its a retention problem.

look at geography - any one zone over indexing on the drop - relate with macro factors. floods in north east - causing network issues. network issue in any zone in partticular.

platform wise - app v msite v website is there a drop in all or only one.

user demography wise - age and gender and location (already coverd)

channel mix wise - are these users acquired from paid channels or organically

**Claude:** This is strong — you're thinking like a senior analyst. Let me push you further now.

---

**You find this:** New users are fine. The drop is entirely in **existing users**, specifically users who are **60-90 days old** (not fresh, not long-term loyals). Drop is uniform across geographies and platforms.

This is a **retention / engagement depth problem** in a specific cohort.

**What does that tell you, and what do you investigate next?**

*(Think about: what's special about the 60-90 day mark for a messaging app user?)*

**You:** i'd also look at what offering is being affected - are people still interacting with the messaging but cinema coverage is down ?

parallely, i would break it down by acqusition month - which month acquired users are slowing down? any particular month over indexed? why is that so? how did we acquire these users? were these primarily paid acquisitions or organic?
basically month of user acqusition should give us some insight

**Claude:** Both good instincts. Quick reactions:

**On feature split (messaging vs Cinema):** Yes — critical. If messaging is flat but Cinema DAU dropped, that's a completely different problem (content library, recommendation quality, autoplay behavior). Don't treat Hike as one product when diagnosing.

**On acquisition month cohort:** Smart. If users acquired in a specific month are over-indexing on the drop, you're looking at a **cohort quality problem** — likely tied to the campaign that brought them in. Paid users from a broad targeting campaign will churn faster than organic word-of-mouth users.

---

**But here's what I want you to sit with:**

You correctly identified the drop is in **60-90 day old users**, uniform across geo and platform. Acquisition month cohort analysis will tell you *which* cohort — but what's your hypothesis for *why* 60-90 days specifically?

Think about the **user journey** at that stage:

- Day 1-7: Novelty, onboarding
- Day 7-30: Habit formation
- Day 30-60: Either habit is locked in or weakening
- Day 60-90: ???

**What typically happens to a messaging app user at this stage that could cause a drop?**

**You:** if a user engagement problem is occuring with a 60-90 day user group, then that means the novelty is faded - the habit isn't formed yet. we have not been able to lock them in.
look at the number of frirends or distinct contacts these users have interacted with - has the network effect formed?
look at how many user groups are they part of ?
hypo - people whos friends are not on the app will also churn off eventually. they need there friends to be there too - it is very much a network effect thing - people need others to be on the app too.

**Claude:** This is exactly the right hypothesis. You've landed on the core insight for any messaging app — **retention is social, not individual.** A user doesn't churn because they stopped liking the app; they churn because their network isn't there.

This is called the **connected user problem** — and it's the most important retention lever for Hike.

---

**You'd now want to validate this. What metrics would you build to confirm the network effect hypothesis?**

Here's a scaffold — fill in what you'd measure:

```
Churned 60-90d users vs retained 60-90d users
├── Avg distinct contacts messaged in first 30 days → ?
├── Avg groups joined/created in first 30 days → ?
├── % who have ≥N active contacts on Hike → ?
└── ???
```

What's the threshold you'd look for? And what would you do with this once confirmed?

**You:** we would measure for both churned and retained users - and wherever the delta in N spikes that should be the ideal value. for example,
churned vs retained
80% churned have 5 active contacts vs 85% retained have more than 5 active contacts
but
20% churned have more than 10 active contacts v 55% retained have 10 active contacts
what this tells me is there's a huge behavior difference in folks with 10 active contacts - so doing an analysis like this and identifying the elbow point for N

once identified, nudge folks to start new conversations, nudge them to ask their friends to install the app - give goodies or some incentives, some points. nudge users to create groups if that comes out tobe an important retention level

**Claude:** That's a excellent answer — you've essentially described **magic number analysis** (finding the "aha moment" threshold) which is exactly how WhatsApp, Slack, Twitter all think about early retention. The elbow point framing is precise and interview-ready.

---

**One extension to push your answer from good to great:**

The nudge strategy you described is correct, but interviewers at this level will ask: **how do you know the nudge worked and you're not just nudging users who would have retained anyway?**

What's your answer to that?

**You:** do a random sampling of these at risk users and keep a holdout - users who won't be given nudges. then over time measure the success or retention for these folks and the increment there would give us the estimate on whether nudges worked and by how much.
for example - only 20% of control at risk users retained
vs 40% of test at risk users retained.

**Claude:** Perfect. That's a clean, correct answer — you've described a **holdout experiment** which is exactly the right method here. And the framing (20% vs 40% retention) shows you think in terms of *lift*, not just absolute numbers.

---

**One thing to add for seniority signal:** mention that you'd also track *unintended consequences* of the nudge:

- Did nudged users who retained actually become high-quality retained users (messaging regularly) or just re-opened the app once and went dormant?
- Did aggressive nudging hurt app store ratings or notification opt-out rates?

This shows you think beyond the experiment metric to **downstream health**.

---

## Let's move to Case 2 — Funnel Analysis

You've done well on retention. Let's shift to funnel.

**Prompt:** *"Hike's growth team tells you new user activation is weak. Only 40% of users who install the app send their first message within 24 hours. They want to fix this. Where do you start?"*

A few things to think about before you answer:

- What does "activation" actually mean for a messaging app — is D1 message sent the right metric?
- How would you diagnose *where* in the onboarding funnel users are dropping?
- What's your hypothesis for *why* they're dropping?

Take it step by step like before.

**You:** okay, again before i deep dive, would like to examine if this 40% number is bad. how bad. what did it use to be before?
what is it for competitors?

moving on, i believe D1 message sent seems like a good metric to track - ideally the more users who get engaged right away the better for us.

activation here is defined as sending first message after installing the app.
now lets look at the funnel -

1. app install
2. signup/login
3. import contacts who are already on the app
4. send a message

if the 40% number is low lets look at at which step are they dropping?

**Claude:** Great instinct to benchmark first — "40% is bad" is meaningless without context. Exactly right.

The funnel breakdown is clean too. Let me add one step you missed that's critical for a messaging app:

```
1. App install
2. App open (first session)
3. Signup / login
4. Permission grants — contacts, notifications    ← you missed this
5. Contact import — friends already on Hike
6. First message sent
```

**Why does step 4 matter so much specifically for Hike?**

---

And here's your first probe:

**You pull the funnel data and find:**

```
Install          → App open:           85% ✅
App open         → Signup complete:    78% ✅
Signup           → Permission grant:   51% ⚠️
Permission grant → Contact import:     80% ✅
Contact import   → First message:      72% ✅
```

**The drop is at permission grant — nearly half of users who sign up don't grant contacts/notification access.**

What's your diagnosis and what do you recommend?

**You:** 1. are we asking for too much info? more than for competitors?
2. can we package it better - the prompt asking for info - make it sound non-risky. easy.
3. also, give people context of why we need info - for example we might need your contact info so that we can import all of your contacts automatically so that the messaging experience for user is smooth.

**Claude:** Good. Those are the right product recommendations. Now let me push you on the analytics side — because in this role, your job isn't just to say "improve the prompt copy." Your job is to **structure the test and measure whether it worked.**

---

**You pitch these three fixes to the PM. She says: "Great, let's test all three together in one release."**

What do you say?

**You:** yes, also measure each one! lets set up an A/b experiment to see which is working. I would say lets not do all changes in one copy. lets do changes incrementally, or parallely, like there should be one variant with one change, one variant (test 2 ) with another change, and one holdout. then lets see which one performs best in terms of signup to permission grant step

**Claude:** Exactly right — you've just prevented a classic mistake. Testing all three together gives you lift but no learnings; you can't repeat or scale what you don't understand.

**One follow-up: how do you decide sample size and how long to run this test?**

Because the PM will ask: *"Can we get results by end of this week?"*

**You:** sure, for that we will do the MDE calculation.

1. we know how much population we are targeting (lets say 40:40:20) of our N day app installs
2. now if we know how much delta in this funnel step we are expecting we will be able to tell how many days data we would require - given the MDE, given the sample size, given the test control splits.
3. also important, track all funnel metrics for test and control variants as guardrail . we must ensure that improving one funnel step doesn't lead to detriment in another step - and overall detrimenmt in the funnel

**Claude:** Perfect. That's a complete, senior-level answer. MDE + runtime + guardrail metrics — that's exactly the trinity an interviewer wants to hear.

On guardrails specifically — give me a concrete example. **What's one guardrail metric you'd watch here that could go wrong even if permission grant rate improves?**

**You:** contact import to first message might take a hit now.
because earlier there was a self selection bias happening - only users who were more interested to get started on the app were granting the access.
now that the grant access increases significantly - it will bring all mix of users - some lowert intent too. so this will lead to lesser % in the last step of the funnel.

but is that a bad thing? not necessarily as long as we are improving the overall funnel - and # messages sent etc

**Claude:** Outstanding. That's a genuinely sophisticated insight — you've identified **selection bias as a feature, not a bug** of the old funnel, and you're correctly evaluating success at the *bottom* of the funnel, not any single step.

That answer would stand out at a Director-level interview, not just Senior Manager.

---

## Quick Debrief — Where You Stand

| Area | Assessment |
|------|------------|
| Sanity checks before diving in | ✅ Strong |
| Segmentation instincts | ✅ Strong |
| Network effects / magic number analysis | ✅ Strong |
| Holdout experiment design | ✅ Strong |
| MDE & test design | ✅ Strong |
| Guardrail metrics + selection bias catch | ✅ Excellent |
| Proactively benchmarking before diagnosing | ✅ Good habit |

**One gap to work on:** You sometimes jump to recommendations before fully exhausting the diagnostic. Interviewers at this level will occasionally slow you down with "how do you know that's the cause?" — practice pausing to say *"here's my hypothesis, here's how I'd validate it before acting."*

---

**Want to do one more case?** I have two good ones left that are specific to Hike:

1. **Monetization:** *"Hike wants to introduce a paid subscription. How do you measure if it's cannibalizing organic engagement?"*
2. **Content:** *"Hike Cinema watch time is up 20% but D30 retention is flat. What's going on?"*

Which one?

**You:** lets do first one first

**Claude:** ## Case 3: Monetization & Cannibalization

**Prompt:** *"Hike is launching a paid subscription — call it Hike Plus. It offers ad-free experience, exclusive stickers, and priority customer support. Leadership is excited. Your job is to define how you'd measure whether Hike Plus is helping the business or quietly cannibalizing free-tier engagement."*

---

Before I give you any data, tell me:

**What's your biggest concern with launching a paid tier on top of a free messaging app?**

And specifically — **what does "cannibalization" even mean here? What would it look like in the data if it was happening?**

Take it from the top like before.

**You:** I'd like to know what % of our DAU or MAU is intertested in only messaing app feature, vs what% uses the cinema feature too. if the cinema users are too small a set, the paid feature for only stickers etc may not seem a worthy proposition to our users.

biggest concern - if people view hike like a messaging app primarily they will be pissed why is it adding a paid feature - when other competitors have not. they might feel since there is a premium feature added, the non-paying users will be given a sub-premium experience. as in, worse experience than others.
they might switch to other messaging apps.

cannibalisation here could mean 2 things

1. we are not increasing net user base by offering premium feature - rather converting some existing free users as paid users. this i believe is not really a problem. in fact this is very much this offering is set out to do in my opinion. because you can only monetise your existing engaged users. it is much harder to monetize non-users.
2. or it could mean cannibalization - as in we might lose the users to other app - if users view us as a paid destination and they don't want to spend money on messaging when they have got other options for free. so even though we might convert a small chunk of users into paid, we might lose out on a big chunk of free users to competition - will need to assess the cost-benefit here.

**Claude:** Excellent framing. You've immediately separated two very different definitions of cannibalization — most candidates conflate them. And the competitive switching risk is exactly the right concern for a free messaging app.

Let me add one more cannibalization type you missed:

**3. Engagement cannibalization within existing users** — paid users might feel "done" after subscribing (stickers, ad-free) and actually engage *less* because the novelty of the perk wears off. Subscription didn't deepen the habit, it just changed the revenue model.

---

**Now here's your data situation:**

Hike Plus launches. After 8 weeks you see:

```
Hike Plus subscribers:        4% of MAU
Revenue from subscriptions:   ✅ hitting targets

Free tier users:
├── DAU/MAU ratio:            dropped from 52% → 47%
├── Messages sent per user:   flat
├── D30 retention:            dropped 3 points
└── App store rating:         dropped from 4.2 → 3.8
```

**What's your read? Is this cannibalization? Do you recommend continuing, pausing, or modifying Hike Plus?**

**You:** one question : is this DAU/MAU ration for pre post period calculated by only taking free users (in post period) and their pre period behavuor into account?
or is the pre period data based on everyone.

**Claude:** **Perfect question.** That's exactly the right thing to challenge before interpreting any pre-post metric.

If the pre-period includes users who are now Hike Plus subscribers, then the DAU/MAU drop in free tier is **mechanically explained** — you've removed your most engaged users from the free cohort (because engaged users are most likely to convert to paid), so of course the free tier ratio drops.

This is a **survivorship bias / cohort contamination** problem. Very few candidates catch this.

---

**So how would you construct the correct comparison?**

Specifically — how do you isolate whether free tier users are genuinely degrading vs the drop being a statistical artifact of who converted to paid?

**You:** i would isolate the paid users out and only look at free users - and then go back and see their specific performance in the pre period.
there will be nuances like some free users would be new in this period and may not have data in the pre period - so we will have to account for that,
we can do lookalike modeling - but for this case i won't get into it necessarily.
i think survivorship bias explains the drop in 30 retention and DAU/MAU ratios.

**Claude:** Correct. Cleanly explained. Isolating the cohort and tracking *their* pre-period behavior is the right methodology. And acknowledging the new user nuance without going down a rabbit hole shows good judgment on where to spend analytical effort.

---

**So let's say you do this analysis and find:**

```
Free users (excluding converters), same cohort pre vs post:
├── DAU/MAU:          51% → 50%     (basically flat)
├── Messages sent:    flat
└── D30 retention:    flat

But:
App store rating:     4.2 → 3.8    (still dropped)
```

**Survivorship bias explained the metrics drop. But the app store rating is real and it dropped.**

What's your diagnosis now, and what do you recommend to leadership?

**You:** yeah, this indeed is a real hit. people are pissed. will break this down into -
is this ratings given by paid users - who are not happy with the perks after paying for them
or are these given by free users - who are in general not happy that we have gone this paid route.

if its former this is serious - we must understand what are there concerns.
are they still seeing ads? are sticker packs not enough , not good quality? what is their concern, scrap app store reviews.

before solving their concerns i would not like to continue this model - it will have limited chances of success.
people want value for money. we should understand what we can do better in terms of adding value.

read their reviews.
send them messages / calls to ask for reviews on to one.

**Claude:** Strong. Segmenting ratings by paid vs free users is exactly the right first cut — most analysts would just look at the aggregate and panic.

Let me give you the answer:

```
App store reviews breakdown:
├── Paid users:    3.6 avg — complaints about "not worth it",
│                 "stickers are basic", "still seeing some ads"
└── Free users:   3.9 avg — complaints about "app feels slower",
                  "too many subscription prompts / popups"
```

**Both groups are unhappy but for different reasons.**

What's your recommendation to leadership now? You have to walk into a room with the founder tomorrow and give a clear point of view — continue, pause, or modify. And why.

**You:** both groups concerns are valid concerns.
lets prioritise and see what can be solved in short term and long term.

1. Paid users - why aren't they finding value - ensure no ads are shown to them. give better stickers etc. find ETA for each. what is easy to do vs time consuming.
2. Free users - they are lots in numbers , they can make or break public perception & app ratings too! app feels slower is genuine concern - because we may have added a lot of features. can we do something about them short term? will have to see. what we can do though is not overload folks with too many subscription prompts to the point where they are pissed off. lets understand their usage patterns - hit them based on their usage - break by cohort usage - also likeliness to purchase based on our ML model score.

**Claude:** Strong structured answer. You've prioritized correctly — free users are the base, can't afford to alienate them.

One thing to add for the founder meeting specifically: **lead with a number.**

Founders don't want a list of fixes. They want:

*"We have a fixable product problem, not a business model problem. Here's how I know."*

**How would you construct that argument with the data you have?**

Hint: think about what the data is actually telling you vs what it could have told you in a worse scenario.

**You:** lets do some A/B experimentation and testing examples for interview practise

**Claude:** Let's do it. I'll run these like a real interview — progressive probes, no multiple choice.

---

## Case 4: The Experiment That Shouldn't Ship

**Prompt:** *"Hike's product team has built a new feature — a 'Message Reactions' button (like, love, haha etc on messages, similar to WhatsApp). They ran an A/B test for 2 weeks. Results came back positive. They want to ship tomorrow. You're in the review meeting."*

**Results they're showing you:**

```
Metric                    Control    Treatment    Δ        p-value
─────────────────────────────────────────────────────────────────
Sessions per user/day      3.2        3.5         +9.4%    0.03
Messages sent per user     18.2       17.8        -2.2%    0.11
Reaction events per user   0          4.3         new      —
D7 retention               41%        42%         +1pp     0.08
```

**The PM says: "Sessions are up, reactions are being used, let's ship."**

What's your response?

**You:** i am assuming test and control have been split randomly. is there a sample ration mismatch? just making sure Ab ran smoothly.

i'd start with what was our north start metric before going into the experimentation?
do we want to increase session per user? was that P0? in that case it does look good and statsig too.
i see messages per user has decreased but it is being compensated by increase in reactions.

even D7 reactions are up.

**Claude:** Good instincts on SRM check and north star alignment. Let me give you answers to unblock you:

```
SRM check:        clean — 50/50 split, no imbalance
North star:       Messages sent per user (defined before test)
Test runtime:     14 days
Sample size:      180,000 users per arm
```

**Now re-read the table with this context.**

Your north star is messages sent per user. That's down 2.2% with p-value 0.11.

**Two specific questions:**

1. Is the north star result statistically significant or not — and does that mean you're safe to ship?

2. The PM's argument is "reactions compensate for fewer messages." Do you accept that argument? Why or why not?

**You:** i do buy that argument somewhat - we should have taken into account that reactions will substitute messages sent - since they are effectively killing simple texts like "okay" or "thankyou" etc.

moreover the negative messages dont look statsig - although it is quite close. my point is the incresae in reactions makes up for that. and as far as sessions are up and D7 retention is up. im okay shipping this.

my point would be why was the northstar messages per user though ? it should have been messages + reacts per user. -- which is indeed up.

**Claude:** Strong point on reactions substituting low-value texts — that's a genuine product insight, not just rationalization.

And the north star redefinition is smart. But here's where I push back:

**You can't redefine the north star after seeing the results.**

That's p-hacking by another name. If you change the success metric because the original one didn't move, you can always find *something* that went up and declare victory.

**What's the right process here instead?**

**You:** we run it for a few more days till we see whats the movement in messages per user look like at 95% significance level - if it does indeed look negative, then per the northstar definition we shouldn't ship the feature without making changes.

**Claude:** Partially right — but running longer specifically because you didn't like the result is **peeking**, which inflates your false positive rate. You can't extend a test post-hoc to fish for significance.

The correct answer has two parts:

1. **Before the test:** reactions should have been anticipated as a substitute for low-value messages. The measurement plan should have defined a **composite engagement metric** — messages + reactions — as the success metric *before* the test ran. This is a process failure, not a data failure.

2. **Given where you are now:** you have two honest options:

```
Option A: Call the test inconclusive
          North star didn't move significantly either way
          Reactions are a new behavior — unknown long term value
          Re-run with correct metric definition

Option B: Ship with a monitored rollout
          Gradual rollout — 5% → 20% → 100%
          Watch messages sent, D30 retention, session depth
          Pre-commit to a kill threshold before shipping
```

**The key thing to say to the PM:** *"The test didn't fail — our measurement plan failed. Here's how we fix that going forward."*

---

**That last line is the seniority signal.** Junior analysts say "the test was inconclusive." Senior managers say "here's the process gap and how we close it."

---

Want to do one more experiment case or shift to a different angle — like how you'd build the experimentation framework from scratch at Hike, which is a common senior-level question?

**You:** lets do one more and then switch to that

**Claude:** ## Case 5: The Conflicting Results

**Prompt:** *"Hike tested a new notification strategy — smarter timing, personalized to when each user is most active. Goal was to improve D30 retention. Test ran for 3 weeks. Results are in."*

```
Metric                    Control    Treatment    Δ        p-value
─────────────────────────────────────────────────────────────────
D30 retention              34%        36.5%       +2.5pp   0.02  ✅
Sessions per user/day      3.1        2.9         -6.5%    0.03  ✅
Messages sent per user     17.1       16.8        -1.8%    0.09
Notification opt-out rate  8%         13%         +5pp     0.01  ✅
```

**The growth team is excited. D30 retention is up, statsig. They want to ship immediately.**

What's your read?

**You:** even though northstart is positive and statsig - secondary metrics like   session per user/day are statsig negative
and messages per user is also negative and optouts are increasing at a very high rate. at this rate we will lose out the folks and won't be left with any base to send messages to.

what i find counter intuitive is, why are optouts increasing?  are we also increasing the number of messages?

**Claude:** Exactly right to flag the contradiction — D30 retention up but sessions down and opt-outs spiking is internally inconsistent. Good catch.

**Here's your answer on notification volume:**

```
Avg notifications sent/user/day:
Control:    3.2
Treatment:  3.1  (slightly fewer, personalized timing)
```

So it's not volume. Same number of notifications, just better timed.

**Now the contradiction is sharper:**

- Fewer sessions per day
- More opt-outs
- But D30 retention is up

**What's your hypothesis for what's actually happening here?**

Hint: think carefully about what D30 retention is measuring and whether "retained" means the same thing in both arms.

**You:** D30 retention woule be measuring that if a user is visiting today - what % of those continue to user 30 days post the measurement start date.

**Claude:** Close — but let me sharpen the definition. D30 retention is typically:

*"Of users who were active on Day 0, what % were active on Day 30?"*

Now here's the trap. **What counts as "active" in your instrumentation?**

If "active" is defined as **opening the app** — even once — then a perfectly timed notification that makes someone open the app on exactly Day 30 counts as retained. Even if they opened it, glanced, and closed it.

**So here's my hypothesis for what's happening:**

```
Treatment users:
├── Getting smarter timed notifications
├── Opening app on day 30 because notification landed at right time
├── Counted as "retained" ✅
└── But... not actually more engaged
    ├── Sessions per day down (opening less overall)
    ├── Messages sent down (passive openers)
    └── Opt-outs up (notifications feel manipulative over time)
```

**The notification is gaming the retention metric, not improving genuine retention.**

This is called **metric gaming** — your treatment is optimizing for the measurement, not the underlying behavior.

**Two questions:**

1. How would you prove or disprove this hypothesis with data?
2. What's the right retention metric that can't be gamed this way?

**You:** 1. metrics are anyways proving this hypothesis - the actual engagement isn't up.
2. we should be looking at # messages sent per user, or sessions per user or time spent on app per user.

i would again call this out as defining wrong p0 metric while doing the A/B

**Claude:** Exactly right on both. And you've now caught the same process failure twice across two cases — which is the pattern you should call out explicitly when building the experimentation framework.

**On metric 2 — small but important push:**

Messages sent and sessions are better but still gameable. The strongest retention metric for a messaging app is:

**"% of users who sent ≥1 message in week 4"** — not just opened the app. Requires intent, not just a tap on a notification. Much harder to game with notification timing.

---

**Final verdict on this test — what do you tell the growth team?**

Don't ship / ship / modify? Give me the one paragraph you'd say in the room.

**You:** i am concerned about the impact that it has on our opt-out metric, message per user, sessions per user metric - even though it seems to drive D30 retention up - that's not meaningful if user opt out in the long run. i wouldn't want to ship this.

**Claude:** Perfect. Clean, decisive, well-reasoned. That's exactly how a senior analytics manager should communicate — lead with the risk, explain why the positive metric is misleading, and give a clear recommendation.

One thing to add to make it boardroom-ready:

*"D30 retention is up but it's measuring notification response, not genuine habit. We're borrowing engagement from future periods and accelerating opt-outs. If we ship this, we'll see D30 look good for 2-3 months and then MAU will cliff. I'd rather fix the metric definition and re-run."*

That last sentence — **"we'll see D30 look good for 2-3 months and then MAU will cliff"** — is what separates a senior manager from an analyst. You're telling them what the data will look like in the future if they make the wrong call today.

---

## Building the Experimentation Framework at Hike

This is a common final-round question for this level. The prompt is usually open-ended:

*"Hike has no formal experimentation culture. Teams run ad-hoc tests, metrics aren't pre-registered, and results get cherry-picked. You're hired Day 1. How do you fix this in 90 days?"*

This is less about analytics and more about **how you operate as a senior leader.**

How would you approach this? Walk me through your 90 day plan.

**You:** First month -
align everyone on Ab setup methodology - how we should be reading the results - how its important to set up primary metric, secondary metric, guardrail metric Before start of experiment - and understanding sample size required to reach statsig results based on MDE expected - and thus allocating mods for the experiment

Second month -
Reading results from actual experiments done.
Product team is mandated to get sign off from analytics - which is neutral source of truth - before they ship.
Holding PMs accountable when right metric are not set up. they should explain why the experiment is abandoned. abandoning is fine - but there should be learning involved.

Third Month -
Biweekly reviews between Analytics and Product leadership where we present all experiments that were
a. shipped, and why!
b. abandoned, and why!
c. decided not to ship

**Claude:** Strong 90-day plan. You've got the right instincts — education first, process second, governance third.

Let me push on a few gaps before we score this:

**Gap 1: Month 1 — how do you get buy-in?**

PMs are busy. They'll nod in the training and then go back to doing what they were doing. How do you actually change behavior in month 1 beyond running alignment sessions?

**Gap 2: Month 2 — "analytics sign-off" can become a bottleneck.**

If every experiment needs your team's approval before shipping, and you have a small team, you'll become the reason products slow down. How do you scale this without becoming a blocker?

**Gap 3: You didn't mention tooling.**

Right now Hike likely has no experiment tracking system — results live in spreadsheets, Slack messages, someone's Notion doc. What do you put in place so institutional knowledge doesn't walk out the door when an analyst leaves?

Take these one at a time.

**You:** 1. to get buy-in will talk to the product leader - i'm sure they face the same issue and would accept a solution where we do things the right way. this will help documenting things as well.
2. some tool like statsig - where pms can setup experiment , define primary and secondary metrics, is available for everyone to see - so people are aware. this can help with product teams take the call - but also beware that analytics is also watching so results cant be cherry picked.
3. a tool like statsig - which will help document stuff.

**Claude:** Good — Statsig solves gaps 2 and 3 cleanly. Self-serve for PMs, transparent results, audit trail. Smart answer.

On gap 1 — going to the product leader is right, but you need a sharper hook. "Let's do things the right way" won't move a busy VP.

**What's the business case you make to the product leader in 5 minutes to get their mandate?**

**You:** the engagement dropped in hike messenger - how do we identify the reason for drop?

**Claude:** That's exactly the case we started with 😄 — you've come full circle.

Which means you're actually ready. Let me give you a full debrief on where you stand across everything we covered today.

---

## Overall Debrief

| Area | Strength | Gap |
|------|----------|-----|
| Diagnostic instincts | ✅ Always sanity-check first | Sometimes jump to recommendations before fully validating hypothesis |
| Segmentation | ✅ Multi-dimensional, natural | — |
| Network effects / magic number | ✅ Unprompted, precise | — |
| Experiment design | ✅ MDE, holdouts, guardrails | — |
| Catching bad experiments | ✅ Caught metric gaming, selection bias, peeking | — |
| Pre-registering metrics | ✅ Called it out twice independently | — |
| Communication to leadership | ✅ Clear and decisive | Add the "here's what data will look like if we're wrong" forward projection |
| Seniority signals | ✅ Process failures, not just data failures | Business case framing needs sharpening |

---

## The One Thing To Work On

When you walk into a leadership meeting, **lead with the so-what, not the how.**

Practice this structure for every finding:

```
1. Here's what's happening        (1 sentence)
2. Here's why                     (1-2 sentences)
3. Here's what happens if we don't act    (1 sentence)
4. Here's my recommendation       (1 sentence)
5. Here's how we measure success  (1 sentence)
```

Every case we did today, your analytics was strong. The gap is packaging it for a founder or Head of Product who has 5 minutes.

---

**You're well prepared for this role. Want to do a mock leadership presentation on any of today's cases, or is there another area you want to drill?**

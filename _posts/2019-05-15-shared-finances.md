---
title: A System for Shared Finances
layout: post
excerpt: "With money a common point of conflict in marriages and long-term relationships, Itzel and I decided to devise a system for the joint management of finances. We settled on the following guiding principles:"
---
## Introduction

<!-- This is duplicated in "excerpt", so copy any changes there -->
With money a common point of conflict in marriages and long-term relationships, Itzel and I decided to devise a system for the joint management of finances. We settled on the following guiding principles:

- In addition to a joint bank account, each partner has an individual bank account.
- Contributions to shared expenses are proportional to income and are paid from the joint account. These shared expenses include essentials like rent, groceries, and childcare.
- Each partner has complete autonomy when managing their individual account and finances.
- Individuals are compensated for time they sacrifice to make non-financial contributions (e.g. caring for children).
- Neither partner's lifestyle is drastically different than the others. Good fortune is shared.
- Each partner's final, individual income strictly increases with their gross income.
- Each partner manages their investments independently, but cash-out earnings are shared.

## Phase 1: Shared Expenses

Shared expenses are split proportional to the income of each partner. These proportions are recalculated each month using the previous month's earnings.

### Example

Alice and Bob earned $3000 and $1000 in January respectively. February's rent is $800. Alice pays $600 and Bob pays $200.

## Phase 2: Non-Financial Contributions

Let $$h_A$$ and $$h_B$$ be the monthly hours worked by partners A and B respectively. Assume $$h_B < h_A$$ because B spends more time than A making non-financial contributions (like caring for children).

Two transfers are made. The first arises because B is making it possible for A to work extra hours. Thus, a fraction $$\alpha_1$$ of A's extra hours belong to B. If $$i_{1,A}$$ and $$i_{1,B}$$ are A and B's incomes after phase 1, then the amount to transfer from A to B is

$$
\alpha_1 \cdot i_{1,A} \frac{h_A - \bar{h}}{h_A}
$$

where $$\bar{h}$$ is the average of $$h_A$$ and $$h_B$$.

The second transfer compensates partner B for lost wages. Partner A should share some fraction $$\alpha_2$$ of this loss. Thus A makes an additional transfer to B of

$$
\alpha_2 \cdot i_{1,B} \frac{\bar{h} - h_B}{h_B}
$$

This expression is undefined if B works zero hours (since we don't know how much their lost time is worth). In this case, $$i_{1,B} / h_B$$ - the post shared-expense hourly wage of partner B - can be estimated.

Typically one would set $$\alpha_1 = \alpha_2 = 0.5$$.

### Example

After contributing to joint expenses, Alice and Bob are left with $2400 and $800 respectively (we'll assume their February income was equal to their January income). They choose $$\alpha_1 = \alpha_2 = 0.5$$. Alice works full-time (40 hours/week), while Bob works part-time (20 hours/week) so he can take care of kids. If Alice and Bob gave up work time equally they would both work 30 hours (the average). Thus Bob is losing 10 hours of potential work while Alice is gaining 10.

First, Alice transfers $300 - half of what she earned in her extra 10 hours - to Bob. Then she transfers an additional $200 - half of what Bob would have earned in an extra 10 hours. This leaves them with balances of $1900 and $1300.

Note this is *not* the result we would get if total income was split in proportion to the hourly wage of each partner.

## Phase 3: Lifestyle Equalization

Even if both partners work about the same number of hours, we'd hope to avoid cases where one partner makes drastically more than the other and has a substantially different lifestyle. We start by choosing a constant $$\beta$$: the maximum ratio of final incomes. We then calculate

$$
\gamma = \frac{1}{1 + \beta}
$$

Let $$i_{2,A}$$ and $$i_{2,B}$$ be the net incomes of A and B after phase 2. Each makes a transfer of $$\gamma \cdot i_2$$ to the other.

### Example

Alice and Bob choose $$\beta = 3$$. That is, they don't want Alice's final income to ever be more than triple Bob's. They calculate $$\gamma = 0.25$$. Alice then transfers $475 to Bob, and Bob transfers $325 to Alice. Their final balances are $1750 and $1450.

## Aside: Investments

During phase 3, any income intended for investment is first set aside to prevent double counting. Phase 3 transfers aren't performed until assets are liquidated. Because the appreciation of investments is independent of hours worked, phase 2 transfers aren't applied to any gains.

### Example

Let's redo phase 3 in the case where Alice sets aside $500 for investments. Thus Alice and Bob's phase 3 balances are $1400 and $1300. They make a net transfer of $25, resulting in balances of $1375 and $1325. After some time has passed, Alice decides to sell her investment, which has since increased in value to $1000. She now performs the phase 3 transfer on this value and Bob gets $250.

## Divorce

In a divorce, each partner transfers the fraction $$\gamma$$ of their individual investments to the other partner. Shared assets (those which were paid for in phase 1), are split so that the value received by each partner is equal.

{%- include mathjax.html -%}

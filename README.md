# Michael Ju

AI backend developer — Python, FastAPI, PostgreSQL. I build LLM services that check
what the model says instead of trusting it, and decide the shipping bar before I look
at the numbers.

**Open to AI / backend engineering roles.** Seoul-based · native-level English.

## 🧭 Selected work

**[filing-digest](https://github.com/mhju0/filing-digest)** — reads Korean (DART) and US (SEC) financial filings with an LLM on a short leash: no citation, no sentence; no source number, no number.
*The hard part:* the guards are mechanical, not prompt-level — a citation guard drops any sentence without a retrieved source, a number guard drops any figure the model wrote itself, and a golden-set harness regression-tests answer quality in CI like any other test.
`FastAPI` `PostgreSQL + pgvector` `KURE-v1` `Upstage Solar` `Docker Compose`

**[fullcourt](https://github.com/mhju0/fullcourt)** — measures what the NBA schedule does to a game (travel, rest, density) and predicts results, backtested to 1985–86. → **[Live](https://fullcourt-nba.vercel.app)**
*The hard part:* learned fatigue weights edged out my hand-tuned ones, and I still didn't ship them — the bar was written down before the numbers came in. Daily automated data pipeline on GitHub Actions.
`Next.js` `Supabase/PostgreSQL` `Python ML` `Playwright` `Vitest`

**[raintoday](https://github.com/mhju0/raintoday)** — nationwide Korean rain forecast that answers *when* it rains, not just whether. → **[Live](https://raintoday.vercel.app)**
*The hard part:* deciding when to trust its own learning. Twice a day it freezes both the adaptive and the equal-weight blend at every KMA station *before* the outcome exists, scores them on the identical set, and suspends learning the day adaptive loses.
`Next.js` `PostgreSQL` `5 forecast providers` `Brier scoring`

**[stock-game](https://github.com/mhju0/stock-game)** — paper-trading service for US and Korean equities: multi-currency portfolios, FX, cost basis, S&P 500 / KOSPI benchmarks. → **[Live](https://stock-game-gray.vercel.app)**
*The hard part:* the security layer is hand-built and audited — JWT + bcrypt, ownership checks, a sliding-window rate limiter I wrote myself, and two self-run security audits written up as documents. 273 tests on CI.
`FastAPI` `PostgreSQL` `React` `GitHub Actions` `Render + Vercel`

Three of these run in production, two on daily automated pipelines. filing-digest runs anywhere Docker Compose does.

## 🧩 Also here

**[glass-table](https://github.com/mhju0/glass-table)** — Korean-first Hold'em trainer for iOS. Pure-Swift poker engine cross-checked against a Python oracle in a release-mode CI gate; zero third-party dependencies.

**mammacare** — bootcamp team project, 5 people, *private team repo*. Team lead and repo gatekeeper: owned auth (JWT + Google/Kakao/Naver with multi-provider account linking) and the notification/web-push system, and reviewed and merged 41 teammate PRs. 🏆 2nd place.

↳ **[allergy-tracker](https://github.com/mhju0/allergy-tracker)** — then I rebuilt that project's allergy domain alone, as an iOS app, to find out what I'd change with no team constraints. Food status is now never stored: it's derived from trial history on every read, so a delayed reaction logged weeks later flips a “safe” food back to red with no cache to invalidate. 209 tests, zero network code.

## 🛠 Stack

**Daily**

![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![FastAPI](https://img.shields.io/badge/FastAPI-009688?style=flat-square&logo=fastapi&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF?style=flat-square&logo=githubactions&logoColor=white)
![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white)

SQLAlchemy 2 (async) · Pydantic v2 · pgvector · JWT/OAuth2

**LLM work** — RAG pipeline design · HNSW retrieval · citation & number guardrails · golden-set offline evaluation · Azure OpenAI · Upstage Solar

**Also shipped with** — React · Next.js · Swift/SwiftUI · React Native (Expo) · Supabase · Vercel · Render

## 📫 Contact

michael.mh.ju@gmail.com

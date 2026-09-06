# Michael Ju

AI backend developer

Seoul-based · native-level English

## Selected work

### [filing-digest](https://github.com/mhju0/filing-digest)

I wanted to check the original filings and financial figures when researching investments. This service searches Korean DART and US SEC filings, retrieves financial figures from structured data, and uses an LLM to write explanations.

The code checks those explanations for missing or unknown citations and blocked financial-number patterns. If a check fails, it discards the explanation and retains the structured figures. I evaluate the running API against an ingested corpus separately from the deterministic service tests in CI. The project runs locally with Docker Compose.

`FastAPI` · `PostgreSQL + pgvector` · `KURE-v1` · `Upstage Solar` · `Docker Compose`

### [fullcourt](https://github.com/mhju0/fullcourt)

Before an NBA game, I like to see how much rest each team has had. Fullcourt puts fatigue scores and rest advantages alongside the schedule, using travel, rest days, and schedule density. A GitHub Actions pipeline updates the data automatically.

I also tested learned fatigue weights against the existing weights. They performed slightly better, but the improvement did not justify the migration cost under the criteria I had set before the experiment. I kept the existing weights and recorded the results.

[View NBA schedules](https://fullcourt-nba.vercel.app)

`Next.js` · `Supabase/PostgreSQL` · `Python` · `Playwright` · `Vitest`

### [raintoday](https://github.com/mhju0/raintoday)

An hourly rain forecast for Korea, built around the question I usually have when checking the weather: do I need an umbrella today?

The service saves adaptive and equal-weight forecasts before observations arrive, then compares them on the same sample. It uses equal weights when the adaptive blend underperforms or there isn't enough evidence to use it. Forecast performance is tracked by weather station.

[View rain forecasts](https://raintoday.vercel.app)

`Next.js` · `PostgreSQL` · `Brier scoring`

### [stock-game](https://github.com/mhju0/stock-game)

A paper-trading service for Korean and US stocks. It handles won and dollar portfolios, exchange rates, average purchase prices, and comparisons with the S&P 500 and KOSPI.

I implemented JWT authentication, password hashing with bcrypt, ownership checks, and a sliding-window rate limiter. I also reviewed the service for security issues and documented the findings and fixes.

[Open the trading simulator](https://stock-game-gray.vercel.app)

`FastAPI` · `PostgreSQL` · `React` · `GitHub Actions` · `Render/Vercel`

## Team and iOS projects

**mammacare** is a service for recording baby-food schedules and allergy reactions. We built it as a five-person team using Azure in May and June 2026. I led the team and worked on the backend foundation, JWT authentication, Google/Kakao/Naver account linking, and scheduled notifications with web push. The team received an Excellence Award at the final presentation.

**[glass-table](https://github.com/mhju0/glass-table)** is a Korean Hold'em trainer for iOS. Its poker engine is a separate Swift package, with results checked against a Python reference in release-mode CI. It has no third-party dependencies.

**[allergy-tracker](https://github.com/mhju0/allergy-tracker)** is my solo iOS take on the allergy-recording domain. Food status is calculated from trial history rather than stored separately, so a reaction recorded later is reflected on the next read. Records stay on the device without backend synchronization.

## Tools

Python · FastAPI · PostgreSQL · SQLAlchemy 2 · Pydantic v2 · Docker · GitHub Actions

My LLM work includes RAG, pgvector HNSW retrieval, citation and numeric checks, API evaluation, Azure OpenAI, and Upstage Solar.

I've also used TypeScript, React, Next.js, Swift/SwiftUI, React Native, Supabase, Vercel, and Render in projects.

## Contact

[michael.mh.ju@gmail.com](mailto:michael.mh.ju@gmail.com)

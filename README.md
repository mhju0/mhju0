# Michael Ju

I build AI backends with Python, FastAPI, and PostgreSQL — services that check what the model says instead of trusting it.

**[filing-digest](https://github.com/mhju0/filing-digest)** reads Korean and US financial filings with an LLM on a short leash: no citation, no sentence; no source number, no number. A golden-set harness regression-tests its answers in CI.

**[fullcourt](https://github.com/mhju0/fullcourt)** measures what the NBA schedule does to a game — travel, rest, density — and predicts results, backtested against every season since 1985–86. When learned weights edged out my hand-tuned ones, I didn't ship them: the shipping bar was set before I saw the numbers. [Live](https://fullcourt-nba.vercel.app), daily data pipeline.

**[raintoday](https://github.com/mhju0/raintoday)** forecasts rain anywhere in Korea and re-judges every morning whether its own learning still helps — the day it loses to equal weights, it benches itself. [Live](https://raintoday.vercel.app/sky).

**[stock-game](https://github.com/mhju0/stock-game)** is a paper-trading service for US and Korean stocks — multi-currency portfolios, benchmark comparisons, JWT auth, and a hand-built sliding-window rate limiter, hardened by two self-run security audits. [Live](https://stock-game-gray.vercel.app).

Three of these run in production, two of them on daily automated pipelines. filing-digest runs anywhere Docker Compose does.

📫 michael.mh.ju@gmail.com

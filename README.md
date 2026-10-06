# Yalla Kafe ☕
Meet people outside your network. A prototype for turning "we should grab coffee" into an actual coffee. Israeli tech, Jerusalem first.

**What's in this repo**
- `index.html`: the whole app (no build step): demo + beta sign-up
- `config.js`: your Supabase URL and public anon key
- `supabase.sql`: the sign-ups table and the access rules
- `privacy.html`: privacy template (needs your details + legal review)

## Setup (about 30 minutes)

**1. GitHub**: create a new repo (public or private), upload these 5 files to the root, commit to `main`.

**2. Database (Supabase, free)**
1. supabase.com → New project (pick a region near Israel, e.g. Frankfurt).
2. SQL Editor → paste `supabase.sql` → Run.
3. Project Settings → API → copy the **Project URL** and the **anon public** key into `config.js`. Commit.
4. Never paste the `service_role` key anywhere in this repo.

**3. Hosting**: pick one:
- *GitHub Pages:* Settings → Pages → Deploy from branch → `main` / root. Public link in ~1 minute (free Pages needs a public repo).
- *Cloudflare Pages or Netlify:* connect the repo, no build command, publish directory `/`.

**4. Test**: open your link → Find My People → finish onboarding → Join the beta. Check Supabase → Table Editor → `beta_signups`. Then test `yourlink/?ref=abc`: the new row should show `referred_by = abc`.

**5. Domain (optional)**: buy one and add it in your host's Domains settings.

**6. Before sharing widely**: fill in `privacy.html`, add your contact email, check the name for trademark conflicts.

## Running the beta
- **Export your list:** Supabase → Table Editor → export CSV.
- **Match by hand first:** pair 2 people by goals, distance and free times, email both with *why* they should meet and 2-3 times. Aim for 10 real coffees before building automation.
- **After each coffee, ask:** Did it happen? Was it worth it? Who else should they meet?
- **Weekly numbers:** sign-ups, referral clicks, matches proposed, coffees booked, coffees completed.

## What you need to make it succeed
1. **Density in one place.** 50 engaged people in Jerusalem beats 500 across the country. Don't open a second city early.
2. **Real coffees, not sign-ups.** Judge everything by completed coffees per active member.
3. **Concierge before code.** You do the matching manually until the pattern is clear.
4. **A reason to show up.** Founding-member status, a monthly in-person "Yalla Kafe Morning", early matches for people who invite 3 friends.
5. **Trust and safety.** 18+, public cafés only, report/block, no exact locations, reviewing the first profiles yourself.
6. **Legal basics.** Privacy policy, consent (already in the form), a way to delete data. Get it reviewed.
7. **One person who does the follow-up.** Someone emailing both people, nudging, and asking how it went. That's you at first.

## Roadmap (after the beta proves out)
v0.2 real accounts (Supabase Auth) and saved profiles → v0.3 automated matching + email reminders → v0.4 café suggestions and booking → v0.5 WhatsApp reminders.

## Known limits
Sign-ups are saved; matching, scheduling and the swipe feed are still the simulated demo. LinkedIn login isn't live (LinkedIn doesn't give apps connection lists); the Connections.csv upload runs locally in the browser.

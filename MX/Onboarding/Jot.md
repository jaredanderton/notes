# MX onboarding (new)

- Headcount / Hiring plans
  - mgr Visa problems/ remote? for India? do we want it local?
    - Local. No plans to hire managers in India.
  - Replatform
    - work has already been on this
  - A/B testing

## Company Values/Views
### QA
We do have QA. Wes of the opinion (Jot agrees). Eng & Dev ops: own the quality. (Was a large QA org, 
manual testing). Wes: “moving to automated”. QA dept. freaked out formed a union. majority agreed to 
dissolve the union.

### Testing Strategy
we do have automated e2e. Learn more from team members. Our goal is 100% automated tests. Run every time. 
Cadence?. Push small changes all the times as fast as possible. Probably 80% of testing is automated 
(double the test coverage) on 4k tests. In process of changing deployment tool. Want to use “Ship it” 
(old was sabotage, still things in it. Most path connectors, syncronity. Ryan Jones doing most of the work).

### Deploying
Deployment challenges with syncronsity - backend datastore holds all test data (“gringets” - push updates
into gringets). “Sycnronsty deploys are slow b/c gringets deploys are slow”).

- Verification Queue (production monitoring) Production Queue. Ready to ship.
- Sabotage.internal.mx
- Generic/Blanket policy: Each deploy should be Single deploy of Sync (BE).

### AI Support tools (copilot). 
Going to be hesitation (more from compliance/code access Intellectual property discussion. Our dept have). 
No policy yet. 

### Incremental vs Greenfield
- Most of the org goals by mobile org: Jot covers a large majority. 
- Where I provide the value: my success is **replatforming**. 
- Wes/Jot very little mobile success. 
- Need a POC that can easily interface with MX datastore and existing BE functionality
(“after discussing with most experienced mobile & mobile BE devs, that’s where we landed”). 
Make stub apps, in react native and flutter. See where it goes. 

- Wes and Jot entirely agnostic. What will provide highest development iteration capabilities. 
https://mxcom.atlassian.net/wiki/spaces/ENGINEERIN/pages/469008410/Mobile+Platform+Requirements 
Have to figure out funding. 
wes has 3 priorities taken to the board: 
1. Migration to cloud. 
Moving everything to GCP. Currently hosting on bare metal. Most things are containerized (as far as Jot cares about at least)
2. Mobile replatforming. 
3. Insights replatforming (web PFM & Insights). 

### On-shore/Near Shore teams? 
India Dev center is already stood up). Some issues with non-domestic contractors (b/c of how data is structured). 
All off shore will be India. 

Very Good as a paid template
Change Control (SOC2)



Who are the stakeholders


Become familiar with
- Managers
  - Teams
    - Members:
        - Strengths/weaknesses
        - 

Processes/Cadences
Project planning
service intervals/tech debt/3rd party

In flight Projects
Roadmap
- Core 
  - Device Manager 
  - FDIC 
- DT
  - HW
  - Suncoast

What performance metrics are currently monitored

Cross Platform goals
- Greenfield or incremental?
- (easiest customer)
- Devices (phones only, tablets? web?, wearables?)
- Testing
- Company stance on code coverage/ flow coverage (unit/ui/integration/e2e testing)
- OS support (N-1, or N-2, etc)
- Teams on rewrite vs teams on maintaining existing builds 	
- offline availability
- Animations
- specific 3rd party libs (Datadog, FS, AppsFlyer)
- deeplinking?
- Privacy Perms:
  - Biometrics
  - Location?
  - Mic
  - Photos
  - etc
  - Long lived access/refresh tokens
  - Auth provider (or just bank)
  - NFC/ BLE?
    - Maybe like a cool way to verify identity at the teller?
  - Throttling/Scaling/Load Testing? (more of a BE thing)

What is the dev/testing/QA/UAT sets like?

Tech @ MX




## Documentation
 Confluence

## Product
    
Internal
External (customer/user facing)
Tribal Knowledge
API Docs


Current Tech Stack
What is the mobile tech stack
Security/Compliance
PCI
SOC
CCPA/GDPR
CICD pipeline
Test coverage
Monitoring (Datadog)
Analytics
- mostly its google analytics (event tracking), no heat map
- do our clients want/need it?
A/B Testing
- No. But we do get paid for expertise.
- A/B Testing config
# Release process
- Bob the builder. Handles builds. 
- Manually kick them off. Also does them every day. 
- Builds are not delivered automatically. 
- Can send URL to download an unsigned build,  
- Bob cuts QA, Int, Prod build every day. 
- Probably don’t on our own bare metal.
- Most of the time, we upload to stores. 
  - They might just give us their creds (manually)
-
l10n?
i18n?
## 3rd party libs/SDKs
Billy - This is a problem. 

SMS/Call/Push Notifications - TCPA
- AFCU as example: we _do_ do push. Often times, it’s Fiserv. We frequently,
- Should focus on push
on-call
alerting?





What is backed like
Typesafe BE?
Backwards compatibility planning

Poll on cross platform

What financial budgets do I have?
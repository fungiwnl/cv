#set document(
  title: "Brian Fung – CV",
  author: "Brian Fung",
  keywords: ("Platform / DevOps Engineer", "AWS", "Google Cloud Platform", "Terraform", "Akamai", "CI/CD"),
  date: none,
)
#set page(paper: "a4", margin: (x: 1.5cm, y: 1cm))
#set text(font: "Lato", size: 10pt, lang: "en", region: "AU", hyphenate: false)
#set par(justify: false, leading: 0.5em, spacing: 0.6em)
#set list(indent: 0.4em, body-indent: 0.5em, spacing: 0.35em)

#show link: set text(fill: rgb("#1a4d8f"))
#show heading.where(level: 1): it => block(
  above: 0.9em,
  below: 0.6em,
  width: 100%,
  stroke: (bottom: 0.6pt),
  inset: (bottom: 3pt),
  text(size: 12pt, weight: "bold", it.body),
)
#show heading.where(level: 2): it => block(
  above: 0.8em,
  below: 0.45em,
  text(size: 10pt, weight: "bold", it.body),
)

#let company(name, above: 1.8em) = block(above: above, below: 0.4em, strong(name))

#let dated(body, dates, below: 0.5em) = block(above: 0.4em, below: below)[#body #h(1fr) #strong(dates)]
#let job(title, dates, below: 0.9em) = dated(emph(title), dates, below: below)

#align(center)[
  #text(size: 16pt, weight: "bold")[Brian Fung]
  #v(0em)
  #link("https://www.google.com/maps/search/?api=1&query=Melbourne%2C+Australia")[Melbourne, Australia] |
  #link("tel:+61422285751")[+61 422 285 751] |
  #link("mailto:brianf.iwnl@gmail.com", "brianf.iwnl@gmail.com") |
  #link("https://fungiwnl.github.io/terminal/")[fungiwnl.com]
]

= Summary

Platform / DevOps Engineer with 9 years across platform, backend, CI/CD and quality engineering. I build infrastructure on AWS and Google Cloud Platform with Terraform and AWS CDK, and edge services on Akamai EdgeWorkers, focusing on cost, reliability and self-service tools that remove engineering bottlenecks. My quality engineering background means every change ships with regression, smoke and failure-mode tests as evidence that it works. Currently learning the Kubernetes stack (Helm, GitOps with ArgoCD, Prometheus, Grafana) and Microsoft Azure, and experimenting with LLM prompt loops to speed up development.

= Professional Experience

#company(above: 1em)[Kmart Australia]
#job(below: 0.5em)[DevOps Engineer][July 2024 – Present]

== Platform and AI infrastructure

- Delivered Kmart's first production applications on Google Cloud Platform, Joy (a Gemini-powered generative AI shopping assistant) and Vertex AI Search for Commerce, taking each from proof of concept to production in 4 weeks using newly released GCP AI products with many unknowns, and built Joy's GCP infrastructure, CI/CD pipelines and CDN configuration with Terraform.
- Built GCP infrastructure for the Search service powered by Vertex AI Search for Commerce, including Cloud Run, load balancers, Cloud Armor, Certificate Manager, a token service, canary deployments and Akamai traffic routing.
- Negotiated GCP security architecture with the security team (DNS, internal domain reuse, Google-managed certificate ownership) and enabled keyless Buildkite deployments via Workload Identity Federation (WIF).
- Diagnosed and remediated performance issues, including approximately 1,900 ms of p99 search latency caused by CDN tiered distribution routing through US points of presence, and drove the APAC fix with Akamai.
- Led a VPC migration of a consent management system, integrated with Tealium and Braze, using a blue/green deployment strategy, the first use of blue/green deployment within Kmart Digital, achieving zero downtime.

== Developer enablement and self-service

- Identified the need for and built a self-service React SPA cache purge tool for the online trade team, secured with Microsoft Entra ID single sign-on (SSO) and a full audit trail, cutting purge turnaround from 10–15 minutes (or next business day after hours) to seconds: 695 purges in the first 3 months, saving an estimated 115–170 hours.
- Built a self-service Redis cache purge CLI with a pipeline, so feature teams no longer SSH into a host in the Redis VPC.
- Built a Playwright test automation framework integrated with CI/CD and adopted by 4 squads, migrating from WebdriverIO and cutting regression suite runtime by 75%, from 40 minutes to 10 minutes.
- Led the Recommender API migration to a serverless personalisation platform on AWS for service stability: a shared API Gateway fronting CDK-scaffolded Lambda workers, New Relic and Sumo Logic observability, local DynamoDB, pre-push lint, test and audit hooks, and parallel endpoint deploys in GitHub Actions.
- Built a scalable mock service using Express on Amazon ECS to stub out third-party integrations for performance testing and let teams develop against endpoints before real services exist.

== Edge engineering and security

- Led edge solution architecture for bot protection using Akamai EdgeWorkers Flexible Composition, with automated regression coverage and fault injection tests to validate resilience and failure handling.
- Negotiated with the Security team to enable Akamai Pragma debug headers under IP allowlisting and required-header controls, unblocking automated test coverage that guards CDN and EdgeWorker functionality from regressions.
- Delivered Kmart's first production Akamai EdgeWorker (visitor ID), and led an investigation that showed true median latency was about 95 ms rather than the flagged 700 ms, correcting a measurement error in RUM instrumentation.

== Performance and reliability

- Led Availability Zone (AZ) disaster recovery testing for the Kmart website using AWS Fault Injection Service, covering scoping, observability dashboards, performance tests and automated functional tests to validate recovery.
- Identified and remediated the platform issues that had prevented recovery from an AZ failure, taking the platform from no recovery to full recovery within a 5–6 minute Recovery Time Objective (RTO).
- Built performance test tooling: a token toggle for real or forged authentication tokens (with production safeguards) to load test authenticated journeys, and test data scripts that scrape product data, top up stock, create test accounts and pull order data from DynamoDB, cutting test preparation from hours to minutes.
- Investigated and fixed the root cause of a cascading failure across production ECS microservices during deployments, and took part in the on-call rotation.

== Cost optimisation and FinOps

- Initiated and delivered a Redis to Valkey migration on AWS ElastiCache ahead of Redis end-of-life, avoiding extended support charges and reducing caching costs by 70% (approximately AUD 26,000 per year from January 2027).
- Implemented Amazon ECR lifecycle policies to automatically expire unused container images, reducing storage costs by approximately AUD 12,000 per year.
- Contributed to the Imperva to Akamai CDN and WAF harmonisation for kmart.com.au, consolidating vendors and reducing costs across the Kmart Target Group.

== Leadership and mentoring

- Mentored a graduate engineer and built a dotfiles bootstrapper to speed up engineer onboarding.
- Presented at fortnightly engineering knowledge-sharing sessions on topics including a GCP platform overview, disaster recovery, the Akamai cache purge tool and test automation.

#company[Kmart Australia]
#job[Software Test Engineer][September 2021 – July 2024]

- Core maintainer of the Kmart Online test automation framework, migrating WebdriverIO from synchronous to asynchronous and adding linting, logging and end-to-end email testing, improving suite stability.
- Moved the automation suite from manual QA runs into Buildkite CI/CD, running regression tests on every build.
- Migrated functional UI tests to run against stubs using WireMock, reducing runtime by 90%, from 30 minutes to 3 minutes for 50 tests.
- Led performance testing for Peak trading readiness using JMeter, validating platform capacity ahead of the highest-traffic period of the year.

#company[Two Bulls]
#job(below: 0.4em)[Senior QA Engineer][September 2019 – August 2021]
#job[QA Engineer][May 2017 – September 2019]

- Created and maintained CI/CD pipelines for iOS, Android, Web and Game/Video streaming engine projects using GitLab CI/CD (on-prem), Bitrise, GitHub Actions and Fastlane, including code signing and automated release deployment to the App Store and Google Play.
- Migrated Jenkins jobs to version-controlled declarative pipelines (pipeline as code), and maintained the on-premises Jenkins build infrastructure for a cross-platform video SDK.
- Designed an automated test solution on AWS (Lambda, S3, CloudWatch, CodePipeline, Device Farm), provisioned with CloudFormation.
- Built scripts to automate test build installation on iOS, Android and embedded devices, cutting test setup time from minutes to seconds.
- Owned test strategy, planning, execution and automation for web and native mobile applications in agile and waterfall environments, using Cypress, Appium and XCUITest.
- Clients: Service Victoria, Beyond Blue, Scouts Australia, Verizon, Sesame Street, The Wiggles, 28 By Sam Wood.

= Technical Skills

#let skill(category, items) = block(above: 0.45em, below: 0.45em)[*#category:* #items]

#skill[Amazon Web Services (AWS)][EC2, ECS, ECR, Lambda, API Gateway, Application Load Balancer, VPC, Route 53, S3, CloudFront, IAM, DynamoDB, ElastiCache, SQS, SNS, Systems Manager, Fault Injection Service]
#skill[Google Cloud Platform (GCP)][Cloud Run (services and jobs), Cloud Scheduler, Cloud Tasks, Workflows, Cloud Build, Artifact Registry, Firestore (Datastore mode), Cloud Load Balancing (global and regional, serverless NEGs), Cloud Armor, Certificate Manager, VPC, Serverless VPC Access, IAM, Workload Identity Federation, Cloud Storage, Storage Transfer Service, BigQuery, Cloud Monitoring, Cloud Logging, Vertex AI (Gemini, Vertex AI Search for Commerce)]
#skill[Infrastructure as code (IaC)][AWS CDK, CloudFormation, Terraform]
#skill[CDN][Akamai EdgeWorkers, Flexible Composition, Property Manager, WAF, Bot Manager; Imperva]
#skill[CI/CD][Buildkite, GitHub Actions, GitLab CI/CD, Bitrise, Jenkins, AWS CodePipeline, Bitbucket Pipelines, Fastlane; Blue/green and canary deployments]
#skill[Languages and platforms][TypeScript, Node.js, Bun, Python, Bash, Git, Linux, Docker, Nx, pnpm workspaces]
#skill[Testing][Jest, Vitest, Playwright, Supertest, Cypress, Cucumber, WireMock, Appium, XCUITest; Snapshot testing, Accessibility testing]
#skill[Performance testing][JMeter, k6, Locust, Lighthouse]
#skill[Observability][New Relic, Sumo Logic, Amazon CloudWatch, PagerDuty]
#skill[Security and identity][AWS Secrets Manager, GCP Secret Manager, Wiz, Snyk, Auth0, Microsoft Entra ID]
#skill[APIs, data and integrations][REST, GraphQL, gRPC, Redis, Valkey, Commercetools, Contentful, Tealium, Braze]
#skill[AI and developer tools][Cursor, AWS DevOps Agent, AWS Security Agent, Neovim, Tmux, AeroSpace]
#skill[Practices][Site Reliability Engineering (SRE), DevSecOps, FinOps, TDD, BDD, Pair programming, Code review, Agile (Scrum, Kanban), Monorepos, Incident response and on-call, Root cause analysis]

= Education, Training and Awards

#dated[*RMIT University* – Bachelor of Electrical Engineering / Bachelor of Commerce][2012 – 2017]
#dated[*OWASP AppSec Day* – Web Hacking Essentials][2019]
#dated[*Think Customer Golden Kudos Award* – team nominated by Kmart's CPO for Joy and Vertex AI Search][2026]

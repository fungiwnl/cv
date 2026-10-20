#set document(
  title: "Brian Fung – CV",
  author: "Brian Fung",
  keywords: ("DevOps Engineer", "AWS", "Google Cloud Platform", "Terraform", "Akamai", "CI/CD"),
  date: none,
)
#set page(paper: "a4", margin: (x: 1.5cm, y: 1cm))
#set text(font: "Lato", size: 10pt, lang: "en", region: "AU", hyphenate: false)
#set par(justify: false, leading: 0.5em, spacing: 0.6em)
#set list(indent: 0.4em, body-indent: 0.5em, spacing: 0.45em)

#show link: set text(fill: rgb("#1a4d8f"))
#show heading.where(level: 1): it => block(
  above: 1.1em,
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

#let company(name, location) = block(above: 1em, below: 0.4em, strong[#name – #location])

#let dated(body, dates) = block(above: 0.4em, below: 0.5em)[#body #h(1fr) #dates]
#let job(title, dates) = dated(emph(title), dates)

#align(center)[
  #text(size: 16pt, weight: "bold")[Brian Fung]
  #v(-0.4em)
  Melbourne, Australia |
  0422 285 751 |
  #link("mailto:brianf.iwnl@gmail.com", "brianf.iwnl@gmail.com") |
  #link("https://github.com/fungiwnl")[github.com/fungiwnl]
]

= Summary

DevOps / Platform Engineer with 8 years across technology, including platform engineering, CI/CD and test automation. Builds infrastructure on AWS and Google Cloud Platform with Terraform and AWS CDK, and edge services on Akamai EdgeWorkers. Focused on cutting costs, improving reliability and building self-service tools that remove engineering bottlenecks.

= Professional Experience

#company[Kmart Australia][Melbourne]
#job[DevOps Engineer][July 2024 – Present]

== Cost optimisation and FinOps

- Initiated and delivered a Redis to Valkey migration on AWS ElastiCache ahead of Redis end-of-life, avoiding extended support charges and reducing caching costs by 70% (approximately AUD 20,000 per year from January 2027), with no application rewrites.
- Implemented Amazon ECR lifecycle policies to automatically expire unused container images, reducing storage costs by approximately AUD 10,000 per year.
- Contributed to the Imperva to Akamai CDN and WAF harmonisation for kmart.com.au, consolidating vendors and reducing costs across the Kmart Group.

== Platform and AI infrastructure

- Delivered Kmart's first production applications on Google Cloud Platform, Joy (AI chatbot) and Vertex AI Search for Commerce, taking each from proof of concept to production in 3 weeks on aggressive timelines, using newly released GCP AI products with many unknowns.
- Built end-to-end infrastructure, CI/CD pipelines and CDN configuration for Joy, Kmart's AI chatbot, on Google Cloud Platform using Terraform.
- Built GCP infrastructure for the Constructor.io to Vertex AI Search for Commerce migration, including Cloud Run, load balancers, Cloud Armor, Certificate Manager, a token service, canary deployments and Akamai traffic routing.
- Enabled Buildkite CI/CD deployments to GCP using Workload Identity Federation (WIF), avoiding long-lived service account keys.
- Diagnosed and remediated performance issues, including approximately 1,900 ms of search latency caused by CDN tiered distribution routing through US points of presence, and drove the APAC fix with Akamai.
- Led a VPC migration of the consent management system, integrated with Tealium and Braze, using a blue/green deployment strategy, the first use of blue/green deployment within Kmart Digital, achieving zero downtime.

== Edge engineering and security

- Led solution architecture for Kasada bot protection using Akamai EdgeWorkers Flexible Composition, with automated regression coverage and fault injection tests to validate resilience and failure handling.
- Negotiated with the security team to enable Akamai pragma debug headers under IP allowlisting and required-header controls, unblocking automated test coverage that guards CDN and EdgeWorker functionality from regressions.
- Main contributor to a CDN-as-code repository, managing Akamai property configuration and EdgeWorkers as code, with automated regression tests in CI/CD.
- Delivered Kmart's first production Akamai EdgeWorker (visitor ID), and led the investigation that showed true median latency was about 95 ms rather than the reported 800 ms, correcting a measurement error in RUM instrumentation.
- Supported Akamai WAF and Bot Manager tuning and a firewall cutover.

== Developer enablement and self-service

- Identified the need for and built a self-service Akamai cache purge tool for the online merchandising team, secured with Microsoft Entra ID single sign-on (SSO) and a full audit trail, cutting purge turnaround from 10–15 minutes (or next business day after hours) to seconds. The team ran 695 purges in the first 3 months, saving an estimated 115–170 hours of waiting and 695 engineer interruptions.
- Built a self-service Redis cache purge tool so teams can clear cached data without engineering involvement.
- Built a Playwright test automation framework integrated with CI/CD and adopted by 4 squads, migrating from WebdriverIO and cutting regression suite runtime by 75%, from 40 minutes to 10 minutes.
- Built a personalisation API platform on AWS with GitHub Actions, CDK scaffolding for API Gateway and Lambda endpoints, and Sumo Logic observability built in.
- Built an Express mock service on Amazon ECS so teams can develop against endpoints before real services exist.

== Performance and reliability

- Led Availability Zone (AZ) disaster recovery testing for the Kmart website using AWS Fault Injection Service, covering scoping, observability dashboards, performance tests and automated functional tests to validate recovery.
- Identified and remediated the platform issues that had prevented recovery from an AZ failure, taking the platform from no recovery to full recovery within a 3-minute Recovery Time Objective (RTO).
- Led performance testing for Peak trading readiness using JMeter, validating platform capacity ahead of the highest-traffic period of the year.
- Designed a token toggle supporting both real and forged authentication tokens, with production safeguards, enabling load testing of authenticated customer journeys without disrupting test environments.
- Built test data generation scripts for performance testing, reducing test preparation time from hours to minutes.
- Participated in incident response as part of the on-call rotation, and led the root cause analysis (RCA) of a production ECS cascading failure.
- Led the Recommender API migration for service stability, and built New Relic and Sumo Logic observability.

== Leadership and mentoring

- Mentored a graduate engineer and built a dotfiles bootstrapper to speed up engineer onboarding.

#company[Kmart Australia][Melbourne]
#job[Software Test Engineer][September 2021 – July 2024]

- Core maintainer of the Kmart Online test automation framework, migrating WebdriverIO from synchronous to asynchronous and adding linting, logging and end-to-end email testing, improving suite stability.
- Moved the automation suite from manual QA-triggered runs into Buildkite CI/CD, enabling automated regression testing on every pipeline run.
- Migrated functional tests to run against stubs using WireMock, reducing runtime by 90%, from 30 minutes to 3 minutes for 50 tests.
- Core contributor to the performance test suite for Peak trading readiness.

#company[Two Bulls][Melbourne]
#job[Senior QA Engineer][September 2019 – August 2021]
#job[QA Engineer][May 2017 – September 2019]

- Created and maintained CI/CD pipelines for iOS, Android, web and game engine projects using Jenkins, GitLab CI/CD, Bitrise, GitHub Actions and Fastlane, including code signing and automated release deployment to the App Store and Google Play.
- Migrated Jenkins jobs to version-controlled declarative pipelines (pipeline as code), and maintained the on-premises Jenkins build infrastructure for a cross-platform video SDK.
- Designed an automated smoke testing solution on AWS (Lambda, S3, CloudWatch, CodePipeline, Device Farm), provisioned with CloudFormation.
- Built scripts to automate test build installation on iOS, Android and embedded devices, cutting test setup time from minutes to seconds.
- Owned test strategy, test creation, execution and automation for web and native mobile applications in agile and waterfall environments, using Cypress, Appium and XCUITest.
- Selected clients: Service Victoria, Beyond Blue, Scouts Australia, Verizon, Sesame Street, The Wiggles, 28 By Sam Wood.

= Technical Skills

#let skill(category, items) = block(above: 0.45em, below: 0.45em)[*#category:* #items]

#skill[AWS][EC2, ECS, ECR, Lambda, API Gateway, Application Load Balancer, VPC, Route 53, S3, CloudFront, IAM, DynamoDB, ElastiCache, SQS, SNS, Systems Manager, Fault Injection Service]
#skill[Google Cloud Platform][Cloud Run, Cloud Load Balancing, Cloud Armor, IAM, Workload Identity Federation, Vertex AI Search]
#skill[Infrastructure as Code][Terraform, AWS CDK, CloudFormation]
#skill[CDN][Akamai EdgeWorkers, Flexible Composition, Property Manager, WAF, Bot Manager; Imperva]
#skill[CI/CD][Buildkite, GitHub Actions, GitLab CI/CD, Bitrise, Jenkins, AWS CodePipeline, Bitbucket Pipelines, Fastlane; blue/green and canary deployments]
#skill[Languages and platforms][TypeScript, Python, Bash, Git, Linux, Docker]
#skill[Testing][Playwright, Jest, Vitest, Supertest, Cypress, Appium, Cucumber, WireMock]
#skill[Performance testing][JMeter, k6, Locust, Lighthouse]
#skill[Observability][New Relic, Datadog, Sumo Logic, Amazon CloudWatch]
#skill[Security and identity][AWS Secrets Manager, Wiz, Snyk, Kasada, Auth0, Microsoft Entra ID, SSO]
#skill[APIs, data and integrations][REST, GraphQL, Redis, Valkey, Contentful, Tealium, Braze]
#skill[AI operations and tooling][AWS DevOps Agent, AWS Security Agent, Neovim, tmux]
#skill[Practices][TDD, BDD, pair programming, code review, Agile (Scrum, Kanban), CI/CD, infrastructure as code, incident response and on-call, root cause analysis, disaster recovery testing, FinOps]

= Education and Training

#dated[*RMIT University* – Bachelor of Electrical Engineering / Bachelor of Commerce, Melbourne][2012 – 2017]
#dated[*OWASP AppSec Day* – Web Hacking Essentials, Melbourne][November 2019]

# AI Safety Incident Log Service

## Overview

This is a simple RESTful API built with **Ruby on Rails** to log and manage hypothetical AI safety incidents. It was created as part of an assessment for HumanChain, a company focused on building safer and more trustworthy AI systems.

---

## Tech Stack

- **Language:** Ruby (3.1.0 or later)
- **Framework:** Ruby on Rails (7.1.5)
- **Database:** Postgresql (for development)
- **ORM:** ActiveRecord
- **Cretae user:** ror
- **PAssword:** 1234

---

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/ai-safety-incident-log.git
cd ai-safety-incident-log

2. Install Dependencies
Make sure you have Ruby and Bundler installed.
bundle install

3. Setup Database
bin/rails db:create db:migrate

bin/rails db:seed
You can find these sample records in the db/seeds.rb file.

Running the Application
bin/rails server
The API will be accessible at http://localhost:3000

API Endpoints
1-curl -X GET http://localhost:3000/incidents (For index)
2-curl -X GET http://localhost:3000/incidents/1 (For show)
3-curl -X DELETE http://localhost:3000/incidents/1 (For delete)
4-curl -X POST http://localhost:3000/incidents \ (For create)
  -H "Content-Type: application/json" \
  -d '{"title":"Model hallucination","description":"AI gave incorrect medical advice.","severity":"Medium"}'



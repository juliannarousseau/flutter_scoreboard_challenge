# 📱 **Flutter Clean Architecture Challenge**  
## Household Tasks Scoreboard App

### 📌 **Context**

This project simulates a real-world technical interview challenge inspired by common mobile/frontend exercises.

The goal is to build a simple competitive scoreboard application while applying **Clean Architecture**, proper separation of concerns, and clear business reasoning — **not UI sophistication**.

The app models a small **daily household tasks competition**, where participants earn points by registering completed tasks.

---

## 🎯 Problem Statement

The application must allow users to register task actions and track a ranking between participants.

The focus is on demonstrating the ability to:

* model simple business rules,
* structure the project correctly,
* manage state transitions,
* keep UI free from business logic,
* design for future extensibility.

---

## ✅ Solution Overview

This project implements a **Task-Based Scoreboard** feature.

The user can:

* register a new task action for a participant (task name is free text),
* visualize the current score for each participant,
* see who is currently leading,
* reset the daily scoreboard when needed.

The solution prioritizes:

* clean separation of responsibilities,
* architecture clarity,
* testability,
* readable and explainable decisions.

---

## 🧩 Functional Requirements

* Two predefined participants
* Register a task action:
  * each registered task increments the participant score by **1**
* Task name:
  * provided by the user
  * does not affect scoring logic
* Display:
  * participant name
  * total tasks completed
* Show current leader:
  * handle tie scenarios
* Reset competition (sets all scores to zero)

---

## 🧱 **Business Rules**

- A task represents a single contribution and is worth **1 point**
- Scores cannot be negative
- Only predefined participants are allowed
- Leader calculation must be derived from domain logic
- UI must not calculate scores, rankings, or task totals

---

## 🧱 **Technical Decisions**

- Flutter
- Clean Architecture principles
- Stateless Widgets only
- No business logic in UI
- Models isolated from entities
- State managed outside the view (Cubit)
- No external API (local in-memory datasource)

---

## 🏗️ **Architecture Overview**

```
presentation
└── cubit
└── states
└── pages
└── widgets

domain
└── entities
└── repositories
└── usecases

data
└── datasources
└── models
└── repository implementations
```

**Key principle:**

The domain layer is fully independent from Flutter, Cubit, or any persistence mechanism.

---

## 🔄 Data Flow

- UI triggers a task registration
- Cubit calls the corresponding Use Case
- Use Case registers the task via Repository
- Repository persists data in Datasource
- Domain returns updated scores and leader
- Cubit emits a new UI state
- UI reacts to state changes

---

## 🧪 Testing Strategy

Unit tests focused on:

- Use cases (task registration, reset, leader calculation)
- Repository behavior
- Entity rules and immutability

Widget tests are optional and limited to critical flows.

The priority is validating **business behavior**, not UI rendering.

---

## 🚀 Possible Extensions

This structure supports future evolution such as:

- dynamic number of participants
- daily, weekly, or monthly competitions
- task history visualization
- persistence (local storage)
- gamification and achievements
- backend integration

---

## 🗣️ Interview & Pair Programming Mindset

This challenge encourages:

- clear explanation of business rules,
- discussion about architectural trade-offs,
- incremental improvements,
- focus on simplicity and maintainability.

---

## 📝 Notes

This repository is not a production-ready app.

It is an evaluation and training exercise focused on:

- reasoning,
- architectural discipline,
- communication,
- real-world development practices.
```
# 📘 Training Management System - Database Schema

## 📝 Description
This project defines a **relational database schema** in MySQL for managing all core functionalities of a training management system. It supports roles, users, courses, batches, topics, sessions, assignments, attendance, and resources.

The schema ensures proper normalization, clear role management, and tracks both candidate and trainer activity across sessions and topics.

---

## 📦 Key Modules

### 🎓 Courses & Topics
- Each course can have multiple topics.
- Topics belong to a specific course.

### 🧑‍🏫 Users & Roles
- Users table stores all system users including admins, trainers, and candidates.
- Roles (like Admin, Trainer, Candidate) are managed via a separate `Roles` table and assigned through `User_roles`.

### 📅 Batches
- Each batch is linked to a course.
- Has metadata like batch code, max strength, and duration.
- Trainers are assigned to batches through `Trainers_Batches`.

### 📘 Assignments
- Created by trainers for specific topics.
- Linked to batches through `Batches_Assignments`.
- Candidate performance tracked through `Candidates_Assignments`.

### 🧑‍🎓 Candidates
- Enrolled into batches via `Candidates_Batches`, with status tracking (`enrolled`, `completed`, `dropped`).
- Attendance is recorded per session.

### 🧑‍🏫 Sessions
- Represent training classes.
- Linked to trainer, batch, topic, and session mode (`online`, `offline`, `hybrid`).
- Attendance and recordings are tracked.

### 📚 Resources
- Linked to topics, categorized into types (document, video, link, image).

### ❌ Exit Tracking
- Exited users (dropped-out or completed) are tracked separately with reason and date.

---

## ✅ Assumptions Made

- A **User** can have multiple roles (e.g., both trainer and admin).
- **Assignments** can be reused across batches by linking them via `Batches_Assignments`.
- **Sessions** are always conducted by one trainer per topic per batch on a specific date.
- **Candidates and Trainers** are both stored in the `Users` table and differentiated by role.
- **Exit_Users** stores only those users who have left the system, preserving historical data.
---

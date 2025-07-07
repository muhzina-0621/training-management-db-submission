# 📚 Training Management System
The main entities are
- **Course**: Contains training courses. Each course can have multiple topics and and can be in multiple batches.
- **Batch**: Represents training sessions. Each batch belongs to a course and has a start and end date.
- **Trainer**: Trainers can teach multiple topics. A trainer may be linked to topics.
- **Topic**: Belongs to a course and is optionally linked to a trainer.
- **Candidate**: Candidates can enroll in batches. Each candidate is associated with status (In Progress, Completed, or Terminated).
- **Assignment**: Linked to batches. Tracks submission status and due dates.
- **Student Assignment Stat**: Stores scores and submissions by candidates per assignment.

## ✅ Assumptions Made

1. **Course-Batch Relationship**  
   - One course can have many batches. Each batch is linked to only one course. For eg: MSc CS course can be chosen in Batch 23,24,25 etc.but if we take a specific batch for eg:CS24 it is only linked to MSc CS course .
2. **Candidate Enrollment**
   - Each candidate is linked with one or more batches through the `candidate_status` table.
  
3. **Trainer-Topic Relationship**  
   - Each topic is assumed to be handled by a single trainer.
   - There are multiple topics in each batch therefore multiple topics in each course. Hence there are multiple trainers in each batch.
   - A topics could be taught in more than one batch ,so one trainer can have multiple batches.
   

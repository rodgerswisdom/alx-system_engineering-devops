# Postmortem: Airbnb Clone Website Outage

## Issue Summary

**Duration of the outage:**  
Start: June 15, 2024, 08:30 AM UTC  
End: June 15, 2024, 11:45 AM UTC

**Impact:**  
The outage affected the Airbnb clone website's booking service. Users were unable to complete new bookings or modify existing ones. Approximately 70% of users experienced disruptions during this period.

**Root Cause:**  
A bug introduced during a recent update caused a deadlock in the booking microservice database.

## Timeline

- **08:30 AM UTC** - Issue detected by automated monitoring alert indicating a spike in error rates.
- **08:35 AM UTC** - Initial investigation by on-call engineer revealed high CPU usage in the booking microservice.
- **08:45 AM UTC** - Assumed root cause was a potential DDoS attack. Network team started investigating traffic patterns.
- **09:10 AM UTC** - Escalation to the database team after discovering abnormal database connection pool behavior.
- **09:30 AM UTC** - Database team identified multiple deadlocked transactions in the booking database.
- **09:50 AM UTC** - Attempted to kill deadlocked transactions manually; issue persisted.
- **10:15 AM UTC** - Rolled back to the previous version of the booking microservice.
- **10:45 AM UTC** - Issue persisted; further investigation revealed the rollback did not include the database schema changes.
- **11:00 AM UTC** - Database schema changes were reverted manually.
- **11:30 AM UTC** - System began stabilizing, and error rates dropped.
- **11:45 AM UTC** - Monitoring confirmed system back to normal operations.

## Root Cause and Resolution

**Root Cause:**  
The root cause of the outage was a bug in the booking microservice update that introduced a complex transaction logic leading to a database deadlock. The update included a new feature for booking modification, which inadvertently caused multiple transactions to lock the same rows, creating a deadlock situation that prevented new bookings and modifications.

**Resolution:**  
The resolution involved identifying and killing the deadlocked transactions in the database. Initial attempts to rollback the microservice failed as the rollback did not include reverting database schema changes. Once the schema changes were manually reverted, the deadlock issue was resolved, and normal operations resumed.

## Corrective and Preventative Measures

**Improvements and Fixes:**
- Enhance pre-deployment testing to include scenarios for database transaction conflicts.
- Improve rollback procedures to ensure database schema changes are included.
- Implement better monitoring for database transaction states to detect deadlocks earlier.

**Tasks:**
1. **Patch Booking Microservice:**
   - Refactor the transaction logic to avoid potential deadlocks.
2. **Enhance Testing:**
   - Add automated tests for complex transaction scenarios.
   - Conduct thorough regression testing before deployment.
3. **Improve Monitoring:**
   - Set up alerts for abnormal database transaction behavior.
   - Implement detailed logging for transaction states.
4. **Update Rollback Procedures:**
   - Ensure rollback scripts include database schema changes.
   - Test rollback procedures in staging environments.
5. **Conduct Training:**
   - Provide training sessions for engineers on handling database deadlocks and rollback procedures.

By addressing these issues and implementing the corrective measures, we aim to prevent similar incidents in the future and ensure a more robust and reliable booking service for our users.


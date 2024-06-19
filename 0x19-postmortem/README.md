# WeatherWise API Outage Postmortem

## Issue Summary

**Duration of the Outage**:
- Start Time: June 18, 2024, 10:00 AM UTC
- End Time: June 18, 2024, 11:30 AM UTC

**Impact**:
- The weather application’s API service was down.
- Users were unable to fetch weather data.
- Approximately 80% of users were affected.

**Root Cause**:
- A misconfigured environment variable caused the API authentication to fail.

## Timeline

- **10:00 AM**: Issue detected via a monitoring alert.
- **10:05 AM**: On-call engineer starts investigating.
- **10:10 AM**: Initial suspicion of network issues.
- **10:20 AM**: Checked server logs; found authentication errors.
- **10:30 AM**: Escalated to backend team.
- **10:45 AM**: Discovered misconfigured environment variable.
- **11:00 AM**: Corrected the environment variable.
- **11:15 AM**: Tested the fix in a staging environment.
- **11:30 AM**: Deployed the fix to production and resolved the issue.

## Root Cause and Resolution

**Root Cause**:
- The API key environment variable was incorrectly set during a recent update, causing all API requests to fail authentication.

**Resolution**:
- Corrected the environment variable configuration.
- Implemented checks to validate environment variables before deployment.

## Corrective and Preventative Measures

**Improvements**:
- Enhance deployment scripts to validate environment variables.
- Improve monitoring to detect authentication issues sooner.

**Tasks**:
- [ ] Patch deployment script to include environment variable checks.
- [ ] Add monitoring alerts for failed API authentication.
- [ ] Conduct a review of recent deployments to ensure no similar issues exist.

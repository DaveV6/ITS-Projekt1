# ITS Project 1 - Appointment Reservation System

- **Author:** David Bujzaš (xbujzad00)
- **Date:** 2025-04-11

## Artifact Coverage Matrix

| Artifact | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 | 29 |
|----------|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|----|---|---|----|
| Calendar view | x | x | x | x | x | x | x | x | | | | | | | | | | | | | | | | | | | | | |
| Appointment form | | | | | | | | | x | x | x | | | | | | | | | | | | | | | | | | |
| Admin Calendar View | | | | | | | | | | | | x | x | x | x | | | | x | | | | | | | | | | |
| Add appointment modal | | | | | | | | | | | | | | | | | | | | | | | | x | x | | | | |
| Add unavailability modal | | | | | | | | | | | | | | | | | | | | | x | x | | | | | | | |
| Edit appointment modal | | | | | | | | | | | | | | | | | x | x | | x | | | | | | | | | |
| Edit unavailability modal | | | | | | | | | | | | | | | | | | | | | | | x | | | | | | |
| Delete appointment modal | | | | | | | | | | | | | | | | x | | | | | | | | | | | | | |
| Add customer modal | | | | | | | | | | | | | | | | | | | | | | | | | | x | x | | |
| Edit customer modal | | | | | | | | | | | | | | | | | | | | | | | | | | | | x | |
| Delete customer modal | | | | | | | | | | | | | | | | | | | | | | | | | | | | | x |


## Activity Coverage Matrix

| Activites | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 | 29 |
|----------|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|----|---|---|----|
| Switching calendar view | | | | | | | | | | | | | x | x | | | | | | | | | | | | | | | |
| Switching calendar month | | | | | | x | x | x | | | | | | | | | | | | | | | | | | | | | |
| Changing date and time | x | x | x | x | x | | | | | | | | | | | | | | | | | | | | | | | | |
| Adding | | | | | | | | | | | | | | | | | | | x | | x | x | | x | x | x | x | | |
| Editing | | | | | | | | | | | | | | | | | x | x | | x | | | x | | | | | x | |
| Deleting | | | | | | | | | | | | | | | | x | | | | | | | | | | | | | x |
| Submitting | | | | | | | | | x | x | x | | | | | | | | | | | | | | | | | | |
| Loading data | | | | | | | | | | | | x | | | x | | | | | | | | | | | | | | |


## Feature-Test Matrix

| Feature file | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 | 29 |
|----------|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|----|---|---|----|
| guest_reservation.feature | x | x | x | x | x | x | x | x | x | x | x | | | | | | | | | | | | | | | | | | |
| reservation_moderation.feature | | | | | | | | | | | | x | x | x | x | x | x | x | x | x | x | x | x | x | x | | | | |
| user_moderation.feature | | | | | | | | | | | | | | | | | | | | | | | | | | x | x | x | x |

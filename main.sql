/******************************************************************************
Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
/* Enter your sql queries here */
-- 1
-- SELECT ur.full_name,
-- et.title,
-- et.city,
-- et.start_date
-- from Users ur 
-- join Registrations r 
-- on ur.user_id = r.event_id
-- join Events et
-- on r.event_id = et.event_id
-- where et.status='upcoming'
-- and ur.city=et.city
-- order by et.start_date;

-- 2
-- select e.title,avg(f.rating)as avg_rating,count(f.feedback_id)as total_feedback

-- from Events e 
-- join Feedback fb 
-- on e.event_id,e.title
-- group by e.event_id,e.title
-- having count(fb.feedback_id)>=10
-- order by avg_rating desc;

-- -- 3
-- select ur.users_id,ur.full_name
-- from Users ur
-- left join Registrations r 
-- on ur.user_id=r.user_id
-- and r.registration_date>=curdate()-internal 90 day
-- where r.registration_id is null;

-- -- 4
-- SELECT et.title,
--       COUNT(s.session_id) AS total_sessions
-- FROM Events et
-- JOIN Sessions s
-- ON et.event_id=s.event_id
-- WHERE TIME(s.start_time)
-- BETWEEN '10:00:00' AND '12:00:00'
-- GROUP BY et.event_id,et.title;


-- -- 5
-- SELECT ur.city,
--       COUNT(DISTINCT r.user_id) AS users_count
-- FROM Users ur
-- JOIN Registrations r
-- ON ur.user_id=r.user_id
-- GROUP BY ur.city
-- ORDER BY users_count DESC
-- LIMIT 5;


-- -- 6
-- SELECT et.title,
--       r.resource_type,
--       COUNT(r.resource_id) AS total_resources
-- FROM Events et
-- JOIN Resources r
-- ON et.event_id=r.event_id
-- GROUP BY et.title,r.resource_type;



-- -- 7
-- SELECT ur.full_name,
--       et.title,
--       fb.rating,
--       fb.comments
-- FROM Feedback fb
-- JOIN Users ur
-- ON fb.user_id=ur.user_id
-- JOIN Events et
-- ON fb.event_id=et.event_id
-- WHERE fb.rating<3;



-- -- 8
-- SELECT et.title,
--       COUNT(s.session_id) AS session_count
-- FROM Events et
-- LEFT JOIN Sessions s
-- ON et.event_id=s.event_id
-- WHERE et.status='upcoming'
-- GROUP BY et.event_id,et.title;

-- --9
-- SELECT ur.full_name,
--       et.status,
--       COUNT(et.event_id) AS total_events
-- FROM Users ur
-- JOIN Events et
-- ON ur.user_id=et.organizer_id
-- GROUP BY ur.full_name,et.status;

-- -- 10
-- SELECT et.title
-- FROM Events et
-- JOIN Registrations r
-- ON et.event_id=r.event_id
-- LEFT JOIN Feedback fb
-- ON et.event_id=fb.event_id
-- WHERE fb.feedback_id IS NULL
-- GROUP BY et.title;



-- 11
-- SELECT registration_date,
--       COUNT(user_id) AS total_users
-- FROM Users
-- WHERE registration_date >= CURDATE()-INTERVAL 7 DAY
-- GROUP BY registration_date;

-- 12
-- SELECT et.title,
--       COUNT(s.session_id) AS total_sessions
-- FROM Events et
-- JOIN Sessions s
-- ON et.event_id=s.event_id
-- GROUP BY et.event_id,et.title
-- HAVING COUNT(s.session_id)=(
-- SELECT MAX(session_count)
-- FROM(
-- SELECT COUNT(session_id) AS session_count
-- FROM Sessions
-- GROUP BY event_id
-- ) x
-- );

-- 13
-- SELECT et.city,
--       AVG(fb.rating) AS avg_rating
-- FROM Events et
-- JOIN Feedback fb
-- ON et.event_id=fb.event_id
-- GROUP BY et.city;


-- 14
-- SELECT et.title,
--       COUNT(r.registration_id) AS total_registration
-- FROM Events et
-- JOIN Registrations r
-- ON et.event_id=r.event_id
-- GROUP BY et.event_id,et.title
-- ORDER BY total_registration DESC
-- LIMIT 3;


-- 15
-- SELECT s1.event_id,
--       s1.title,
--       s2.title
-- FROM Sessions s1
-- JOIN Sessions s2
-- ON s1.event_id=s2.event_id
-- AND s1.session_id<>s2.session_id
-- WHERE s1.start_time < s2.end_time
-- AND s1.end_time > s2.start_time;

-- 16
-- SELECT ur.full_name
-- FROM Users ur
-- LEFT JOIN Registrations r
-- ON ur.user_id=r.user_id
-- WHERE ur.registration_date >= CURDATE()-INTERVAL 30 DAY
-- AND r.registration_id IS NULL;


-- 17
-- SELECT ur.full_name
-- FROM Users ur
-- LEFT JOIN Registrations r
-- ON ur.user_id=r.user_id
-- WHERE ur.registration_date >= CURDATE()-INTERVAL 30 DAY
-- AND r.registration_id IS NULL;

-- 18
-- SELECT et.title
-- FROM Events et
-- LEFT JOIN Resources r
-- ON et.event_id=r.event_id
-- WHERE r.resource_id IS NULL;

-- 19
-- SELECT et.title,
--       COUNT(DISTINCT r.registration_id) AS total_registration,
--       AVG(f.rating) AS avg_rating
-- FROM Events et
-- LEFT JOIN Registrations r
-- ON et.event_id=r.event_id
-- LEFT JOIN Feedback fb
-- ON et.event_id=fb.event_id
-- WHERE et.status='completed'
-- GROUP BY et.event_id,et.title;

-- 20
-- SELECT ur.full_name,
--       COUNT(DISTINCT r.event_id) AS attended_events,
--       COUNT(DISTINCT fb.feedback_id) AS feedback_count
-- FROM Users ur
-- LEFT JOIN Registrations r
-- ON ur.user_id=r.user_id
-- LEFT JOIN Feedback fb
-- ON ur.user_id=f.user_id
-- GROUP BY ur.user_id,ur.full_name;


-- 
-- Insert default db values into liquid feedback
--

INSERT INTO system_setting (member_ttl) VALUES ('1 year');

INSERT INTO contingent (polling, time_frame, text_entry_limit, initiative_limit) VALUES (false, '1 hour', 20, 6);

INSERT INTO contingent (polling, time_frame, text_entry_limit, initiative_limit) VALUES (false, '1 day', 80, 12);

INSERT INTO contingent (polling, time_frame, text_entry_limit, initiative_limit) VALUES (true, '1 hour', 200, 60);

INSERT INTO contingent (polling, time_frame, text_entry_limit, initiative_limit) VALUES (true, '1 day', 800, 120);

-- query for version 4: INSERT INTO policy (index, name, min_admission_time, max_admission_time, discussion_time, verification_time, voting_time, issue_quorum_num, issue_quorum_den, issue_quorum, initiative_quorum_num, initiative_quorum_den, initiative_quorum) VALUES (1, 'Default policy', '4 days', '8 days', '15 days', '8 days', '15 days', 10, 100, 10, 10, 100, 10);

INSERT INTO policy (index, name, min_admission_time, max_admission_time, discussion_time, verification_time, voting_time, issue_quorum_num, issue_quorum_den, initiative_quorum_num, initiative_quorum_den) VALUES (1, 'Default policy', '4 days', '8 days', '15 days', '8 days', '15 days', 10, 100, 10, 100);

INSERT INTO unit (name) VALUES ('Our organization');

INSERT INTO area (unit_id, name) VALUES (1, 'Default area');

INSERT INTO allowed_policy (area_id, policy_id, default_policy) VALUES (1, 1, TRUE);

-- Admin user with empty password
INSERT INTO member (login, name, admin, password, activated, last_activity)
VALUES ('admin', 'Administrator', TRUE, '$1$/EMPTY/$NEWt7XJg2efKwPm4vectc1', NOW(), NOW());

CREATE TABLE shooting (
   State VARCHAR (75) PRIMARY KEY,
   Count INTEGER
);

CREATE TABLE gun_policy (
id INTEGER,
state VARCHAR (75),
nums INTEGER
);

SELECT b.state, b.policy_score,a.count as total_mass_shootings,
CASE
WHEN b.policy_score >70
THEN 'Restrictive'
WHEN b.policy_score >40
THEN 'Average'
WHEN b.policy_score <40
THEN 'Relaxed'
END AS policy_level
FROM
(SELECT 
state,
(cast(sum(nums) as decimal) /count(state)) * 100 as policy_score
from gun_policy
group by state) b
JOIN shooting a on a.state=b.state;
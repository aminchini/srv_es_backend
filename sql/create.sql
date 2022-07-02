-- embedded_system DataBase

-- Create a new table called 'faucets' in schema 'public'
CREATE TABLE faucets
(
    faucet_id SERIAL PRIMARY KEY, -- primary key column
    is_on BOOLEAN NOT NULL DEFAULT FALSE
);

-- Create a new table called 'schedules' in schema 'public'
CREATE TABLE schedules
(
    id SERIAL PRIMARY KEY, -- primary key column
    faucet_id INT REFERENCES faucets(faucet_id),
    s_date DATE NOT NULL,
    s_from TEXT NOT NULL,
    s_to TEXT NOT NULL
);

-- Create a new table called 'feedback' in schema 'public'
CREATE TABLE feedback
(
    schedule_id INT REFERENCES schedules(id),
    feedback_time text
);

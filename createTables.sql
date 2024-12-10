-- Create Users table
-- CREATE TABLE Users (
--     rand_id VARCHAR(255),
--     email VARCHAR(255),
--     user_name VARCHAR(255),
--     password TEXT,
--     verified_at TIMESTAMP WITH TIME ZONE,
--     cr TIMESTAMP WITH TIME ZONE,   
--     up TIMESTAMP WITH TIME ZONE,  
--     meta JSONB
-- );

-- Create Channels table
CREATE TABLE Channels (
    rand_id VARCHAR(255),        
    cr_rand_id VARCHAR(255),
    status CHAR CHECK (status IN ('0', '1', '3')),  
    owner VARCHAR(255)[],  
    admin VARCHAR(255)[], 
    editor VARCHAR(255)[],
    type VARCHAR(255),
    cr TIMESTAMP WITH TIME ZONE,   
    up TIMESTAMP WITH TIME ZONE,   
    meta JSONB                    
);

-- Create Videos table
CREATE TABLE Videos (
    rand_id VARCHAR(255),
    channel_id VARCHAR(255)[],
    cr_rand_id VARCHAR(255),
    title VARCHAR(255),
    status CHAR CHECK (status IN ('0', '1', '3')),  
    agree_policy VARCHAR(255) CHECK (agree_policy IN ('agreed', 'not agreed')),  
    views_count INTEGER,
    creators JSONB,
    type VARCHAR(255),
    path VARCHAR(255)[], 
    publish_date TIMESTAMP WITH TIME ZONE,
    cr TIMESTAMP WITH TIME ZONE,
    up TIMESTAMP WITH TIME ZONE,
    meta JSONB
);

-- Create Comments table
CREATE TABLE Comments (
    rand_id VARCHAR(255),
    video_id VARCHAR(255), 
    cr_rand_id VARCHAR(255),
    status CHAR CHECK (status IN ('0', '1', '3')),  
    publish_status VARCHAR(255) CHECK (publish_status IN ('done', 'denied', 'pending')), 
    cr TIMESTAMP WITH TIME ZONE,
    up TIMESTAMP WITH TIME ZONE,
    meta JSONB
);

-- Create Reactions table
CREATE TABLE Reactions (
    rand_id VARCHAR(255),
    video_id VARCHAR(255), 
    cr_rand_id VARCHAR(255),
    reaction_type CHAR CHECK (status in ('0','1')), 
    -- status CHAR CHECK (status IN ('0', '1', '3')), 
    cr TIMESTAMP WITH TIME ZONE,
    up TIMESTAMP WITH TIME ZONE,
    meta JSONB
);

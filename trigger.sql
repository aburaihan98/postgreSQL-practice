
CREATE TABLE my_users
(
    user_name VARCHAR(50),
    email VARCHAR(50)
)

INSERT INTO my_users VALUES
('Abu Raihan','raihan@gmail.com'),
('Abu Masud','masud@gmail.com');

SELECT * FROM my_users

CREATE TABLE delete_user_audit
(
    deleted_user_audit VARCHAR(50),
    time TIMESTAMP
)


SELECT * FROM delete_user_audit

-- TRIGGER
CREATE OR REPLACE FUNCTION trigger_fun()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
 BEGIN
      INSERT INTO delete_user_audit VALUES
      (OLD.user_name, now());
      RAISE NOTICE 'Deleted user audit log created';
      RETURN OLD;
 END;
$$;

CREATE OR REPLACE TRIGGER my_trigger
BEFORE DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION trigger_fun();

DELETE FROM my_users WHERE user_name = 'Abu Masud';

INSERT INTO users (name, email)
VALUES ('Alice', 'alice@example.com');
INSERT INTO users (name, email)
VALUES ('Bob', 'bob@example.com');
INSERT INTO users (name, email)
VALUES ('Julien', 'julien@example.com');

INSERT INTO permissions("group", action)
VALUES ('users', 'read');
INSERT INTO permissions("group", action)
VALUES ('users', 'create');
INSERT INTO permissions("group", action)
VALUES ('users', 'update');
INSERT INTO permissions("group", action)
VALUES ('users', 'delete');

INSERT INTO permissions("group", action)
VALUES ('product', 'read');
INSERT INTO permissions("group", action)
VALUES ('product', 'create');
INSERT INTO permissions("group", action)
VALUES ('product', 'update');
INSERT INTO permissions("group", action)
VALUES ('product', 'delete');

-- Génère 50000 users uniques pour créer du volume
INSERT INTO users (name, email)
SELECT 'User ' || x, 'user' || x || '@example.com'
FROM SYSTEM_RANGE(1, 50000);

insert into user_permission(user_id, permission_id)
select users.id, permissions.id from users, permissions where users.name = 'Alice';

insert into user_permission(user_id, permission_id)
select users.id, permissions.id from users, permissions where (users.name = 'Bob' or users.name like 'User%' )and permissions.action = 'read';

insert into user_permission(user_id, permission_id)
select users.id, permissions.id from users, permissions where users.name = 'Julien' and permissions."group" = 'product';

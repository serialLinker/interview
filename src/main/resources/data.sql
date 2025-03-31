INSERT INTO fwk_users (name, email)
VALUES ('Alice', 'alice@example.com');
INSERT INTO fwk_users (name, email)
VALUES ('Bob', 'bob@example.com');
INSERT INTO fwk_users (name, email)
VALUES ('Julien', 'julien@example.com');

INSERT INTO fwk_permissions(category, action)
VALUES ('users', 'read');
INSERT INTO fwk_permissions(category, action)
VALUES ('users', 'create');
INSERT INTO fwk_permissions(category, action)
VALUES ('users', 'update');
INSERT INTO fwk_permissions(category, action)
VALUES ('users', 'delete');

INSERT INTO fwk_permissions(category, action)
VALUES ('product', 'read');
INSERT INTO fwk_permissions(category, action)
VALUES ('product', 'create');
INSERT INTO fwk_permissions(category, action)
VALUES ('product', 'update');
INSERT INTO fwk_permissions(category, action)
VALUES ('product', 'delete');

-- Génère 50000 fwk_users uniques pour créer du volume
INSERT INTO fwk_users (name, email)
SELECT 'User ' || x, 'user' || x || '@example.com'
FROM SYSTEM_RANGE(1, 50000);

insert into fwk_user_permission(user_id, permission_id)
select fwk_users.id, fwk_permissions.id from fwk_users, fwk_permissions where fwk_users.name = 'Alice';

insert into fwk_user_permission(user_id, permission_id)
select fwk_users.id, fwk_permissions.id from fwk_users, fwk_permissions where (fwk_users.name = 'Bob' or fwk_users.name like 'User%' )and fwk_permissions.action = 'read';

insert into fwk_user_permission(user_id, permission_id)
select fwk_users.id, fwk_permissions.id from fwk_users, fwk_permissions where fwk_users.name = 'Julien' and fwk_permissions.category = 'product';

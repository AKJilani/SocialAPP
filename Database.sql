--
-- File generated with SQLiteStudio v3.4.4 on Sat Feb 22 17:48:52 2025
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: auth_group
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);

-- Table: auth_group_permissions
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_permission
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_post', 'Can add post');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_post', 'Can change post');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_post', 'Can delete post');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_post', 'Can view post');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 8, 'add_like', 'Can add like');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 8, 'change_like', 'Can change like');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 8, 'delete_like', 'Can delete like');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'view_like', 'Can view like');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 9, 'add_userprofile', 'Can add user profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 9, 'change_userprofile', 'Can change user profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 9, 'delete_userprofile', 'Can delete user profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 9, 'view_userprofile', 'Can view user profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (37, 10, 'add_share', 'Can add share');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (38, 10, 'change_share', 'Can change share');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (39, 10, 'delete_share', 'Can delete share');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (40, 10, 'view_share', 'Can view share');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (41, 11, 'add_comment', 'Can add comment');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (42, 11, 'change_comment', 'Can change comment');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (43, 11, 'delete_comment', 'Can delete comment');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (44, 11, 'view_comment', 'Can view comment');

-- Table: auth_user
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (2, 'pbkdf2_sha256$870000$1etWFhqTW98bdNJX7pB6TJ$oTdZ+5y4TxXVdcSd5kYrSqMylYn3/Wtld8Xw4kxuPgE=', '2025-02-22 10:35:36.200467', 0, 'Jilani', '', 'ak@gmail.com', 0, 1, '2025-02-18 19:42:30', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (3, 'pbkdf2_sha256$870000$PkNoS7XJrn4VyemHkdefSE$LJ/7yjb8eT8pHZ6brEtraf96gttVhspyNvRAAl4CGcI=', '2025-02-22 10:34:48.117660', 1, 'admin', '', 'admin@mail.com', 1, 1, '2025-02-22 04:24:34.576398', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (4, 'pbkdf2_sha256$870000$blUxnEz1XDBS2b8yEXzD4L$Y22KcxBK2Qi//vTna91V72V0cIBmMgb//ytnCdbshpY=', '2025-02-22 10:18:35.213706', 0, 'habib', '', 'habib@gmail.com', 0, 1, '2025-02-22 05:08:12.020546', '');

-- Table: auth_user_groups
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_user_user_permissions
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: django_admin_log
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (2, '2', 'A.K.Jilani', 2, '[{"changed": {"fields": ["password"]}}]', 4, 3, '2025-02-22 10:35:12.520206');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (3, '2', 'Jilani', 2, '[{"changed": {"fields": ["Username"]}}]', 4, 3, '2025-02-22 10:35:21.277261');

-- Table: django_content_type
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'social_app', 'post');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'social_app', 'like');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'social_app', 'userprofile');
INSERT INTO django_content_type (id, app_label, model) VALUES (10, 'social_app', 'share');
INSERT INTO django_content_type (id, app_label, model) VALUES (11, 'social_app', 'comment');

-- Table: django_migrations
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2025-02-18 19:33:44.583071');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2025-02-18 19:33:44.604724');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2025-02-18 19:33:44.640418');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2025-02-18 19:33:44.657140');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2025-02-18 19:33:44.667114');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2025-02-18 19:33:44.702022');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2025-02-18 19:33:44.717470');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2025-02-18 19:33:44.746189');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2025-02-18 19:33:44.755164');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2025-02-18 19:33:44.772123');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2025-02-18 19:33:44.776993');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2025-02-18 19:33:44.807506');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2025-02-18 19:33:44.823242');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2025-02-18 19:33:44.838780');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2025-02-18 19:33:44.854234');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2025-02-18 19:33:44.865191');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2025-02-18 19:33:44.913851');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'sessions', '0001_initial', '2025-02-18 19:33:44.926903');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'social_app', '0001_initial', '2025-02-18 19:33:44.943857');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'social_app', '0002_comment_share_userprofile_like', '2025-02-22 06:04:40.487039');

-- Table: django_session
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('ektstpgwszip8b8c12aotv07mz8h0tf6', '.eJxVjDsOwjAQBe_iGlnydw0lPWewdr1rHECJFCdVxN0hUgpo38y8TWVcl5bXLnMeWF2UVaffjbA8ZdwBP3C8T7pM4zIPpHdFH7Tr28Tyuh7u30HD3r61JDFk5Ry8dSmYUsnX4NAAEzqWUiNZiBBrBG-hIgcGhMCeAAsmUu8P-Hk4zQ:1tkTUY:WJrJ62Bi6f3IeK50huQVaFAjCEnOZY9jH2Fzdlk9D1M', '2025-03-04 19:42:50.894493');

-- Table: social_app_comment
CREATE TABLE IF NOT EXISTS "social_app_comment" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content" text NOT NULL, "created_at" datetime NOT NULL, "post_id" bigint NOT NULL REFERENCES "social_app_post" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: social_app_like
CREATE TABLE IF NOT EXISTS "social_app_like" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "created_at" datetime NOT NULL, "post_id" bigint NOT NULL REFERENCES "social_app_post" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: social_app_post
CREATE TABLE IF NOT EXISTS "social_app_post" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content" text NOT NULL, "image" varchar(100) NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO social_app_post (id, content, image, created_at, updated_at, user_id) VALUES (5, 'Hello Friends, Welcome to My Restaurant', 'post_images/habib_restaurent_6YUxkyy.jpg', '2025-02-22 09:43:53.503159', '2025-02-22 09:43:53.503159', 4);
INSERT INTO social_app_post (id, content, image, created_at, updated_at, user_id) VALUES (6, 'Hi, GOOD MORNING', 'post_images/good-morning-pic_bvq4iI1.jpg', '2025-02-22 09:44:28.447635', '2025-02-22 09:44:28.447635', 2);
INSERT INTO social_app_post (id, content, image, created_at, updated_at, user_id) VALUES (7, '??????????? ???????? ????', 'post_images/21_february.jpg', '2025-02-22 09:56:50.005704', '2025-02-22 09:56:50.005704', 2);

-- Table: social_app_share
CREATE TABLE IF NOT EXISTS "social_app_share" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "comment" text NOT NULL, "created_at" datetime NOT NULL, "original_post_id" bigint NOT NULL REFERENCES "social_app_post" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: social_app_userprofile
CREATE TABLE IF NOT EXISTS "social_app_userprofile" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "profile_picture" varchar(100) NOT NULL, "bio" text NOT NULL, "location" varchar(100) NOT NULL, "birth_date" date NULL, "user_id" integer NOT NULL UNIQUE REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO social_app_userprofile (id, profile_picture, bio, location, birth_date, user_id) VALUES (1, 'profile_pictures/Habib.jpg', '?? Living my life to the fullest
?? Chasing dreams and making them real
?? Spreading love wherever I go
?? Success is the journey, not the destination', 'Dhaka, Bangladesh', '2002-12-12', 4);
INSERT INTO social_app_userprofile (id, profile_picture, bio, location, birth_date, user_id) VALUES (2, 'profile_pictures/Jilani_Picture.jpg', '?? Freelancer on Fiverr | 100+ 5? Reviews
????? Expert in Delphi, C#, Python, MSSQL, MySQL
?? Adobe Illustrator & Photoshop Pro
?? Turning Ideas into Digital Reality', 'Dhaka, Bangladesh', '1995-10-15', 2);

-- Index: auth_group_permissions_group_id_b120cbf9
CREATE INDEX IF NOT EXISTS "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");

-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");

-- Index: auth_group_permissions_permission_id_84c5c92e
CREATE INDEX IF NOT EXISTS "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");

-- Index: auth_permission_content_type_id_2f476e4b
CREATE INDEX IF NOT EXISTS "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");

-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");

-- Index: auth_user_groups_group_id_97559544
CREATE INDEX IF NOT EXISTS "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");

-- Index: auth_user_groups_user_id_6a12ed8b
CREATE INDEX IF NOT EXISTS "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");

-- Index: auth_user_groups_user_id_group_id_94350c0c_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");

-- Index: auth_user_user_permissions_permission_id_1fbb5f2c
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");

-- Index: auth_user_user_permissions_user_id_a95ead1b
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");

-- Index: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");

-- Index: django_admin_log_content_type_id_c4bce8eb
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");

-- Index: django_admin_log_user_id_c564eba6
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");

-- Index: django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");

-- Index: django_session_expire_date_a5c62663
CREATE INDEX IF NOT EXISTS "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");

-- Index: social_app_comment_post_id_2bf2bb57
CREATE INDEX IF NOT EXISTS "social_app_comment_post_id_2bf2bb57" ON "social_app_comment" ("post_id");

-- Index: social_app_comment_user_id_50b4ba1e
CREATE INDEX IF NOT EXISTS "social_app_comment_user_id_50b4ba1e" ON "social_app_comment" ("user_id");

-- Index: social_app_like_post_id_01166441
CREATE INDEX IF NOT EXISTS "social_app_like_post_id_01166441" ON "social_app_like" ("post_id");

-- Index: social_app_like_user_id_a32de496
CREATE INDEX IF NOT EXISTS "social_app_like_user_id_a32de496" ON "social_app_like" ("user_id");

-- Index: social_app_like_user_id_post_id_4eef7ee5_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "social_app_like_user_id_post_id_4eef7ee5_uniq" ON "social_app_like" ("user_id", "post_id");

-- Index: social_app_post_user_id_668022b3
CREATE INDEX IF NOT EXISTS "social_app_post_user_id_668022b3" ON "social_app_post" ("user_id");

-- Index: social_app_share_original_post_id_4e843aad
CREATE INDEX IF NOT EXISTS "social_app_share_original_post_id_4e843aad" ON "social_app_share" ("original_post_id");

-- Index: social_app_share_user_id_4399c338
CREATE INDEX IF NOT EXISTS "social_app_share_user_id_4399c338" ON "social_app_share" ("user_id");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;

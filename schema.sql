CREATE TABLE "users" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "last_activate" TEXT NOT NULL DEFAULT CURRENT_DATE,
    PRIMARY KEY("id")
);

CREATE TABLE "posts" (
    "id" INTEGER,
    "title" TEXT,
    "description" TEXT,
    "content" TEXT NOT NULL,
    "like" INTEGER,
    "created_date" TEXT NOT NULL DEFAULT CURRENT_DATE,
    "updated_date" TEXT,
    "posted_by" TEXT,
    FOREIGN KEY("posted_by") REFERENCES "users"("id")
);

CREATE TABLE "comments" (
    "post_id" TEXT,
    "user_id" TEXT,
    "comment" TEXT,
    "created_date" TEXT NOT NULL DEFAULT CURRENT_DATE,
    FOREIGN KEY("post_id") REFERENCES "posts"("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id")
);

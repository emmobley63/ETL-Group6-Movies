-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Title" (
    "title" VARCHAR(50)   NOT NULL,
    "type_id" int   NOT NULL,
    "genre_id" int   NOT NULL,
    "rating_id" int   NOT NULL,
    "disney" boolean   NOT NULL,
    "Netflix" boolean   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "title"
     )
);

CREATE TABLE "Type_id" (
    "id" int   NOT NULL,
    "type" int   NOT NULL,
    CONSTRAINT "pk_Type_id" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "IMDB_rating" (
    "id" int   NOT NULL,
    "rating" float   NOT NULL,
    CONSTRAINT "pk_IMDB_rating" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "genre" (
    "id" int   NOT NULL,
    "genre" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_genre" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "Title" ADD CONSTRAINT "fk_Title_type_id" FOREIGN KEY("type_id")
REFERENCES "Type_id" ("id");

ALTER TABLE "Title" ADD CONSTRAINT "fk_Title_genre_id" FOREIGN KEY("genre_id")
REFERENCES "genre" ("id");

ALTER TABLE "Title" ADD CONSTRAINT "fk_Title_rating_id" FOREIGN KEY("rating_id")
REFERENCES "IMDB_rating" ("id");


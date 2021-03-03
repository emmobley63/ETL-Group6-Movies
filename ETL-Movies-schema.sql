-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Title" (
    "title" VARCHAR(100)   NOT NULL,
    "type" VARCHAR(30)   NOT NULL,
    "year_id" INT   NOT NULL,
    "rating_id" INT   NOT NULL,
    "netflix" BOOLEAN   NOT NULL,
    "disney" BOOLEAN   NOT NULL
);

CREATE TABLE "imdb_rating" (
    "rating_id" SERIAL   NOT NULL,
    "imdb_rating" float   NOT NULL,
    CONSTRAINT "pk_imdb_rating" PRIMARY KEY (
        "rating_id"
     )
);

CREATE TABLE "release_year" (
    "year_id" SERIAL   NOT NULL,
    "release_year" INT   NOT NULL,
    CONSTRAINT "pk_release_year" PRIMARY KEY (
        "year_id"
     )
);

ALTER TABLE "Title" ADD CONSTRAINT "fk_Title_year_id" FOREIGN KEY("year_id")
REFERENCES "release_year" ("year_id");

ALTER TABLE "Title" ADD CONSTRAINT "fk_Title_rating_id" FOREIGN KEY("rating_id")
REFERENCES "imdb_rating" ("rating_id");


-- name: CreateBook :one
INSERT INTO "books" (
  "title", "author", "year", "pages", "synopsis"
) VALUES (
  $1, $2, $3, $4, $5
) RETURNING "id";

-- name: GetBook :one
SELECT * FROM "books"
WHERE "title" = $1;

-- name: ListBooks :many
SELECT * FROM "books"
ORDER BY "title"
LIMIT $1;

-- name: UpdateBook :exec
UPDATE "books"
SET "title" = $1,
    "author" = $2,
    "year" = $3,
    "pages" = $4,
    "synopsis" = $5,
    "updated_at" = $6
WHERE "id" = $7;

-- name: DeleteBook :exec
DELETE FROM "books"
WHERE "id" = $1;
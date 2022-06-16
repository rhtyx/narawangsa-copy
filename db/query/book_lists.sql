-- name: CreateBookList :exec
INSERT INTO "book_lists" (
  "user_id", "book_id", "is_read", "pages_read", "end_date"
) VALUES (
  $1, $2, $3, $4, $5
);

-- name: ListBookList :many
SELECT * from "book_lists"
WHERE "user_id" = $1
ORDER BY "book_id";

-- name: UpdateBookList :exec
UPDATE "book_lists"
SET "is_read" = $1,
    "pages_read" = $2,
    "end_date" = $3,
    "updated_at" = $4
WHERE "user_id" = $5 AND "book_id" = $6;

-- name: DeleteBookList :exec
DELETE FROM "book_lists"
WHERE "book_id" = $1;
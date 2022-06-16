-- name: CreateBookCategory :exec
INSERT INTO "category_books" (
  "book_id", "category_id"
) VALUES (
  $1, $2
);

-- name: DeleteBookCategory :exec
DELETE FROM "category_books"
WHERE "book_id" = $1 AND "category_id" = $2;
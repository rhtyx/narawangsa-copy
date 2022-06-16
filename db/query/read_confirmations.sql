-- name: CreateReadConfirmation :exec
INSERT INTO "read_confirmations" (
  "book_list_id", "pages_read"
) VALUES (
  $1, $2
);

-- name: ListReadConfirmations :many
SELECT "book_list_id", "pages_read"
FROM "read_confirmations"
WHERE "book_list_id" = $1
LIMIT $2;
-- name: CreateCategory :exec
INSERT INTO "categories" (
  "name"
) VALUES (
  $1
);

-- name: GetCategory :one
SELECT * FROM "categories"
WHERE "name" = $1;

-- name: ListCategories :many
SELECT * FROM "categories"
ORDER BY "name"
LIMIT $1
OFFSET $2;

-- name: UpdateCategory :exec
UPDATE "categories"
SET "name" = $1,
    "updated_at" = $2
WHERE "id" = $3;

-- name: DeleteCategory :exec
DELETE FROM "categories"
WHERE "name" = $1;
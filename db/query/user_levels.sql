-- name: CreateUserLevel :exec
INSERT INTO "user_levels" (
  "user_id"
) VALUES (
  $1
);

-- name: GetUserLevel :one
SELECT "user_id", "level" FROM "user_levels"
WHERE "user_id" = $1;

-- name: UpdateUserLevelsLevel :exec
UPDATE "user_levels"
SET "level" = $2,
    "updated_at" = $3
WHERE "user_id" = $1;
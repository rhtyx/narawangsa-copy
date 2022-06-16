-- name: CreateUser :exec
INSERT INTO "users" (
  "name", "username", "email", "password"
) VALUES (
  $1, $2, $3, $4
);

-- name: GetUser :one
SELECT "id", "name", "username", "email" FROM "users" 
WHERE "username" = $1;

-- name: UpdateUser :one
UPDATE "users"
SET "name" = $1,
    "email" = $2,
    "updated_at" = $3
WHERE "username" = $4
RETURNING "name", "email";

-- name: UpdatePasswordUser :exec
UPDATE "users"
SET "password" = $1,
    "updated_at" = $2
WHERE "username" = $3;

-- name: DeleteUser :exec
DELETE FROM "users"
WHERE "username" = $1;
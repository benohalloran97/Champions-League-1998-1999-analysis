CREATE TABLE "Results" (
    id SERIAL PRIMARY KEY,
    hometeam TEXT NOT NULL,
    awayteam TEXT NOT NULL,
    hscore INT NOT NULL,
    ascore INT NOT NULL,
    winner TEXT NOT NULL
);
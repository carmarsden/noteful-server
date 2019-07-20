CREATE TABLE noteful_folders (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    fol_name TEXT NOT NULL
);

CREATE TABLE noteful_notes (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    note_name TEXT NOT NULL,
    date_modified TIMESTAMP NOT NULL DEFAULT now(),
    content TEXT,
    fol_id INTEGER REFERENCES noteful_folders(id) ON DELETE CASCADE
);
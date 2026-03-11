CREATE TABLE IF NOT EXISTS chatbot_db (
    id SERIAL PRIMARY KEY,
    chatID VARCHAR(255),
    username VARCHAR(255),
    mensajeUser TEXT,
    mensajeIA TEXT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

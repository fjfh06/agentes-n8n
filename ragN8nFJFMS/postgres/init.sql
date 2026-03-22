-- Tabla para registrar los documentos procesados
CREATE TABLE IF NOT EXISTS documentos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    ruta_archivo TEXT,
    num_chunks INTEGER,
    fecha_procesado TIMESTAMP DEFAULT NOW()
);

-- Índice para búsquedas rápidas por el nombre del documento
CREATE INDEX IF NOT EXISTS idx_documentos_nombre ON documentos(nombre);

-- Tabla para almacenar el historial de interacciones RAG
CREATE TABLE IF NOT EXISTS consultas_rag (
    id SERIAL PRIMARY KEY,
    pregunta TEXT NOT NULL,
    respuesta TEXT NOT NULL,
    documentos_usados TEXT[], -- Array de nombres de documentos utilizados como contexto
    timestamp TIMESTAMP DEFAULT NOW()
);

-- Índice para optimizar búsquedas cronológicas (descendente)
CREATE INDEX IF NOT EXISTS idx_consultas_timestamp ON consultas_rag(timestamp DESC);

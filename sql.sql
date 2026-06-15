-- Tablas SQL reales para vuestra futura base de datos

-- 1. Tabla de Publicaciones de Viajes
CREATE TABLE posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(255) NOT NULL,
    img_url TEXT NOT NULL,         -- Aquí guardaréis el enlace que subáis a un servidor
    caption TEXT,
    seen BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Tabla de Comentarios independientes vinculados a cada post
CREATE TABLE comments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    post_id INT,                   -- Conecta con la id del post
    user_name VARCHAR(100) NOT NULL,
    text_content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE
);

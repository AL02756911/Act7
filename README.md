# Nombre del Proyecto

Act7 - Plataforma para la escuela de robótica

## Descripción del Proyecto

Esta plataforma permite a docentes, estudiantes y administrativos gestionar cursos y materiales didácticos. Incluye funcionalidades para asignar cursos a grupos, gestionar kits de robótica, y proporcionar una interfaz para el acceso y administración de la información.

## Diagrama ER

```mermaid
erDiagram
    USUARIO {
        int id PK
        string nombre
        string email
        string password
        string rol
        int grupo_id FK "opcional: solo para estudiantes"
    }
    GRUPO {
        int id PK
        string nombre "principiante, intermedio, avanzado, etc."
    }
    CURSO {
        int id PK
        string course_key "ej: Rob101"
        string titulo
        string caratula "ruta o nombre de imagen"
        text contenido
        string kit_robotica "ej: StarterKit, Kit5"
        int grupo_id FK "si asignas el curso a un grupo"
    }
    KIT {
        int id PK
        string nombre
    }
    MATERIAL_DIDACTICO {
        int id PK
        string nombre "título o descripción"
        string archivo "ruta del material (opcional)"
        int curso_id FK
    }

    %% Relaciones
    USUARIO }|..|{ GRUPO : "pertenece a"
    GRUPO ||--o{ CURSO : "asigna"
    CURSO ||--o{ MATERIAL_DIDACTICO : "contiene"
    CURSO }|..|| KIT : "usa"

# Librería John & Letras

**Autor:** Jhon Alexander Jurado Hurtado
**Materia:** Programación Web VII — Trabajo individual

## Propósito

Sitio web de una librería que presenta el negocio, su catálogo de libros y una
comunidad de lectores. Está construido con HTML, CSS y JavaScript en un solo
archivo (`index.html`), sin frameworks ni proceso de compilación, por lo que se
puede publicar directamente con GitHub Pages.

## Funcionalidades

- **Página de inicio** con navegación por secciones y menú adaptable a móvil.
- **Quiénes somos y Servicios** con información de la librería.
- **Catálogo de libros**: los datos se leen desde `libros.json`; incluye buscador
  por título o autor y filtro por género.
- **Consulta de usuarios (comunidad)**: modal que consume la API pública
  JSONPlaceholder.
  - `GET /users` para listar los lectores.
  - `GET /posts?userId=ID` para mostrar las publicaciones del lector elegido.
  - Buscador por nombre, correo, empresa o número de usuario, con estados de
    carga y error, botón de reintentar y cancelación de peticiones anteriores
    (`AbortController`).
- **Contacto** con enlaces a teléfono, correo, WhatsApp y redes sociales.
- Accesibilidad básica: enlace para saltar al contenido, etiquetas `aria`,
  foco visible y respeto a `prefers-reduced-motion`.

## Archivos

| Archivo | Descripción |
| --- | --- |
| `index.html` | Estructura, estilos y lógica del sitio. |
| `libros.json` | Datos del catálogo de libros. |
| `cover.svg` | Portada de respaldo cuando un libro no tiene imagen. |
| `Codigo_Consulta.txt` | Fragmentos de la consulta pedidos en clase. |
| `iniciar.bat` | Abre un servidor local en el puerto 8099 (Windows). |

## Cómo ejecutarlo localmente

El catálogo se carga con `fetch`, así que hay que servirlo por HTTP y no abrir el
archivo con doble clic. En Windows basta con ejecutar `iniciar.bat`, o desde la
terminal:

```bash
python -m http.server 8099
```

Luego abre <http://localhost:8099/index.html>.

## Sitio publicado

Enlace de GitHub Pages: _(se agregará al terminar el despliegue)_

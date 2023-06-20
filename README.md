# El recetario digital

## Introducción

La tarea es desarrollar un libro de cocina digital, un repositorio de recetas culinarias con
capacidades de búsqueda simples con una interfaz HTML. La aplicación debe ser
desarrollado en Ruby on Rails y hace uso de la base de datos SQLite3.

## Modelos

La aplicación tiene dos modelos: `Recipe` e `Ingredient`. Hay
una asociación de uno a muchos entre ellos.

El modelo `Recipe` tiene al menos los siguientes atributos: `name` e `instructions`
almacena datos textuales y `cooking_time` almacena datos numéricos. El 'Ingrediente'
el modelo tiene el atributo 'nombre' que almacena datos textuales. Ambos modelos pueden tener
otras columnas también, por ejemplo, cuando sean requeridos por las asociaciones.

Se requieren las siguientes validaciones del modelo:

* El `name` de la receta debe estar presente y no debe tener más de 100 caracteres.
* Las `instructions` de la receta deben estar presentes y no deben tener más de 1000 caracteres.
* El `cooking_time` de la receta debe estar presente y ser mayor que 0.
* El `name` del ingrediente debe estar presente y no debe tener más de 100 caracteres.

## Buscando

Cuando el usuario visita una URL raíz (solicitud GET en la ruta `/`), se abre un formulario de búsqueda
desplegado. El formulario consta de:

1. entrada de tipo de texto con la etiqueta "Cuisine"
2. entrada de tipo de texto con la etiqueta "Ingrediente"
3. botón con la etiqueta "Buscar".

Al hacer clic en "Buscar" se ejecuta una solicitud de búsqueda. En el resultado, el usuario es
navegó a una página que enumera todas las recetas coincidentes.

Si se proporcionó la "Cuisine" en el formulario de búsqueda, entonces el conjunto de resultados es
limitada a recetas cuya cocina iguale al valor proporcionado.

Si se proporcionó el "Ingredient" en el formulario de búsqueda, entonces el conjunto de resultados es
limitado a recetas que tienen un ingrediente con nombre que es igual a ese
valor proporcionado.

Si ambos campos se han dejado en blanco, el conjunto de resultados incluye todas las recetas.
en la base de datos En caso de que no se hayan encontrado recetas, aparecerá "No se encontraron recetas".
debe mostrarse.

Cada receta coincidente debe mostrarse de una manera que incluya su nombre,
instrucciones, tiempo de cocción (seguido del sufijo "min") y nombres de los
ingredientes.

La combinación de recetas e ingredientes se puede realizar con distinción entre mayúsculas y minúsculas o
una manera insensible a mayúsculas y minúsculas, ambos pasarán las pruebas. Ni el orden de
las recetas mostradas son importantes.

Ver pruebas de integración para más detalles. Para simular el usuario
interacciones, se ha empleado [Capybara](http://jnicklas.github.io/capybara/).
Dicho esto, el conocimiento de esta gema no es necesario para comprender el conjunto de pruebas.

## Rutas, controladores y vistas

No hay restricciones en los controladores, rutas y vistas, a excepción de estos
que se puede concluir a partir del caso de uso de búsqueda. Cualquier versión de HTML y DOM
estructura funciona siempre que proporcione la funcionalidad descrita.
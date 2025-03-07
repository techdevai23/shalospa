
![Github Actions](https://github.com/remast/gobuff_realworld_example_app/workflows/CI%20Build/badge.svg)

# ![RealWorld Example App](logo.png)

> ### Buffalo codebase containing real world examples (CRUD, auth, advanced patterns, etc) that adheres to the [RealWorld](https://github.com/gothinkster/realworld) spec and API.


### [Demo](https://gobuff-realworld-example-app.herokuapp.com/)&nbsp;&nbsp;&nbsp;&nbsp;[RealWorld](https://github.com/gothinkster/realworld)

HEMOS BASADO NUESTRA TAREA EN TRABAJAR CON ESTA APLICACIÓN. LOS PASOS PRINCIPALES DE LA TAREA SON:

# Proyecto Shalospa

## Selección de una aplicación web  

En nuestro caso hemos creado el repositorio [`techdevai23/shalospa`](https://github.com/techdevai23/shalospa), el cual es un **fork** de [`remast/gobuff_realworld_example_app`](https://github.com/remast/gobuff_realworld_example_app).  

Este proyecto es una implementación de una aplicación real utilizando el framework **Buffalo**, alineada con las especificaciones de la API de **RealWorld**.

## Gestión del código en GitHub  
Un integrante del equipo (dueño del repositorio) debe **crear un nuevo repositorio o hacer un fork** del repositorio original.  
El repositorio resultante debe ser **público** y el resto de los miembros deben ser **añadidos como colaboradores**.

## Realizar modificaciones en la aplicación  
Todos los integrantes deben realizar los siguientes cambios en la aplicación:

- **Modificar el contenido de los textos o imágenes** (mínimo 1 cambio).  
- **Cambios estéticos en estilos o colores** (mínimo 1 cambio).  

Cada uno de los cambios debe ser **integrado en un commit diferente** con un mensaje descriptivo explicando en qué consiste.

## Fusionar cambios en el repositorio  
El **dueño del repositorio** deberá **revisar y fusionar los pull requests** en la rama principal.

## Despliegue de la aplicación  
Elegimos **Railway** como plataforma de hosting.  
Inicialmente, seleccionamos **Netlify**, pero encontramos que no funcionaba correctamente con esta aplicación.

## Documentación del proyecto  
Se documentarán todos los pasos anteriores, además de las siguientes cuestiones:

### a) Tecnologías utilizadas  
Se describirá la aplicación web en términos de **backend y frontend**, mencionando **frameworks y lenguajes de programación** empleados.

### b) Hosting gratuito  
Se explicará el servicio de hosting gratuito elegido, incluyendo:

- **Planes gratuitos y sus limitaciones**.  
- **Proceso de despliegue** y su integración con GitHub.  
- **Explicación de los subdominios que ofrece el servicio de hosting**.  
- **Si el servicio de hosting del backend es serverless o no**.


This codebase was created to demonstrate a fully fledged fullstack application built with **[Buffalo](http://gobuffalo.io)** including CRUD operations, authentication, routing, pagination, and more.

We've gone to great lengths to adhere to the **[Buffalo](http://gobuffalo.io)** community styleguides & best practices.

For more information on how to this works with other frontends/backends, head over to the [RealWorld](https://github.com/gothinkster/realworld) repo.

# Getting started

## 1. Start the app

	buffalo dev

## 2. Start the database

	docker run --name rw_db -e POSTGRES_DB=gobuff_realworld_example_app_development -e POSTGRES_PASSWORD=postgres -e POSTGRES_USER=postgres -p 5432:5432 -d postgres

## 3. Update the database

	buffalo pop migrate

If you point your browser to [http://127.0.0.1:3000](http://127.0.0.1:3000) you should see the home page.

## Running the tests

	buffalo test --force-migrations
	buffalo test models -m "ArticleFavorite" --force-migrations

# How it works

[Buffalo](http://gobuffalo.io) web application with server side rendering, server side user session and PostgreSQL database.

## Authentication
Authentication is generated by [Auth Generator for Buffalo](https://github.com/gobuffalo/buffalo-auth).

## Pagination of Articles
Uses [pop](https://github.com/gobuffalo/pop)'s [paginator](https://github.com/gobuffalo/pop/blob/master/paginator.go) as described in [Pagination](https://github.com/gobuffalo/tags/wiki/Pagination).

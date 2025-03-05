#nuevo docker
# Etapa 1: Construcción de la aplicación
FROM golang:1.19 as builder

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar archivos del repositorio al contenedor
COPY . .

# Instalar Buffalo CLI
RUN go install github.com/gobuffalo/cli/cmd/buffalo@latest

# Compilar la aplicación Buffalo
RUN buffalo build --static -o /bin/app

# Etapa 2: Imagen final
FROM alpine:latest

# Instalar dependencias necesarias
RUN apk --no-cache add ca-certificates

# Crear directorio para la aplicación
RUN mkdir /app

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar la aplicación compilada desde la etapa de construcción
COPY --from=builder /bin/app .

# Exponer el puerto en el que la aplicación se ejecutará
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["./app", "serve", "--production"]

# Renderizar la página web
rmarkdown::render_site(encoding = "UTF-8")

#### Conexiones con bases de datos

### Librerias
library("RPostgres")
library("DBI")
library("sf")

# Parámetros de la conexión
driver <- RPostgres::Postgres()
DB <- 'pilaresdb'
huesp <- 'locahost'
puerto <- '5432'
usuario <- 'postgres'
psswd <- 'bro633801'

# Conexión
con <- dbConnect(driver, dbname = DB, host=huesp, port=puerto,
                 user=usuario, password=psswd)  

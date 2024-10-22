setRefClass("Clima",fields = list(datos = "data.frame"),
  methods = list(
    inicializar = function() {
      datos <<- data.frame(dia = integer(0), temperatura = numeric(0))
    },
    
    agregar_dato = function(dia, temperatura) {
      datos <<- rbind(datos, data.frame(dia = dia, temperatura = temperatura))
    },
    
    calcular_promedio = function() {
      return(mean(datos$temperatura))
    },
    
    calcular_maxima = function() {
      return(max(datos$temperatura))
    },
    
    calcular_minima = function() {
      return(min(datos$temperatura))
    },
    
    mostrar_datos = function() {
      print(datos)
    }
  )
)


mi_clima <- new("Clima")
mi_clima$inicializar()

mi_clima$agregar_dato(1, 22)
mi_clima$agregar_dato(2, 24)
mi_clima$agregar_dato(3, 19)
mi_clima$agregar_dato(4, 23)
mi_clima$agregar_dato(5, 25)
mi_clima$agregar_dato(6, 20)
mi_clima$agregar_dato(7, 21)

mi_clima$mostrar_datos()

print(paste("Temperatura promedio:", mi_clima$calcular_promedio()))
print(paste("Temperatura máxima:", mi_clima$calcular_maxima()))
print(paste("Temperatura mínima:", mi_clima$calcular_minima()))
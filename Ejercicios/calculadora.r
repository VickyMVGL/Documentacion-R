sumar <- function(a, b) {

    return(a + b)

}

restar <- function(a, b) {

    return(a - b)

}

multiplicar <- function(a, b) {

    return(a * b)

}

dividir <- function(a, b) {

    if (b == 0) {

        return("Error: División por cero.")

    }
    else {

        return(a / b)

    }

}

calcular <- function() {

    a <- as.numeric(readline(prompt="Ingrese el primer número: "))
    b <- as.numeric(readline(prompt="Ingrese el segundo número: "))
    operacion <- readline(prompt="Elige la operación(+, - *, /): ")
    if (operacion == "+") {

        resultado <- sumar(a, b)

    }
    else if (operacion == "-") {

        resultado <- restar(a, b)

    }
    else if (operacion == "*") {

        resultado <- multiplicar(a, b)

    }
    else if (operacion == "/") {

        resultado <- dividir(a, b)

    }
    else{

        resultado <- "Operacion no válida."

    }

    print(paste("El resultado es: ", resultado))

}

calcular()
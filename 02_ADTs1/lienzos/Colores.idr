module Colores

data RGB = Red | Green | Blue
data CMY = Cyan | Magenta | Yellow

-- Se requiere agregar una etiqueta a cada tipo
data Color = R RGB | C CMY

complemento : Color -> Color
complemento (R Red) = C Cyan
complemento (R Green) = C Magenta
complemento (R Blue) = C Yellow
complemento (C Cyan) = R Red
complemento (C Magenta) = R Green
complemento (C Yellow) = R Blue


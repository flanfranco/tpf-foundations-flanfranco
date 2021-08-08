### Elección de dataset y preguntas

El [dataset seleccionado](https://www.kaggle.com/olistbr/brazilian-ecommerce) presenta datos públicos de comercio electrónico pertenecientes al sitio brasileño [Olist Store](https://olist.com).

#### :pushpin: Acerca del dataset 

El dataset contiene información de aproximadamente 100k pedidos provenientes de los distintos canales de venta que gestiona la plataforma Olist Store. Los mismos se corresponden al periodo que va desde el año 2016 al 2018. El dataset permite ver un pedido a partir de múltiples dimensiones: desde su estado, precio, pago y desempeño del flete, hasta la ubicación del cliente, los atributos del producto y finalmente las reseñas escritas por los clientes.

#### :pushpin: Contexto 

Olist Store es una plataforma que conecta pequeñas empresas de todo Brasil con diferentes canales de ventas. Esos comerciantes pueden vender sus productos a través de Olist Store y enviarlos directamente a los clientes mediante los socios logísticos de Olist. Después de que un cliente compra el producto en Olist Store, un vendedor recibe una notificación para cumplir con ese pedido. Una vez que el cliente recibe el producto, o vence la fecha estimada de entrega, el cliente recibe una encuesta de satisfacción por correo electrónico donde puede dar una nota por la experiencia de compra y anotar algunos comentarios. 

#### :mag: Análisis 

Bajo la premisa de que el comercio electrónico está creciendo :chart_with_upwards_trend: continuamente de manera global :earth_americas:, resulta interesante poder evaluar si en Brasil también se experimenta dicha tendencia, al menos para el periodo compartido en el dataset. 

A continuación se listan algunas preguntas a responder ejecutando consultas sobre dicho dataset:

En referencia a la cantidad de pedidos:
1. ¿Es posible visualizar dicha tendencia :chart_with_upwards_trend:? ¿En qué día de la semana :date: los compradores brasileños tienden a realizar sus compras :shopping_cart: online? ¿Y en qué momento :clock11: (amanecer, mañana, tarde o noche)? 
2. ¿Cómo se distribuyen :round_pushpin: los compradores en Brasil (estado, ciudad)?

Respecto a las ventas:

3. Analizando el monto de venta :heavy_dollar_sign: , costo del flete :truck: y el tiempo de entrega :hourglass:,  ¿cuáles son los mejores estados para comprar en Brasil? 

Finalmente, en referencia a los pagos:

4. ¿Cuáles son los medios de pagos :credit_card: que prefieren los compradores brasileños?

#### Esquema de datos

A modo de referencia se presenta el siguiente esquema de datos donde se muestra el relacionamiento entre las distintas fuentes que provienen de los archivos .csv del dataset en estudio. 

![Image of the Data Schema](https://i.imgur.com/HRhd2Y0.png)

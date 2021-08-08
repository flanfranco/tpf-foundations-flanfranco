# ITBA - Cloud Data Engineering
## Trabajo Práctico Final Foundations 
### 👨🏽‍💻 Flavio Lanfranco - Versión 20210808

El [dataset seleccionado](https://www.kaggle.com/olistbr/brazilian-ecommerce) presenta datos públicos de comercio electrónico pertenecientes al sitio brasileño [Olist Store](https://olist.com).

#### 📌 Acerca del dataset 

El dataset contiene información de aproximadamente 100k pedidos provenientes de los distintos canales de venta que gestiona la plataforma Olist Store. Los mismos se corresponden al periodo que va desde el año 2016 al 2018. El dataset permite ver un pedido a partir de múltiples dimensiones: desde su estado, precio, pago y desempeño del flete, hasta la ubicación del cliente, los atributos del producto y finalmente las reseñas escritas por los clientes.

#### 📌 Contexto 

Olist Store es una plataforma que conecta pequeñas empresas de todo Brasil con diferentes canales de ventas. Esos comerciantes pueden vender sus productos a través de Olist Store y enviarlos directamente a los clientes mediante los socios logísticos de Olist. Después de que un cliente compra el producto en Olist Store, un vendedor recibe una notificación para cumplir con ese pedido. Una vez que el cliente recibe el producto, o vence la fecha estimada de entrega, el cliente recibe una encuesta de satisfacción por correo electrónico donde puede dar una nota por la experiencia de compra y anotar algunos comentarios. 

#### 🔍 Análisis 

Bajo la premisa de que el comercio electrónico está creciendo 📈 continuamente de manera global 🌎, resulta interesante poder evaluar si en 🇧🇷 también se experimenta dicha tendencia, al menos para el periodo compartido en el dataset. 

A continuación se listan algunas preguntas a responder ejecutando consultas sobre dicho dataset:

##### En referencia a la cantidad de pedidos:
1. ¿Es posible visualizar 📈 dicha tendencia? 
2. ¿Cómo se distribuyen 📍 los compradores en Brasil?

##### Respecto a las ventas:

3. Analizando el monto de venta 💵  ¿cómo se distribuyen las mismas a través del tiempo?
4. ¿En qué meses calendario 🗓 el monto de venta es mayor?
5. ¿Y en qué días 📆 de la semana?
6. ¿Cuáles son las 20 categorías de productos 🛒 con mayor monto de venta generado 💰?

##### Finalmente, en referencia a los pagos:

7. ¿Cuáles son los medios de pagos 💳 que prefieren los compradores brasileños?

#### 📌 Modelo de Datos
![Image of the Data Model](https://github.com/flanfranco/tpf-foundations-flanfranco/blob/main/documentation/images/00_data_model.png)

#### 📢 Guía para el análisis:

Utilizando una Jupyter Notebook se va a compartir el código desarrollado en python 🐍 correspondiente a la ejecución de consultas SQL sobre la base de datos de Olist junto con la explotación analítica del resultado de dichas consultas, que buscan responder los requerimientos planteados. 

La idea 💡 es que de manera interactiva se pueda ir ejecutando (⌨️ ctrl+enter) cada una de las celdas de código presentadas, para luego poder visualizar el análisis 📊 resultante con el objeto de contrastar 🤔 con las respuestas comentadas.

En el siguiente [link](https://github.com/flanfranco/tpf-foundations-flanfranco/blob/main/README.md#gu%C3%ADa-de-ejecuci%C3%B3n) se detallan los pasos a seguir para acceder a la Jupyter Notebook.

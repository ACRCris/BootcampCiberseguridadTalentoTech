# Libreto de Presentación
## Fortaleciendo la Red de Empresa XYZ
### Cristian Camilo Perez Puentes - Bootcamp 2025

---

## Diapositiva 1: Portada
**[RETO FINAL - Fortaleciendo la Red de Empresa XYZ]**

> "Buenos días/tardes a todos. Mi nombre es Cristian Camilo Perez Puentes y hoy les presento mi proyecto final del Bootcamp de Ciberseguridad 2025. El objetivo de este trabajo es fortalecer la infraestructura de red de la Empresa XYZ, aplicando los conceptos y técnicas aprendidos durante el curso."

---

## Diapositiva 2: Temas
**[Agenda de la presentación]**

> "Durante esta presentación abordaremos cinco temas principales:
> 
> Primero, realizaremos un **análisis inicial** del escenario y las vulnerabilidades detectadas.
> 
> Segundo, explicaremos las **configuraciones aplicadas** para mitigar los riesgos.
> 
> Tercero, presentaremos las **políticas de seguridad** implementadas.
> 
> Cuarto, haremos una **justificación teórica** basada en la tríada CIA y principios de seguridad.
> 
> Y finalmente, las **conclusiones** y recomendaciones futuras."

---

## Diapositiva 3: Sección - Análisis Inicial
**[Transición de sección]**

> "Comencemos con el análisis inicial de la red."

---

## Diapositiva 4: Escenario Inicial
**[Red inicial con problemas]**

> "La Empresa XYZ contaba con una red completamente plana, sin ningún tipo de segmentación. Como pueden ver en la imagen, todos los dispositivos estaban conectados en un mismo segmento de red.
> 
> Los principales problemas identificados fueron:
> - **No existía un firewall** ni controles de acceso entre la red interna e Internet
> - **Puertos abiertos innecesarios** en los equipos
> - La **red plana** permitía que cualquier dispositivo se comunicara con cualquier otro
> - Todo esto hacía a la red **altamente vulnerable** a ataques
> 
> Nuestros objetivos fueron: evaluar las vulnerabilidades, rediseñar la topología, implementar controles técnicos y definir políticas organizacionales."

---

## Diapositiva 5: Vulnerabilidades Detectadas
**[Tabla de riesgos y análisis CIA]**

> "Identificamos tres vulnerabilidades críticas:
> 
> **La ausencia de firewall** representa un riesgo CRÍTICO, ya que todo el tráfico fluye sin inspección, exponiendo completamente la red.
> 
> **Los puertos abiertos innecesarios**, como HTTP y HTTPS en el PC administrativo, representan un riesgo ALTO por ser posibles vectores de ataque.
> 
> **La falta de segmentación** también es de riesgo ALTO, porque permite el movimiento lateral libre de un atacante dentro de la red.
> 
> En términos de la tríada CIA: la **Confidencialidad** se ve comprometida por accesos no autorizados, la **Integridad** por posible modificación de datos, y la **Disponibilidad** por ataques de denegación de servicio y malware."

---

## Diapositiva 6: Sección - Configuraciones Aplicadas
**[Transición de sección]**

> "Pasemos ahora a las configuraciones que implementamos para mitigar estos riesgos."

---

## Diapositiva 7: Nueva Topología Segmentada
**[Imagen de la red mejorada]**

> "Rediseñamos completamente la topología de red con las siguientes mejoras:
> 
> - **Segmentación en dos VLANs**: una administrativa y otra para invitados
> - El **Router actúa como gateway y firewall** con listas de control de acceso
> - Implementamos **ACLs** para controlar el tráfico entre segmentos
> - Configuramos **Port Security** en el switch para prevenir conexiones no autorizadas
> - Habilitamos **WPA2** en la red inalámbrica
> 
> Utilizamos la técnica de **Router-on-a-Stick**, creando subinterfaces para cada VLAN con encapsulamiento 802.1Q."

---

## Diapositiva 8: Arquitectura de Red Segmentada
**[Diagrama TikZ de la arquitectura]**

> "Este diagrama muestra la arquitectura final de la red:
> 
> El tráfico de Internet pasa por el **Router ISP** que actúa como firewall con ACLs y NAT. Luego llega al **Switch** que opera como troncal 802.1Q, distribuyendo el tráfico a las dos VLANs.
> 
> La **VLAN 10 Administrativa** contiene el PC Admin y el Servidor Web, con acceso completo a recursos internos.
> 
> La **VLAN 20 de Invitados** tiene el Access Point WiFi y solo permite navegación hacia Internet, sin acceso a la VLAN administrativa. Esto se indica con la línea roja 'Solo web'."

---

## Diapositiva 9: Segmentación en VLANs
**[Detalles técnicos de VLANs]**

> "Entrando en el detalle técnico:
> 
> La **VLAN 10 Administrativa** usa la red 192.168.10.0/24 con gateway en .1, donde están el PC Admin y el Servidor Web.
> 
> La **VLAN 20 de Invitados** usa 192.168.20.0/24 y solo tiene acceso a Internet.
> 
> En el **Switch**, configuramos el puerto Fa0/1 como Trunk 802.1Q hacia el router, los puertos Fa0/2 y Fa0/3 para VLAN 10, y Fa0/4 para VLAN 20.
> 
> Las **ACLs en el Router** DENIEGAN todo tráfico de VLAN 20 hacia VLAN 10, pero PERMITEN que VLAN 20 acceda a Internet. Esto es el principio de mínimo privilegio aplicado a la red."

---

## Diapositiva 10: Mecanismos de Autenticación
**[WPA2, acceso a dispositivos y Port Security]**

> "Implementamos varios mecanismos de autenticación:
> 
> Para la **red WiFi**: WPA2-PSK con cifrado AES y una passphrase compleja, bajo el SSID 'Invitados'.
> 
> Para el **acceso a dispositivos de red**: creamos usuarios locales con privilegio 15, habilitamos SSH para gestión remota segura, y configuramos 'enable secret' para proteger el modo privilegiado.
> 
> Para **Port Security**: limitamos a máximo 2 direcciones MAC por puerto, con aprendizaje 'sticky' que memoriza las MACs automáticamente, y la violación se configura en 'restrict' para bloquear sin desactivar el puerto.
> 
> Los beneficios principales son impedir dispositivos no autorizados y proteger contra ataques de MAC spoofing."

---

## Diapositiva 11: Sección - Políticas de Seguridad
**[Transición de sección]**

> "Además de los controles técnicos, definimos políticas organizacionales."

---

## Diapositiva 12: Higiene Digital
**[Prácticas de seguridad para usuarios]**

> "Establecimos lineamientos de higiene digital:
> 
> Para **contraseñas**: mínimo 10 caracteres, combinando mayúsculas, minúsculas, números y símbolos, con cambio obligatorio cada 90 días.
> 
> Para **actualizaciones**: mantener al día el firmware de dispositivos de red y software de servidores, siempre realizando pruebas previas en un entorno controlado.
> 
> Las **buenas prácticas** incluyen bloqueo automático de pantalla, uso de cuentas individuales (nunca compartidas), y cierre de sesión al terminar.
> 
> Para **respaldos**: copias periódicas de configuraciones de red y datos críticos, almacenados en ubicación externa segura."

---

## Diapositiva 13: Política de Seguridad
**[Documento normativo organizacional]**

> "Redactamos una política formal de seguridad que incluye:
> 
> **Normas de uso**: solo software autorizado, uso exclusivamente laboral de los recursos, y protección de información confidencial.
> 
> **Control de acceso**: aplicar siempre el mínimo privilegio, cuentas individuales para cada usuario, y mantener trazabilidad de todas las acciones.
> 
> **Gestión de incidentes**: cualquier evento sospechoso debe reportarse inmediatamente a TI, documentar lo ocurrido, y escalar según corresponda.
> 
> Las **responsabilidades** se dividen: los usuarios deben cumplir las normas, y los administradores deben implementar y mantener los controles."

---

## Diapositiva 14: Sección - Justificación Teórica
**[Transición de sección]**

> "Ahora veamos cómo las soluciones implementadas se alinean con los principios teóricos de ciberseguridad."

---

## Diapositiva 15: Tríada CIA
**[Confidencialidad, Integridad, Disponibilidad]**

> "La tríada CIA es el modelo fundamental de la seguridad de la información:
> 
> **Confidencialidad**: La protegemos mediante la segmentación en VLANs, ACLs restrictivas que limitan quién puede acceder a qué, y WPA2-PSK para la red inalámbrica.
> 
> **Integridad**: La garantizamos con autenticación local en dispositivos, SSH para gestión remota cifrada, y MAC sticky que impide la suplantación.
> 
> **Disponibilidad**: La aseguramos con el aislamiento de VLANs que previene que un incidente afecte toda la red, respaldos periódicos, y un plan de respuesta a incidentes."

---

## Diapositiva 16: Defensa en Profundidad
**[Capas de seguridad]**

> "Aplicamos el principio de **Defensa en Profundidad**, implementando múltiples capas de protección:
> 
> En el **perímetro**: el Router ISP con ACLs y NAT filtra el tráfico entrante y saliente.
> 
> En la **capa de red**: la segmentación VLAN con 802.1Q separa el tráfico administrativo del de invitados.
> 
> En la **capa de acceso**: Port Security y WPA2 controlan quién puede conectarse físicamente.
> 
> En la **capa de datos**: las políticas organizacionales y respaldos protegen la información.
> 
> El principio fundamental es: si una capa falla, las demás contienen el ataque."

---

## Diapositiva 17: Mínimo Privilegio
**[Aplicación del principio]**

> "El principio de **Mínimo Privilegio** se aplicó tanto en la red como en los usuarios:
> 
> **En la red**: los invitados solo pueden navegar a Internet, la VLAN 10 está completamente aislada de la VLAN 20, el servidor solo expone HTTPS, y los puertos del switch solo aceptan MACs conocidas.
> 
> **En los usuarios**: cada rol tiene privilegios específicos según su función, solo los administradores pueden gestionar los dispositivos de red, y cada persona tiene su propia cuenta individual.
> 
> Como dice el principio: *'Solo los privilegios mínimos necesarios para la función.'*"

---

## Diapositiva 18: Sección - Conclusiones
**[Transición de sección]**

> "Para finalizar, veamos las conclusiones de este proyecto."

---

## Diapositiva 19: Resumen de Mitigaciones
**[Tabla de vulnerabilidades vs soluciones]**

> "Esta tabla resume cómo mitigamos cada vulnerabilidad:
> 
> - La **falta de firewall** se resolvió con ACLs en el RouterISP, en la capa perimetral.
> - Los **puertos abiertos** se cerraron, dejando solo HTTPS en el servidor.
> - La **falta de segmentación** se solucionó creando VLAN 10 y VLAN 20.
> - El **acceso libre** se controló con Port Security y WPA2.
> - La **ausencia de políticas** se cubrió con un documento normativo.
> 
> El **resultado final**: una red segmentada con controles multinivel, completamente alineada con la tríada CIA."

---

## Diapositiva 20: Recomendaciones Futuras
**[Mejoras a corto y mediano plazo]**

> "Para continuar mejorando la seguridad, recomendamos:
> 
> A **corto plazo**:
> - Implementar 802.1X con servidor RADIUS para autenticación por puerto
> - Configurar un IDS/IPS para detección de intrusiones
> - Centralizar los logs de todos los dispositivos
> - Automatizar los respaldos
> 
> A **mediano plazo**:
> - Adquirir un firewall dedicado de próxima generación (NGFW)
> - Implementar VPN para acceso remoto seguro
> - Desplegar un SIEM centralizado para correlación de eventos
> - Realizar auditorías de seguridad periódicas
> 
> Recordemos que **la seguridad es un proceso continuo**, no un estado final."

---

## Cierre

> "Con esto concluyo mi presentación. El proyecto demuestra cómo, aplicando los principios fundamentales de ciberseguridad —la tríada CIA, defensa en profundidad y mínimo privilegio—, podemos transformar una red vulnerable en una infraestructura robusta y segura.
> 
> ¿Tienen alguna pregunta?
> 
> Muchas gracias por su atención."

---

## Notas para el Presentador

- **Duración estimada**: 15-20 minutos
- **Ritmo**: Aproximadamente 1 minuto por diapositiva
- **Pausas**: Hacer pausa después de cada sección para preguntas rápidas
- **Énfasis**: Resaltar los términos técnicos con voz clara
- **Imágenes**: Señalar las partes relevantes de los diagramas mientras se explican
- **Contacto visual**: Mantener contacto con la audiencia, no leer directamente

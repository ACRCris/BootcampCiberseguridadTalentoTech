# Libreto de Presentación (Versión Simple)
## Fortaleciendo la Red de Empresa XYZ
### Cristian Camilo Perez Puentes - Bootcamp 2025

---

## Diapositiva 1: Portada

> "Hola a todos, soy Cristian Camilo Perez Puentes. Hoy les voy a contar cómo tomé una red de empresa que era básicamente una puerta abierta para hackers, y la convertí en algo mucho más seguro. Es como si pasáramos de tener una casa sin cerraduras a una con alarma, cámaras y puertas blindadas."

---

## Diapositiva 2: Temas

> "Vamos a hablar de cinco cosas:
> 
> Primero, ¿cómo estaba la red antes? Spoiler: muy mal.
> 
> Segundo, ¿qué hicimos para arreglarla?
> 
> Tercero, ¿qué reglas pusimos para los usuarios?
> 
> Cuarto, ¿por qué estas soluciones funcionan según la teoría?
> 
> Y finalmente, ¿qué logramos y qué falta por hacer?"

---

## Diapositiva 3: Sección - Análisis Inicial

> "Empecemos viendo el desastre que encontramos."

---

## Diapositiva 4: Escenario Inicial

> "Imaginen una oficina donde todos los computadores, el servidor y hasta los visitantes están conectados al mismo cable de red. Es como si en un edificio de apartamentos, cualquier persona pudiera entrar a cualquier apartamento porque no hay puertas ni cerraduras.
> 
> **¿Qué problemas tenía?**
> 
> - **No había guardia en la puerta**: El internet entraba directo sin que nadie revisara si era tráfico bueno o malo.
> 
> - **Todo el mundo podía ver todo**: Si un hacker entraba por cualquier computador, podía moverse libremente por toda la red.
> 
> - **Servicios innecesarios activos**: Es como dejar ventanas abiertas que no usas. Cada servicio abierto es una posible entrada para atacantes.
> 
> Nuestro trabajo fue poner orden en este caos."

---

## Diapositiva 5: Vulnerabilidades Detectadas

> "Encontramos tres problemas graves:
> 
> **1. Sin Firewall** - Imaginen un aeropuerto sin control de seguridad. Cualquiera entra y sale sin que nadie revise nada. Riesgo CRÍTICO.
> 
> **2. Puertos abiertos de más** - Es como tener puertas extras en tu casa que nunca usas pero están sin llave. ¿Para qué darle más opciones a un ladrón?
> 
> **3. Red plana sin divisiones** - Si un ratón entra a la cocina, puede llegar hasta el dormitorio sin obstáculos. Lo mismo pasa cuando un virus entra a la red: puede infectar todo.
> 
> Estos problemas afectan tres cosas importantes:
> - **Confidencialidad**: Gente que no debería ver información, la puede ver.
> - **Integridad**: Alguien puede modificar datos sin permiso.
> - **Disponibilidad**: Un ataque puede tumbar todo el sistema."

---

## Diapositiva 6: Sección - Configuraciones Aplicadas

> "Ahora les cuento cómo arreglamos cada problema."

---

## Diapositiva 7: Nueva Topología Segmentada

> "Lo primero fue dividir la red en dos partes separadas, como si pusiéramos una pared en medio de la oficina:
> 
> **VLAN 10 - Zona Administrativa**: Aquí están los empleados con acceso a información sensible y el servidor. Es como el área de 'solo personal autorizado'.
> 
> **VLAN 20 - Zona de Invitados**: Para visitantes o dispositivos que solo necesitan internet. Pueden navegar, pero no pueden ver nada de la zona administrativa. Es como el WiFi de invitados en un hotel.
> 
> El **Router** ahora actúa como un guardia de seguridad: revisa todo el tráfico y decide qué puede pasar y qué no.
> 
> También pusimos **reglas en el switch** para que solo se puedan conectar dispositivos conocidos. Si conectas algo nuevo sin permiso, el puerto se bloquea."

---

## Diapositiva 8: Arquitectura de Red Segmentada

> "Este diagrama muestra cómo quedó todo:
> 
> Arriba está **Internet** - el mundo exterior.
> 
> Luego el **Router** que funciona como la puerta principal con guardias que revisan quién entra y quién sale.
> 
> Después el **Switch** que es como un pasillo central que distribuye a cada zona.
> 
> A la izquierda la **zona de invitados**: solo pueden ir hacia arriba, hacia Internet. La flecha roja muestra que solo les permitimos navegar.
> 
> A la derecha la **zona administrativa**: aquí sí pueden comunicarse entre ellos, el PC Admin puede gestionar el servidor web."

---

## Diapositiva 9: Segmentación en VLANs

> "Entremos en más detalle:
> 
> **VLAN 10** tiene su propia dirección de red: 192.168.10.algo. Es como un código postal exclusivo para esa zona.
> 
> **VLAN 20** tiene otro código postal diferente: 192.168.20.algo.
> 
> ¿Por qué importa esto? Porque ahora el router puede decir: 'Si vienes de la zona 20 y quieres ir a la zona 10... DENEGADO'. Es como una regla que dice 'los invitados no pueden subir al segundo piso'.
> 
> Pero si los de la zona 20 quieren ir a Internet, eso sí está PERMITIDO. Navegar sí, espiar a los empleados no."

---

## Diapositiva 10: Mecanismos de Autenticación

> "También pusimos candados y llaves en varias partes:
> 
> **Para el WiFi de invitados**: Usamos WPA2, que es el estándar de cifrado. La contraseña es larga y compleja. Es como la clave del WiFi de tu casa, pero más segura.
> 
> **Para administrar los equipos de red**: Creamos usuarios con contraseña. Ya no se puede entrar sin identificarse. Y usamos SSH que es una conexión cifrada, como si hablaras en código secreto.
> 
> **Port Security** es lo más interesante: El switch memoriza qué dispositivos se conectan a cada puerto. Si mañana alguien conecta un equipo diferente sin permiso, el puerto dice 'no te conozco' y lo bloquea. Es como si tu puerta solo se abriera con tu cara."

---

## Diapositiva 11: Sección - Políticas de Seguridad

> "Los controles técnicos no sirven de nada si la gente hace cualquier cosa. Necesitamos reglas."

---

## Diapositiva 12: Higiene Digital

> "Así como hay higiene personal, hay higiene digital:
> 
> **Contraseñas**: Mínimo 10 caracteres, mezclando letras, números y símbolos. '123456' no sirve. Tampoco 'password'. Y se cambian cada 3 meses porque las contraseñas viejas eventualmente se filtran.
> 
> **Actualizaciones**: Cuando tu celular te pide actualizar, no es por molestarte. Es porque encontraron huecos de seguridad y los están tapando. Lo mismo con los equipos de red.
> 
> **Buenas prácticas**: Bloquea tu computador cuando te pares. Cierra sesión cuando termines. No compartas tu usuario. Suena obvio, pero mucha gente no lo hace.
> 
> **Respaldos**: Si mañana un ransomware cifra todos los datos... ¿tienes copia? Los respaldos son tu seguro de vida digital."

---

## Diapositiva 13: Política de Seguridad

> "Escribimos un documento formal con las reglas del juego:
> 
> **Normas de uso**: Solo software autorizado. Nada de descargar programas piratas o juegos en el computador del trabajo. Eso trae virus.
> 
> **Control de acceso**: Cada quien tiene acceso solo a lo que necesita para su trabajo. El de contabilidad no necesita acceso a los servidores. El de limpieza no necesita cuenta de administrador.
> 
> **Gestión de incidentes**: Si ves algo raro, repórtalo inmediatamente. 'Vi un correo sospechoso', 'el computador se puso lento de repente', 'apareció una ventana extraña'. No te quedes callado.
> 
> **Responsabilidades claras**: Los usuarios siguen las reglas. Los administradores implementan los controles. Nadie puede decir 'eso no era mi trabajo'."

---

## Diapositiva 14: Sección - Justificación Teórica

> "Todo lo que hicimos tiene fundamento teórico. No inventamos nada."

---

## Diapositiva 15: Tríada CIA

> "En ciberseguridad hay tres cosas sagradas que debemos proteger siempre:
> 
> **Confidencialidad**: Que la información solo la vean quienes deben verla. ¿Cómo lo logramos? Separando la red en VLANs. Los invitados no pueden ver los datos de la empresa.
> 
> **Integridad**: Que nadie modifique la información sin permiso. ¿Cómo? Con autenticación. Para cambiar algo, tienes que demostrar quién eres.
> 
> **Disponibilidad**: Que los sistemas estén funcionando cuando se necesitan. ¿Cómo? Aislando las redes. Si hay un problema en la zona de invitados, no afecta a los empleados. Y con respaldos, si algo se daña, lo recuperamos.
> 
> Todo lo que implementamos apunta a proteger estos tres pilares."

---

## Diapositiva 16: Defensa en Profundidad

> "Imaginen un castillo medieval: tiene foso, muralla externa, muralla interna, torre del homenaje, y finalmente la cámara del tesoro. ¿Por qué tantas capas? Porque si el enemigo cruza el foso, todavía tiene que pasar la muralla. Si pasa la muralla, todavía hay otra.
> 
> Lo mismo hicimos aquí:
> 
> **Capa 1 - Perímetro**: El router con sus reglas. Primera línea de defensa.
> 
> **Capa 2 - Red**: Las VLANs que separan zonas.
> 
> **Capa 3 - Acceso**: Port Security y WiFi protegido.
> 
> **Capa 4 - Datos**: Políticas y respaldos.
> 
> Si un atacante pasa una capa, las otras lo detienen. No apostamos todo a una sola defensa."

---

## Diapositiva 17: Mínimo Privilegio

> "Este principio es simple pero poderoso: Dale a cada quien SOLO lo que necesita, nada más.
> 
> **En la red**: Los invitados solo necesitan internet, entonces solo les damos eso. El servidor web solo necesita mostrar páginas, entonces solo abrimos ese servicio.
> 
> **En los usuarios**: ¿Eres recepcionista? Tienes acceso al sistema de citas, no a la nómina. ¿Eres de finanzas? Tienes acceso a facturación, no a los servidores.
> 
> ¿Por qué? Porque si alguien comete un error o si hackean su cuenta, el daño está limitado. Un ladrón que roba la llave de una oficina no puede abrir todas las puertas del edificio."

---

## Diapositiva 18: Sección - Conclusiones

> "Recapitulemos qué logramos."

---

## Diapositiva 19: Resumen de Mitigaciones

> "Teníamos cinco problemas, ahora tenemos cinco soluciones:
> 
> | Problema | Solución |
> |----------|----------|
> | Sin firewall | ACLs en el router que filtran tráfico |
> | Puertos abiertos | Solo dejamos HTTPS en el servidor |
> | Red plana | Ahora hay dos VLANs separadas |
> | Cualquiera se conectaba | Port Security y WPA2 |
> | Sin reglas | Documento de políticas |
> 
> El resultado: Una red que ya no es una puerta abierta. Ahora tiene múltiples capas de protección, cada zona está aislada, y hay reglas claras para todos."

---

## Diapositiva 20: Recomendaciones Futuras

> "Lo que hicimos es un buen comienzo, pero la seguridad nunca termina. Para el futuro recomiendo:
> 
> **Pronto**:
> - Poner un sistema que detecte intrusiones automáticamente (IDS/IPS). Es como tener cámaras de seguridad que avisan cuando ven algo sospechoso.
> - Guardar todos los registros (logs) en un solo lugar. Si pasa algo, poder investigar qué pasó.
> 
> **Más adelante**:
> - Un firewall dedicado más potente.
> - VPN para que la gente pueda trabajar desde casa de forma segura.
> - Auditorías periódicas: que alguien externo revise si todo está bien.
> 
> La seguridad no es un destino, es un camino. Siempre hay que seguir mejorando."

---

## Cierre

> "Y eso es todo. Tomamos una red vulnerable y la convertimos en algo mucho más seguro. No es perfecta, ninguna lo es, pero ahora:
> 
> - Un visitante no puede espiar a los empleados
> - Un atacante no puede entrar sin que nos demos cuenta  
> - Si algo falla, tenemos respaldos
> - Todos saben qué pueden y qué no pueden hacer
> 
> ¿Preguntas?
> 
> ¡Gracias por escucharme!"

---

## Tips para Presentar

- **Usa las analogías**: La gente entiende mejor cuando comparas con cosas cotidianas (castillos, edificios, puertas)
- **No leas**: Mira a la audiencia y cuenta la historia
- **Señala los diagramas**: Cuando hables de la red, apunta a cada parte
- **Acepta que no sabes todo**: Si preguntan algo que no sabes, di "buena pregunta, tendría que investigarlo"
- **Tiempo**: Unos 15-20 minutos en total

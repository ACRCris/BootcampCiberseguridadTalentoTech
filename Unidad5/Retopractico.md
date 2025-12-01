<!-- Tabla bonita para el reto práctico: caso / tipo de ataque / evidencias / mitigación -->
Cristian Camilo Perez 

Emmanuel Rodriguez

<div style="overflow-x:auto; padding:6px 0;">
	<table class="nice-table" role="table">
		<thead>
			<tr>
				<th>Caso</th>
				<th>Tipo de ataque o vulnerabilidad</th>
				<th>Evidencias o síntomas</th>
				<th>Herramienta o acción de mitigación</th>
			</tr>
		</thead>
		<tbody>
			<tr>
						<td data-label="Caso">1</td>
						<td data-label="Tipo de ataque o vulnerabilidad">Phishing</td>
						<td data-label="Evidencias o síntomas">Solicitud de datos sensibles; solicitud masiva a los empleados de la empresa.</td>
						<td data-label="Herramienta o acción de mitigación">Campañas de concienciación y formación; filtros anti-phishing en correo; reportar y bloquear remitentes sospechosos.</td>
			</tr>
			<tr>
				<td data-label="Caso">2</td>
				<td data-label="Tipo de ataque o vulnerabilidad">DDoS</td>
				<td data-label="Evidencias o síntomas">La red está colapsada por solicitudes simultáneas; el tráfico proviene de múltiples IPs, indicando un ataque distribuido.</td>
				<td data-label="Herramienta o acción de mitigación">Rate limiting,reglas de firewall; bloquear IPs maliciosas, subnetting monitorizar y realizar análisis  del tráfico.</td>
			</tr>
			<tr>
				<td data-label="Caso">3</td>
				<td data-label="Tipo de ataque o vulnerabilidad">compromiso de IoT (cámaras IP)</td>
				<td data-label="Evidencias o síntomas">Las cámaras IP del edificio se reinician solas y transmiten a direcciones extrañas.</td>
				<td data-label="Herramienta o acción de mitigación">Aislar las cámaras (VLAN/segmentación); cambiar credenciales por defecto y aplicar contraseñas fuertes; actualizar firmware, monitorizar tráfico y logs; habilitar acceso de administración seguro (HTTPS/SSH) y usar VPN para la gestión remota.</td>
			</tr>
		</tbody>
	</table>
</div>

<style>
/* Estilos para la tabla: todos los fondos en blanco y responsive */
.nice-table { width:100%; border-collapse:collapse; font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif; max-width:100%; box-shadow: 0 1px 4px rgba(0,0,0,0.04); background: #fff; }
.nice-table thead th { background: linear-gradient(180deg,#2b79c7,#1976d2); color:#fff; padding:12px 14px; text-align:left; font-size:14px; border-bottom:3px solid rgba(0,0,0,0.06); }
.nice-table tbody td { padding:10px 14px; border-bottom:1px solid #e6eef9; font-size:13px; color:#1b2b3b; background: #ffffff; }
.nice-table tbody tr:nth-child(even) { background: #ffffff; }
.nice-table tbody tr:hover { background: #ffffff; }
.nice-table th, .nice-table td { vertical-align:middle; }

/* Responsive: convertir en filas apiladas en pantallas pequeñas (fondos también blancos) */
@media (max-width:680px) {
	.nice-table thead { display:none; }
	.nice-table, .nice-table tbody, .nice-table tr, .nice-table td { display:block; width:100%; }
	.nice-table tr { margin-bottom:12px; border-radius:6px; box-shadow:0 1px 3px rgba(0,0,0,0.04); background:#fff; }
	.nice-table td { display:flex; padding:10px 12px; border-bottom:none; background:#fff; }
	.nice-table td:before { content: attr(data-label); flex:0 0 45%; font-weight:600; color:#234; }
	.nice-table td:last-child { border-bottom:0; }
}
</style>

from flask import Flask
import os
from app.routes import init_app



app = Flask(__name__, template_folder='app/templates', static_folder='app/static')

app.config['UPLOAD_FOLDER'] = os.path.join(os.path.abspath(os.path.dirname(__file__)), 'app', 'static', 'uploads')
app.config['ALLOWED_EXTENSIONS'] = {'png', 'jpg', 'svg'}

init_app(app)

app.secret_key = os.urandom(24)


# @app.route('/habilidad', methods=['POST'])
# def habilidad():
#     Nombre = request.form['Nombre']
#     nombre_h = request.form['nombre_h']
#     Descripcion = request.form['Descripcion']
#     Nivel = request.form['Nivel']
#     categoria = request.form['categoria'] 
#     db_config = {
#         'host': 'localhost',
#         'user': 'root',
#         'password': '',
#         'database': 'db_laborlane'
#     }
#     cnx = mysql.connector.connect(**db_config)
#     cursor = cnx.cursor()
#     sql = "select IdUsuario from usuario where NombresUsuario=%s"
#     data = (Nombre,)
#     print (data)
#     try:         
#         cursor.execute(sql, data)
#         resultado = cursor.fetchone()
#         if resultado:
#             usuario_id = resultado[0]
#             s= "insert into habilidades(NombreHabilidad, DescipcionHabilidad, current_Nivel, FK_IdCategoria, FK_IdUsuario) values (%s, %s, %s, %s, %s)"
#             dato= (nombre_h,Descripcion,Nivel,categoria, usuario_id)
#             cursor.execute(s, dato)
#         else:
#             mensaje = "Usuario no encontrado"
#             cnx.commit()
#             mensaje = "correctamente"
#     except mysql.connector.Error as error: 
#         print("Error al insertar los datos:", error)
#         mensaje = "Error al insertar"
#         cursor.close()
#         cnx.close()
#         if mensaje == "correctamente":
#             return render_template('/educacion.html', usuario_id=usuario_id)
#     else:
#         return render_template('/resultado.html', mensaje=mensaje)



# @app.route('/Educacion', methods=['POST'])
# def Educacion():
#     NombreInstitucion = request.form['NombreInstitucion']
#     TituloEducacion = request.form['TituloEducacion']
#     NivelAcademico = request.form['NivelAcademico']
#     FechaInicio = request.form['FechaInicio']
#     Fechafinal = request.form['Fechafinal']
#     ID = request.form['ID'] 
#     db_config = {
#         'host': 'localhost',
#         'user': 'root',
#         'password': '',
#         'database': 'db_laborlane'
#     }
#     cnx = mysql.connector.connect(**db_config)
#     cursor = cnx.cursor()
#     sql = "insert into educacion (NombreInstitucion, TituloEducacion, NivelAcademico, FechaInicio, FechaFin, FK_IdUsuario) values (%s,%s,%s,%s,%s,%s)"
#     data = (NombreInstitucion, TituloEducacion, NivelAcademico, FechaInicio, Fechafinal, ID)
#     print (data)
#     try:     
#         cursor.execute(sql, data)
#         mensaje = "Datos insertados correctamente"    
#         print(data)
#     except mysql.connector.Error as error:      
#         print("Error al insertar los datos:", error)
#         mensaje = "Error al insertar los datos"  
#         cursor.close()
#         cnx.close()  
#     if mensaje== "Datos insertados correctamente":
#         return render_template('/experiencia.html', ID=ID)
#     else:
#         return render_template('/resultado.html', mensaje=mensaje)



# @app.route('/Experiencia', methods=['POST'])
# def Experiencia():
#     NombreEmpleador = request.form['NombreEmpleador']
#     Cargo = request.form['Cargo']
#     Funciones = request.form['Funciones']
#     Logros = request.form['Logros']
#     FechaInicio = request.form['FechaInicio']
#     Fechafinal = request.form['Fechafinal']
#     ID = request.form['ID'] 
#     cursor = cnx.cursor()
#     sql = "insert into experiencia (NombreEmpleador, Cargo, Funciones, Logros, FechaInicio, FechaFin, FK_IdUsuario) values (%s,%s,%s,%s,%s,%s,%s)" # Parámetros de SQL   
#     data = (NombreEmpleador, Cargo, Funciones, Logros, FechaInicio, Fechafinal, ID)
#     print (data)
#     try:   
#         db_config = {
#         'host': 'localhost',
#         'user': 'root',
#         'password': '',
#         'database': 'db_laborlane'
#     }
#         cnx = mysql.connector.connect(**db_config)          
#         cursor.execute(sql, data)
#         cnx.commit()
#         mensaje = "Datos insertados correctamente"   
#         print(data)
#     except mysql.connector.Error as error:       
#         print("Error al insertar los datos:", error)
#         mensaje = "Error al insertar los datos"   
#         cursor.close()
#         cnx.close()  
#         if mensaje== "Datos insertados correctamente":
#             return render_template('/referencias.html', ID=ID)
#         else:
#             return render_template('/resultado.html', mensaje=mensaje)
    



# @app.route('/Referencias', methods=['POST'])
# def Referencias():
#     NombreReferencia = request.form['NombreReferencia']
#     EmpresaReferencia = request.form['EmpresaReferencia']
#     CargoReferencia = request.form['CargoReferencia']
#     CorreoReferencia = request.form['CorreoReferencia']
#     CelularReferencia = request.form['CelularReferencia']
#     ID = request.form['ID'] 
#     db_config = {
#         'host': 'localhost',
#         'user': 'root',
#         'password': '',
#         'database': 'db_laborlane'
#     }
#     cnx = mysql.connector.connect(**db_config)
#     cursor = cnx.cursor()
#     sql = "insert into referencias (NombreReferencia, EmpresaReferencia, CargoReferencia, CorreoReferencia, CelularReferencia, FK_IdUsuario) values (%s,%s,%s,%s,%s,%s)" # Parámetros de SQL 
#     data = (NombreReferencia, EmpresaReferencia, CargoReferencia, CorreoReferencia, CelularReferencia, ID)
#     print (data)
#     try:
#         cursor.execute(sql, data)
#         cnx.commit()
#         mensaje = "Datos insertados correctamente"  
#         print(data)
#     except mysql.connector.Error as error:      
#         print("Error al insertar los datos:", error)
#         mensaje = "Error al insertar los datos" 
#         cursor.close()
#         cnx.close()  
#     if mensaje== "Datos insertados correctamente":
#         return redirect('/consulta-ofertas',ID=ID)
#     else:
#         return render_template('resultado.html', mensaje=mensaje)
    


# @app.route('/Oferta', methods=['POST'])
# def Oferta():
#     Nombre = request.form['Nombre']
#     TituloEmpleo = request.form['TituloEmpleo']
#     DescripcionEmpleo = request.form['DescripcionEmpleo']
#     RequisitosEmpleo = request.form['RequisitosEmpleo']
#     HabilidadesEmpleo = request.form['HabilidadesEmpleo']
#     FechaPublicacion = request.form['FechaPublicacion']
#     FechaVencimiento = request.form['FechaVencimiento']
#     Estado = 'ACTIVO'
#     categoria = request.form['categoria']
    
#     db_config = {
#         'host': 'localhost',
#         'user': 'root',
#         'password': '',
#         'database': 'db_laborlane'
#     }
#     cnx = mysql.connector.connect(**db_config)  
#     cursor = cnx.cursor()
#     sql = "select IdUsuario from usuario where NombresUsuario=%s"   
#     data = (Nombre,)
#     print (data)
#     try: 
#         cursor.execute(sql, data)
#         resultado = cursor.fetchone()
#         if resultado:
#             usuario_id = resultado[0]
#             s= "insert into OfertaEmpleo (TituloEmpleo, DescripcionEmpleo, RequisitosEmpleo, HabilidadesEmpleo, FechaPublicacion, FechaVencimiento, current_Estado, FK_IdCategoria, FK_IdUsuario) values (%s,%s,%s,%s,%s,%s,%s,%s,%s)"
#             dato = (TituloEmpleo, DescripcionEmpleo, RequisitosEmpleo, HabilidadesEmpleo, FechaPublicacion, FechaVencimiento, Estado, categoria, usuario_id)
#             cursor.execute(s, dato)
#             mensaje = "correctamente"
#         else:
#             mensaje = "Usuario no encontrado"
#             cnx.commit()
#     except mysql.connector.Error as error: 
#             print("Error al insertar los datos:", error)
#             mensaje = "Error al insertar"
            
#     cursor.close()
#     cnx.close()
#     if mensaje == "correctamente":
#         return render_template('botones.html', usuario_id=usuario_id)
#     else:
#         return render_template('resultado.html', mensaje=mensaje)
    

    
if __name__ == '__main__':
    app.run(debug=True)

